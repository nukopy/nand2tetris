// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed,
// the screen should be cleared.

// -----------------------------------
// pseudo code 擬似コード
// -----------------------------------

// 画面のピクセル数から SCREEN のメモリマップの末端のアドレスを計算
// 256 px x 512 px = 131,072 px, (131,072 [bit] / 16 [bit / word]) - 1 = 8,192 [word] - 1 =  8191
// ADDR_SCREEN_END = SCREEN + 8191

// メインループ
// LOOP:
//     // 塗りつぶし開始アドレスの初期化
//     ADDR = SCREEN
//
//     // 塗りつぶしのループ
//     KBD_STATUS = RAM[KBD]
//     LOOP2:
//         // LOOP2 の終了条件
//         if (ADDR > ADDR_SCREEN_END)
//             goto LOOP
//
//         // 塗りつぶし
//         if (KBD_STATUS != 0)
//             // ボタン押下中、黒に塗りつぶし
//             RAM[ADDR] = -1 // 1111....1111 (16 bit)
//         else
//             // ボタン押してないとき、白に塗りつぶし
//             RAM[ADDR] = 0 // 0000....0000 (16 bit)
//
//         // ADDR のインクリメント。次に塗る SCREEN のアドレスを計算。
//         ADDR = ADDR + 1
//
//         goto LOOP2

// 画面のピクセル数から SCREEN のメモリマップの末端のアドレスを計算
// 256 px x 512 px = 131,072 px, (131,072 [bit] / 16 [bit / word]) - 1 = 8,192 [word] - 1 =  8191
@8191
D=A
@SCREEN
D=D+A // D = 511 + SCREEN の開始アドレス = SCREEN の終了アドレス
@addr_screen_end // 16
M=D // ADDR_SCREEN_END = SCREEN の終了アドレス

// メインループ
(LOOP)
    // 塗りつぶし開始アドレスの初期化
    @SCREEN
    D=A // D = SCREEN の開始アドレス
    @addr // 17
    M=D // addr = SCREEN の開始アドレス

    // 塗りつぶしのループ
    // KBD_STATUS = RAM[KBD]
    @KBD
    D=M // D = RAM[KBD] = 現在のキーボードの押下状態
    @kbd_status // 18
    M=D // KBD_STATUS = 現在のキーボードの押下状態

    (LOOP2)
        // LOOP2 の終了条件
        // if (ADDR > ADDR_SCREEN_END)
        //     goto LOOP
        @addr
        D=M // D = RAM[ADDR]
        @addr_screen_end
        D=D-M // D = ADDR - ADDR_SCREEN_END

        // SCREEN を全て塗りつぶしたら外側のループに戻って塗りつぶしの最初から始める
        @LOOP
        D;JGT

        // 塗りつぶし
        // if (KBD_STATUS != 0)
        @kbd_status
        D=M

        // ボタン押下中なら BLACK に、そうでなければ WHITE にジャンプ
        @BLACK
        D;JNE
        @WHITE
        0;JMP

        (BLACK)
            // ボタン押下中、黒に塗りつぶし
            // RAM[ADDR] = -1 // 1111....1111 (16 bit)
            @addr
            A=M // A = 塗りつぶし対象の SCREEN のアドレス
            M=-1

            @END
            0;JMP
        (WHITE)
            // ボタン押してないとき、白に塗りつぶし
            // RAM[ADDR] = 0 // 0000....0000 (16 bit)
            @addr
            A=M // A = 塗りつぶし対象の SCREEN のアドレス
            M=0

            @END
            0;JMP
        (END)

        // ADDR のインクリメント。次に塗る SCREEN のアドレスを計算。
        // ADDR = ADDR + 1
        @addr
        M=M+1

        // goto LOOP2
        @LOOP2
        0;JMP

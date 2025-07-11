// 入力
// キーボード入力（RAM[KBD]）
//
// 出力
// メモリマップされた画面出力（横 512 px x 縦 256 px = 8K サイズのメモリに保存されたメモリマップ）
//
// 仕様
// - キーボードが入力されていないとき、画面のピクセルをすべて真っ白に塗りつぶす。
// - キーボードが入力されているとき、画面のピクセルをすべて真っ黒に塗りつぶす。
//
// 仕様メモ
// 画面のピクセルをすべて真っ白 / 真っ黒に塗りつぶすには、
// アドレス SCREEN = 16384 から開始される画面出力用のメモリマップの終了アドレスを計算する必要がある
// 512 [px] x 256 [px] x 1 [bit / px]  = 131,072 [bit]
// 131,072 [bit] / 16 [bit / register] = 8,192 [register] 必要
// SCREEN + 8,192 - 1 = 16,384 + 8,192 - 1 = 24,575 -> これが SCREEN の終了アドレス
// つまり、データメモリにおける画面出力デバイスのアドレス範囲は  16,384 ~ 24,575
//
// ----- 擬似コード -----
// // メインの無限ループ
// while
//     // ループカウンターの定義
//     count = 8192
//
//     // 塗りつぶしループ
//     for i in range(count)
//         // 塗りつぶし対象のメモリマップのアドレスの計算
//         addr = SCREEN + i
//
//         // 塗りつぶし
//         if (RAM[KBD] == 0)
//             RAM[addr] = 0
//         else
//             RAM[addr] = 1

// 定数の定義
@8192
D=A
@memory_length
M=D

// 塗りつぶし処理のメインループ
(LOOP)
    // ループカウンターの定義
    @8192
    D=A
    @count
    M=D

    // キーボード入力の受取
    // （塗りつぶしの途中では割り込めるないように PAINTLOOP の外でキーボード入力を受け取っている）
    @KBD
    D=M
    @keyboard
    M=D

    // 塗りつぶしループ
    (PAINTLOOP)
        // ループの終了条件判定：カウンターが 0 になったらメインのループに戻る
        @count
        D=M
        @LOOP
        D;JEQ

        // 塗りつぶし対象のメモリマップのアドレスの計算: SCREEN + index = SCREEN + (memory_length - count)
        // - memory_length - count
        @memory_length
        D=M
        @count
        D=D-M
        // - SCREEN + index
        @SCREEN
        D=A+D
        // 計算したアドレスを変数に格納
        @addr
        M=D

        // キーボード入力の判定：RAM[KBD] = D != 0 なら BLACK へジャンプ
        @keyboard
        D=M
        @BLACK
        D;JNE

        (WHITE)
            // 白く塗りつぶし
            // addr
            // M  = 16834 + index
            @addr // A = 18
            A=M // A = 16384 + index
            M=0

            @END
            0;JMP
        (BLACK)
            // 黒く塗りつぶし
            @addr
            A=M
            M=-1

            @END
            0;JMP
        (END)

        // ループカウンターの更新
        @count
        M=M-1

        @PAINTLOOP
        0;JMP

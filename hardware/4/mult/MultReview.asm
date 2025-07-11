// 入力
// R0, R1
// 出力
// R2
//
// 制約
// 0 <= R0, 0 <= R1, R0 x R1 < 32768
// ※この制約は必ず満たされるのでチェックしなくて良い
//
// 仕様
// R0 x R1 を R2 に保存する

// ----- 擬似コード -----
// 入力を受け取る
// R0 = in1
// R1 = in2
//
// 変数の定義
// R0 x R1 の計算結果を保存する変数
// result = 0
//
// R0 x R1 を計算する
// for count in range(R0)
//     result += R1
//
// R2 に R0 x R1 の計算結果を保存する
// R2 = result

// 変数の定義
// 結果の格納用変数の定義
@result
M=0
// ループ回数のカウンターの定義
@R0
D=M
@count
M=D

// R0 x R1 の計算
(LOOP)
    // ループの終了条件の判定：もしカウンターが 0 なら STOP へジャンプ
    @count
    D=M
    @STOP
    D;JEQ

    // result に加算
    @R1
    D=M
    @result
    M=M+D

    // カウンターの更新
    @count
    M=M-1

    @LOOP
    0;JMP
(STOP)
    @result
    D=M
    @R2
    M=D

# nand2tetris

## Table of Contents

- [ ] Part I: Hardware
  - [x] Project 01: Boolean Logic ブール論理
  - [x] Project 02: Boolean Arithmetic ブール算術
  - [x] Project 03: Memory メモリ
  - [ ] Project 04: Machine Language 機械語
  - [ ] Project 05: Computer Architecture コンピュータアーキテクチャ
  - [ ] Project 06: Assembler アセンブラ
- [ ] Part II: Software
  - [ ] Project 07: VM I: Stack Arithmetic 仮想マシン I: スタック操作
  - [ ] Project 08: VM II: Program Control 仮想マシン II: プログラム制御
  - [ ] Project 09: High-Level Language 高水準言語
  - [ ] Project 10: Compiler I: Syntax Analysis コンパイラ I: 構文解析
  - [ ] Project 11: Compiler II: Code Generation コンパイラ II: コード生成
  - [ ] Project 12: Operating System オペレーティングシステム（OS）

## Commands

### Part I: Hardware

- Run handware simulator

```sh
sh ./tools/HardwareSimulator.sh
```

### Part II: Software

TBD

### for Coursera

- Create a submission for Coursera

```sh
sh ./scripts/create-coursera-submission-zip.sh <project_directory>
```

For example, to create a submission for Project 2, run:

```sh
sh ./scripts/create-coursera-submission-zip.sh ./projects/2
Found the following .hdl files:
 - ./projects/2/HalfAdder.hdl
 - ./projects/2/Identity.hdl
 - ./projects/2/ALU.hdl
 - ./projects/2/Xor16.hdl
 - ./projects/2/FullAdder.hdl
 - ./projects/2/Identity16.hdl
 - ./projects/2/Inc16.hdl
 - ./projects/2/Add16.hdl
  adding: HalfAdder.hdl (deflated 41%)
  adding: Identity.hdl (deflated 26%)
  adding: ALU.hdl (deflated 69%)
  adding: Xor16.hdl (deflated 67%)
  adding: FullAdder.hdl (deflated 39%)
  adding: Identity16.hdl (deflated 71%)
  adding: Inc16.hdl (deflated 67%)
  adding: Add16.hdl (deflated 65%)
Created ./submissions/project2.zip with HDL files.
```

## Links

- Nand2Tetris Software Suite
  - https://www.nand2tetris.org/software

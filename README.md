# robosys2026-stats

標準入力から受け取った数値列の基本統計量（件数、合計、平均、最小値、最大値）を計算して標準出力へ出力するコマンド `stats` のリポジトリです。

![test](https://github.com/yukky162/robosys2026-stats/actions/workflows/test.yml/badge.svg)

## 使い方

1行につき1つの数値（整数、小数、負の数）を標準入力から渡します。

```bash
$ seq 5 | ./stats
```

出力例：

```text
count: 5
sum: 15
mean: 3.0
min: 1
max: 5
```

## オプション

省略時はすべての項目を出力します。指定した項目のみを順番に出力することもできます。

* `-c`, `--count`：件数
* `-s`, `--sum`：合計
* `-a`, `--avg`：平均
* `--min`：最小値
* `--max`：最大値

使用例：

```bash
$ seq 5 | ./stats --min --max
```

## 必要なソフトウェア

* Python（テスト済みバージョン：3.10〜3.14）

## テスト環境

* Ubuntu 24.04 LTS

## 著作権とライセンス

* 本ソフトウェアパッケージの著作権は Yukie Higuchi（2026年）に帰属します。
* 3条項BSDライセンス（BSD-3-Clause）の下、再頒布および使用が許可されます。


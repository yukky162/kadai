#!/bin/bash
# SPDX-FileCopyrightText: 2026 Yukie Higuchi
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目のテスト失敗"
    res=1
}

res=0

### NORMAL INPUT ###
expected=$'count: 5\nsum: 15\nmean: 3.0\nmin: 1\nmax: 5'
out=$(seq 5 | ./stats)
[ "$?" = 0 ]                 || ng "$LINENO"
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(seq 5 | ./stats --min --max)
[ "$?" = 0 ]                 || ng "$LINENO"
[ "${out}" = $'min: 1\nmax: 5' ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./stats 2>/dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./stats 2>/dev/null)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

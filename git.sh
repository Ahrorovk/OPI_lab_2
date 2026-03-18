#!/bin/bash

echo "🚀 START LAB (VARIANT 12788)"

rm -rf .git
rm -rf src/*
git init

# =========================
# USER red
# =========================
git config user.name "Ahrorovk"
git config user.email "akhrorovk5758@gmail.com"

# =========================
# r0
# =========================
unzip -o commits/commit0.zip -d src
git add .
git commit -m "r0 (red)"

# =========================
# branch_red (основная линия)
# =========================
git checkout -b branch_red

# r1
unzip -o commits/commit1.zip -d src
git add .
git commit -m "r1 (red)"

# r3
unzip -o commits/commit3.zip -d src
git add .
git commit -m "r3 (red)"

# =========================
# branch_blue (ответвление от r3)
# =========================
git checkout -b branch_blue

# меняем автора
git config user.name "DeathGun58"
git config user.email "karomatullohonahrorov@gmail.com"

# r4
unzip -o commits/commit4.zip -d src
git add .
git commit -m "r4 (blue)"

# r6
unzip -o commits/commit6.zip -d src
git add .
git commit -m "r6 (blue)"

# r8
unzip -o commits/commit8.zip -d src
git add .
git commit -m "r8 (blue)"

# r9
unzip -o commits/commit9.zip -d src
git add .
git commit -m "r9 (blue)"

# r10
unzip -o commits/commit10.zip -d src
git add .
git commit -m "r10 (blue)"

# r11
unzip -o commits/commit11.zip -d src
git add .
git commit -m "r11 (blue)"

# r12
unzip -o commits/commit12.zip -d src
git add .
git commit -m "r12 (blue)"

# =========================
# возвращаемся в red
# =========================
git checkout branch_red

git config user.name "red"
git config user.email "red@example.com"

# r5
unzip -o commits/commit5.zip -d src
git add .
git commit -m "r5 (red)"

# r7
unzip -o commits/commit7.zip -d src
git add .
git commit -m "r7 (red)"

# =========================
# MERGE (ключевая точка)
# =========================
echo "⚔️ MERGE branch_blue → branch_red"

git merge --no-commit branch_blue

echo "👉 Если есть конфликт — исправь вручную, затем ENTER"
read

git add .
git commit -m "r13: merge blue into red"

# =========================
# r14 финал
# =========================
unzip -o commits/commit14.zip -d src
git add .
git commit -m "r14 final (red)"

# =========================
# LOG
# =========================
echo "📊 GRAPH:"
git log --graph --oneline --all --decorate
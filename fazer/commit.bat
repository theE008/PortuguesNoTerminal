@echo off
git add .
git commit -m %1

:: Check if the current branch is master before renaming
for /f "tokens=*" %%a in ('git symbolic-ref --short HEAD') do set branch=%%a
if "%branch%"=="master" (
    git branch -m master main
)

git push origin main
git push --set-upstream origin main

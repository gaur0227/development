echo off
setlocal
set /p num1="プロジェクト名を入力してください。(例：maihama)→"
set /a num2=%date:~0,4%%date:~5,2%%date:~8,2%

mkdir %num2%_%num1%
cd %num2%_%num1%

mkdir _bak
mkdir Designs\Illustrator
mkdir Designs\images
mkdir Designs\Photoshop
mkdir Document\MeetingMinutes
mkdir Document\Proposal
mkdir Document\Schedules
mkdir Document\Specifications
mkdir Evironments
mkdir received
mkdir released
mkdir Sources


endlocal


pushd %~dp0
set CURPATH=%cd%

:: 이미지 디렉토리 변수
set image_path=c:\test\image

:: 로그 디렉토리 변수
set log_path=%CURPATH%\log


:: 이미지 삭제
::forfiles /p %image_path% /d -61 /c "cmd /c rd /q/s @path"

:: 로그파일 삭제
forfiles /p %log_path% /d -61 /m *.log /c "cmd /c del /q @file"

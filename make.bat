@echo off&setlocal enabledelayedexpansion
set n=0
set nn=0
set "cddb=%cd%"

for /f "delims=" %%a in ('dir *./b') do (
if /i not "%%a"=="22.txt" (
set /a n+=1
set "wj!n!=%%a"
)
)

for /f "tokens=1* delims==" %%a in ('set wj') do (
if "%%b"=="qtdatavisualization" (
set /a nn+=1
qhelpgenerator %cddb%\%%b\qtdatavis3d.qhp -o %cddb%\A_qch\qtdatavis3d.qch
echo qtdatavis3d.qch������ϣ�������!nn!���ļ���
) else (
set /a nn+=1
qhelpgenerator %cddb%\%%b\%%b.qhp -o %cddb%\A_qch\%%b.qch
echo %%b.qch������ϣ�������!nn!���ļ���
))
echo ������%n%���ļ�,�����ļ���A_qchĿ¼��
pause
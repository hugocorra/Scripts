@echo off
mkdir Build
cd Build
cmake .. -G "Visual Studio 11 Win64"
FOR %%A IN (*.sln) DO SET SOLUTION=%%A
msbuild %SOLUTION% /p:Configuration=Release
FOR /R %%C IN (*test*.exe) DO SET TEST=%%C
echo.
echo ******************* TESTS *******************
%TEST%


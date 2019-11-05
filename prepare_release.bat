@setlocal enabledelayedexpansion

@set version=%1

@if "%version%" == "" (
  @echo Version needed^^!
  @exit /b 1
)

@set dirName="TestApp_v%version%"

@if exist %dirName% (
  @rmdir /Q /S %dirName%
)

@mkdir %dirName%
@mkdir %dirName%\bin

@set release="TestApp\bin\Release"

@copy %release%\TestApp.exe %dirName%\ >nul
@copy %release%\TestApp.exe.config %dirName%\ >nul
@copy %release%\*.dll %dirName%\bin\ >nul

@copy TestClassLibrary\bin\Release\TestClassLibrary.dll %dirName%\bin\ >nul

@echo.
@echo Prepared portable %dirName%
@echo.

@dir %dirName% /B /S

@echo.

@set dirNamex64="TestApp_v%version%_x64"

@if exist %dirNamex64% (
  @rmdir /Q /S %dirNamex64%
)

@mkdir %dirNamex64%
@mkdir %dirNamex64%\bin

@set release="TestApp\bin\x64\Release"

@copy %release%\TestApp.exe %dirNamex64%\ >nul
@copy %release%\TestApp.exe.config %dirNamex64%\ >nul
@copy %release%\*.dll %dirNamex64%\bin\ >nul

@copy TestClassLibrary\bin\x64\Release\TestClassLibrary.dll %dirNamex64%\bin\ >nul

@echo.
@echo Prepared portable %dirNamex64%
@echo.

@dir %dirNamex64% /B /S

@echo.

@endlocal

@exit /b 0

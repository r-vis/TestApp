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

@copy TestApp\bin\Release\TestApp.exe %dirName%\
@copy TestApp\bin\Release\TestApp.exe.config %dirName%\
@copy TestApp\bin\Release\*.dll %dirName%\bin\

@copy TestClassLibrary\bin\Release\TestClassLibrary.dll %dirName%\bin\

@set dirNamex64="TestApp_v%version%_x64"

@if exist %dirNamex64% (
  @rmdir /Q /S %dirNamex64%
)

@mkdir %dirNamex64%
@mkdir %dirNamex64%\bin

@copy TestApp\bin\x64\Release\TestApp.exe %dirNamex64%\
@copy TestApp\bin\x64\Release\TestApp.exe.config %dirNamex64%\
@copy TestApp\bin\x64\Release\*.dll %dirNamex64%\bin\

@copy TestClassLibrary\bin\x64\Release\TestClassLibrary.dll %dirNamex64%\bin\

@endlocal

@exit /b 0
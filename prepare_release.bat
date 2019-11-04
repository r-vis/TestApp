@if exist testapp_x86 (
  @rmdir /Q /S testapp_x86
)

@mkdir testapp_x86
@mkdir testapp_x86\bin

@copy TestApp\bin\Release\TestApp.exe testapp_x86\
@copy TestApp\bin\Release\TestApp.exe.config testapp_x86\
@copy TestApp\bin\Release\*.dll testapp_x86\bin\

@copy TestClassLibrary\bin\Release\TestClassLibrary.dll testapp_x86\bin\

@exit /b 0

@echo off

@echo Starting the virtual environment...
call .\venv\Scripts\activate.bat || echo Failed to start a virtual environment. && goto :fail

@echo Starting Jupyter Notebook...
jupyter notebook || echo Failed to start Jupyter Notebook. && goto :fail
goto :finish

:fail
echo Startup failed.

:finish
@echo on
pause
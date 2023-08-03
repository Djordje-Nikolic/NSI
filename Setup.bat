@echo off

@echo Creating a Python virtual environment...
python -m venv venv || echo Failed to create a virtual environment. && goto :fail

@echo Starting the virtual environment...
call .\venv\Scripts\activate.bat || echo Failed to start a virtual environment. && goto :fail

@echo Installing required packages...
pip install -r requirements.txt || echo Package installation failed. && goto :fail
goto :success

:fail
@echo Setup failed.
goto :finish

:success
@echo Setup complete.

:finish
@echo on
pause
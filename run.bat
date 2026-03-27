@echo off
cd /d "%~dp0"

echo Activating virtual environment...
if exist venv\Scripts\activate.bat (
    call venv\Scripts\activate.bat
) else (
    echo [WARNING] venv folder not found or activate.bat is missing.
)

echo Starting Depth Anything 3 Gradio App...
python src\depth_anything_3\app\gradio_app.py

pause

# install.ps1

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8


# 오류 발생 시 스크립트 중단
$ErrorActionPreference = "Stop"

# 가상환경 생성
Write-Host "🛠️ Creating virtual environment with uv..."
uv venv .venv

# 가상환경 활성화 후 requirements 설치
Write-Host "📦 Installing dependencies from requirements.txt..."
.venv\Scripts\Activate.ps1
uv pip install -r requirements.txt

Write-Host "✅ Environment setup complete."

# Tesseract OCR 설치 여부 확인
$tesseractPath = "C:\Program Files\Tesseract-OCR\tesseract.exe"
if (-Not (Test-Path $tesseractPath)) {
    Write-Host "⚠️ Tesseract is not installed."
    Write-Host "Download it from: https://github.com/tesseract-ocr/tesseract#windows"
    Write-Host "After installing, ensure the path is set in your Python script:"
    Write-Host '  pytesseract.pytesseract.tesseract_cmd = "C:\\Program Files\\Tesseract-OCR\\tesseract.exe"'
} else {
    Write-Host "✅ Tesseract installation found."
}

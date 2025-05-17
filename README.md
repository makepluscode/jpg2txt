
# 🧾 JPG to Text (OCR with Tesseract)

This project extracts text from a receipt image using Python and Tesseract OCR.

---

## ✅ Prerequisites

1. **Install Tesseract OCR**  
   Download from: https://github.com/UB-Mannheim/tesseract/wiki

2. **Set the Tesseract path in your Python code**  
   Example:
   ```python
   pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
````

---

## ⚙️ Setup (Windows PowerShell)

Run the following script:

```powershell
.\install.ps1
```

* Creates a virtual environment (`.venv`)
* Installs dependencies from `requirements.txt`

---

## 🧪 How to Run

Run the OCR script:

```bash
python app.py
```

* Make sure `./images/test.jpg` exists.
* Extracted text will be printed to the console.

---

## 📁 Project Files

* `app.py` — OCR script using `pytesseract`
* `install.ps1` — Setup script for environment and packages
* `requirements.txt` — Required Python packages

---

## 📝 Notes

* For Korean OCR, set `lang='kor'` and ensure the Korean language data is installed in Tesseract.
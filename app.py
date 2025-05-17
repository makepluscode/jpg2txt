from PIL import Image
import pytesseract
import os

# Explicit path to the Tesseract executable (adjust if necessary)
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'

# Path to the image file
image_path = './images/test.png'

# Check if the image file exists
if not os.path.exists(image_path):
    print(f"❌ Image not found: {image_path}")
    exit(1)

# Open the image
image = Image.open(image_path)

# Perform OCR
text = pytesseract.image_to_string(image, lang='eng')  # Use 'kor' for Korean

# Print the extracted text
print("📄 OCR Result:")
print(text)

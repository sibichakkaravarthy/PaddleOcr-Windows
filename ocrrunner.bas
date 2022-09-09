_Title "Paddle OCR"
Cls
Print "Menu:"
Print "1. Install dependencies"
Print "2. Run PaddleOCR"
Print "Enter choice"
Input n
If n = 1 Then
    Shell "paddleocr_installer.bat"
ElseIf n = 2 Then
    Input "Enter input file path ", A$
    Input "Enter output file path ", B$
    Shell "python ocr.py " + A$ + " " + B$
Else
    Print "Invalid input"
End If


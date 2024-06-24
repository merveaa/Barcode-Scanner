# Barcode Scanner Application 

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Google-flutter-logo.png/120px-Google-flutter-logo.png" alt="Flutter Logo" />

| Description | Recording |
|--------------|--------------|
| This application allows the user to identify products by scanning barcodes. By scanning the barcodes of the products, users can find the products corresponding to these barcodes in the database.| ![NewProjectClipchampileyapld1-ezgif com-crop](https://github.com/merveaa/barcode_scanner/assets/93757864/6f14499b-6dc9-4a07-936c-8fed6feda280)|


## Features

- **Barcode Scanner:** Users can scan barcodes of products using the camera.  
- **Product Recognition:** The scanned barcode is matched with the products in the database and the name of the product is displayed to the user. 
- **User-Friendly Interface:** Thanks to its simple and user-friendly interface, users can easily use the application. 



| Menu Screen | Scan Screen | Result Screen |
|--------------|--------------|--------------|
| ![Screenshot_1715270842](https://github.com/merveaa/barcode_scanner/assets/93757864/6ad14366-0126-4d76-87de-8fd57700e984)|![Screenshot_1715270871](https://github.com/merveaa/barcode_scanner/assets/93757864/3ef5c9c7-329a-4e36-8024-ed6ffb6cce9a) |![Screenshot_1715270872](https://github.com/merveaa/barcode_scanner/assets/93757864/ddf37a38-efef-442b-acd2-967f3045d452)|


## Libraries and Functions
This application uses the [scan](https://pub.dev/packages/scan) library for barcode scanning. Below are the key functions used from this library:
- **ScanController:**  The ScanController is used to manage the scanning process.
- **ScanView:**  The ScanView widget is used to display the camera view for scanning barcodes.
- **onCapture:**  This callback function is triggered when a barcode is successfully scanned.
- **toggleTorchMode:**  This function toggles the torch (flashlight) on and off.


## Getting Started

### Installation

**Clone the repository:**

[https://github.com/merveaa/barcode_scanner](https://github.com/merveaa/barcode_scanner)

**Install dependencies:**

```bash
  flutter pub get
```

**Run the app:**

```bash
  flutter run
```

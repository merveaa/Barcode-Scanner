import 'package:barcode_scanner/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:scan/scan.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScanController controller = ScanController();
  String _scanResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstants.primaryColor,
        title: const Text(
          "Barcode Scanner",
          style: AppConstants.titleTextStyle,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                'Your Barcode Contains the Text:',
                style: AppConstants.bodyTextStyle,
              ),
            ),
            Text(
              _scanResult,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showBarcodeScanner,
        tooltip: 'Scan Barcode',
        backgroundColor: AppConstants.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: const Icon(
          Icons.scanner,
          color: Colors.white,
        ),
      ),
    );
  }

  void _showBarcodeScanner() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context, setState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Scaffold(
              appBar: _buildBarcodeScannerAppBar(),
              body: _buildBarcodeScannerBody(),
            ),
          );
        });
      },
    );
  }

  AppBar _buildBarcodeScannerAppBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(color: AppConstants.primaryColor, height: 4.0),
      ),
      title: const Center(
        child: Text(
          'Scan Your Barcode',
          style: AppConstants.appBarTextStyle,
        ),
      ),
      elevation: 0.0,
      backgroundColor: AppConstants.appBarColor,
      leading: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: const Center(
          child: Icon(
            Icons.cancel,
            color: Colors.white,
          ),
        ),
      ),
      actions: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(right: 16.0),
          child: GestureDetector(
            onTap: () => controller.toggleTorchMode(),
            child: const Icon(Icons.flashlight_on),
          ),
        ),
      ],
    );
  }

  Widget _buildBarcodeScannerBody() {
    return SizedBox(
      height: 400,
      child: ScanView(
        controller: controller,
        scanAreaScale: .7,
        scanLineColor: AppConstants.primaryColor,
        onCapture: (data) {
          setState(() {
            _scanResult = data;
            Navigator.of(context).pop();
          });
        },
      ),
    );
  }
}

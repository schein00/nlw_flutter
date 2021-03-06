import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvaiable;
  final String error;
  final String barcode;

  CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCameraAvaiable = false,
    this.cameraController,
    this.error = '',
    this.barcode = '',
  });

  factory BarcodeScannerStatus.avaible(CameraController cameraController) =>
      BarcodeScannerStatus(
          isCameraAvaiable: true, cameraController: cameraController);

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode);

  bool get showCamera => isCameraAvaiable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;
}

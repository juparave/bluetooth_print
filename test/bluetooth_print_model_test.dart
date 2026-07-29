import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('serializes a Code 128 module width of one', () {
    final line = LineText(
      type: LineText.TYPE_BARCODE,
      content: 'VT1:AbCdEfGhIjKlMnOpQrStUv',
      barcodeWidth: 1,
    );

    expect(line.toJson()['barcodeWidth'], 1);
  });
}

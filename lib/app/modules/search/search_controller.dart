import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'search_controller.g.dart';

@Injectable()
class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  int value = 0;
  @observable
  String codigoBarra;

  @action
  void increment() {
    value++;
  }

  @action
  leituraCodigo() async {
    codigoBarra = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.DEFAULT);
  }
}

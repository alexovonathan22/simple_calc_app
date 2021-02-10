import 'dart:async';
import 'package:simple_calc_app/Widgets/calculator-key.dart';

class KeyEvent {

  KeyEvent(this.key);
  final CalculatorKey key;
}

abstract class KeyController {

  static StreamController _controller = StreamController();
  static Stream get _stream => _controller.stream;

  static StreamSubscription listen(Function handler) => _stream.listen(handler as dynamic);
  static dynamic fire(KeyEvent key) async => _controller.add(key);

  static dispose() => _controller.close();
}
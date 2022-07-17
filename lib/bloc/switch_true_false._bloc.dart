import 'dart:async';

class SwitchTrueFalse {
  bool _state = false;
  SwitchTrueFalse() {
    _controller.sink.add(_state);
  }

  final _controller = StreamController<bool>();
  Stream<bool> get stream => _controller.stream;

  void toggleState() {
    _state = !_state;
    _controller.sink.add(_state);
  }

  void dispose() {
    _controller.close();
  }
}

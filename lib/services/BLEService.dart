import 'dart:async';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class BLEService {
  final FlutterReactiveBle _ble = FlutterReactiveBle();

  StreamSubscription<DiscoveredDevice>? _scanSubscription;
  StreamSubscription<ConnectionStateUpdate>? _connection;
  QualifiedCharacteristic? _characteristic;

  final StreamController<DiscoveredDevice> _devices = StreamController.broadcast();
  Stream<DiscoveredDevice> get devices => _devices.stream;

  void startScan() {
    _scanSubscription = _ble.scanForDevices(withServices: []).listen((device) {
      _devices.add(device);
    });
  }

  void stopScan() {
    _scanSubscription?.cancel();
    _scanSubscription = null;
  }

  Future<void> connect(String deviceId) async {
    _connection = _ble.connectToDevice(id: deviceId).listen((event) {
      print("Connection state: \$event");
    });
  }

  Future<void> disconnect(String deviceId) async {
    await _ble.disconnectDevice(id: deviceId);
    _connection?.cancel();
  }
}
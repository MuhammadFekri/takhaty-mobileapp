import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityHandler {
  ConnectivityHandler._();

  static final ConnectivityHandler _singleton = ConnectivityHandler._();

  factory ConnectivityHandler() => _singleton;

  late bool hasConnection;

  Stream<ConnectivityResult> start() {
    return Connectivity().onConnectivityChanged;
  }

  Future<void> checkConnection() async {
    ConnectivityResult connection = await Connectivity().checkConnectivity();
    hasConnection = connection != ConnectivityResult.none;
  }
}
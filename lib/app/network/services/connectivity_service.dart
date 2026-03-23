import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  ConnectivityService._();
  static final ConnectivityService _instance = ConnectivityService._();
  factory ConnectivityService() => _instance;

  bool _lastIsConnected = false;
  bool get isConnected => _lastIsConnected;
  final Stream<bool> _isConnectedStream = Connectivity().onConnectivityChanged
      .map((x) => _isContainsInternetRelatedConnection(x));
  Stream<bool> get isConnectedStream => _isConnectedStream;

  Future<void> init() async {
    final currentConnectivities = await (Connectivity().checkConnectivity());
    _lastIsConnected = _isContainsInternetRelatedConnection(
      currentConnectivities,
    );
    _isConnectedStream.listen((newIsConnected) {
      _lastIsConnected = newIsConnected;
    });
  }

  Stream<List<ConnectivityResult>> get onConnectivityChanged {
    return Connectivity().onConnectivityChanged;
  }

  static bool _isContainsInternetRelatedConnection(
    List<ConnectivityResult> connectivities,
  ) =>
      connectivities.contains(ConnectivityResult.wifi) ||
      connectivities.contains(ConnectivityResult.mobile);
}

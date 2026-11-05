
import 'dart:io' show Platform;

/// Dirección de la API según dónde corre la app.
/// Emulador Android: 10.0.2.2
/// Escritorio: localhost
/// Celular real: IP de la computadora

String urlBaseApi() {
  const manual = String.fromEnvironment('API_URL');

  if (manual.isNotEmpty) return manual;

  if (Platform.isAndroid) {
    return 'http://10.0.2.2:3000';
  }

  return 'http://localhost:3000';
}

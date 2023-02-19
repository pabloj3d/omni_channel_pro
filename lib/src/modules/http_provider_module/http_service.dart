part of 'lib_http.dart';

class HttpServiceProvider extends HttpBaseProvider {
  HttpServiceProvider([http.Client? client]) : super(client ?? http.Client());
}

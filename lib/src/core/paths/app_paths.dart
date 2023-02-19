part of 'lib_paths.dart';

Map<String, WidgetBuilder> get routes => {
      'home': (_) => const PhotoView(),
      'error': (_) => const ErrorView(),
    };

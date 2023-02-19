part of 'lib_error.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;

    return ResultTemplate(
      resultType: ResultType.error,
      title: 'Lo sentimos',
      message: message,
      appBarTitle: 'Oops.. ',
      textBtnSecondary: '',
      textBtnPrimary: 'Reintentar',
      onPressedPrimary: () =>
          Navigator.pushNamedAndRemoveUntil(context, 'home', (route) => false),
    );
  }
}

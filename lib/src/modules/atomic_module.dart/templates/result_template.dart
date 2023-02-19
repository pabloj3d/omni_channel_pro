part of 'lib_templates.dart';

class ResultTemplate extends PageTemplate {
  ResultTemplate({
    super.key,
    String title = 'title',
    String appBarTitle = 'appBarTitle',
    String message = 'message',
    String textBtnPrimary = 'textBtnPrimary',
    String textBtnSecondary = 'textBtnSecondary',
    ResultType resultType = ResultType.success,
    void Function()? onPressedPrimary,
    void Function()? onPressedSecondary,
  }) : super(
          title: appBarTitle,
          body: _body(resultType, title, message),
          bottomNavigationBar: _actions(
            textPrimary: textBtnPrimary,
            textSecondary: textBtnSecondary,
            onPressedPrimary: onPressedPrimary,
            onPressedSecondary: onPressedSecondary,
          ),
        );

  static double get _iconSize => 38.5;

  static Widget _body(ResultType type, String title, String message) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        (_icon.containsKey(type)) ? _icon[type]! : const SizedBox(),
        _title(title),
        _message(message),
        const SizedBox(height: 50, width: double.infinity)
      ],
    );
  }

  static Map<ResultType, IconAtom> get _icon => {
        ResultType.success: IconAtom(
          Icons.check_circle_rounded,
          size: _iconSize,
          color: ColorsApp.succes,
        ),
        ResultType.error: IconAtom(
          Icons.error,
          size: _iconSize,
          color: ColorsApp.error,
        ),
        ResultType.alert: IconAtom(
          Icons.report_problem,
          size: _iconSize,
          color: ColorsApp.alert,
        ),
        ResultType.info: IconAtom(
          Icons.info,
          size: _iconSize,
          color: ColorsApp.info,
        ),
        ResultType.pending: IconAtom(
          Icons.settings,
          size: _iconSize,
          color: ColorsApp.succes,
        )
      };

  static Widget _title(String value) {
    return TitleMolecule(value, textAlign: TextAlign.center);
  }

  static Widget _message(String value) {
    return ParagraphAtom(value, textAlign: TextAlign.center);
  }

  static Column _actions({
    String textPrimary = '',
    String textSecondary = '',
    void Function()? onPressedPrimary,
    void Function()? onPressedSecondary,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: textPrimary.isNotEmpty,
          child: PrimaryButtonMolecule(
            onPressed: onPressedPrimary,
            text: textPrimary,
          ),
        ),
        Visibility(
          visible: textSecondary.isNotEmpty,
          child: SecondaryButtonMolecule(
            onPressed: onPressedSecondary,
            text: textSecondary,
          ),
        ),
      ],
    );
  }
}

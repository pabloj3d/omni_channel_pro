part of 'lib_templates.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? appBarActions;
  final Widget? bottomNavigationBar;

  const PageTemplate({
    super.key,
    this.title = 'PageTemplate()',
    this.body = const Center(child: ParagraphAtom('Body')),
    this.appBarActions,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAtom(
        title: title,
        actions: appBarActions,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

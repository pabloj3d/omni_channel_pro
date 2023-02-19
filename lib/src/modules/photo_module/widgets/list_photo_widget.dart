part of '../lib_photo.dart';

class ListPhotoWidget extends StatefulWidget {
  const ListPhotoWidget({super.key});

  @override
  State<ListPhotoWidget> createState() => _ListPhotoWidgetState();
}

class _ListPhotoWidgetState extends State<ListPhotoWidget> {
  late final ScrollController _scrollController;
  late final PhotoViewController _viewController;

  final ValueNotifier<bool> _showLoader = ValueNotifier(false);
  int _currentPage = 1;
  final ValueNotifier<List<ItemPhotoModel>> _items = ValueNotifier([]);

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _viewController = PhotoViewController();
    _scrollListener();
    _loadData();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _items.dispose();
    _showLoader.dispose();
    //_programaticDispose();
  }

  @override
  Widget build(BuildContext context) {
    return _layout();
  }

  Widget _layout() {
    return Stack(
      children: [
        _body(),
        _loaderList(),
      ],
    );
  }

  Widget _loaderList() {
    double width = MediaQuery.of(context).size.width;

    return ValueListenableBuilder(
      valueListenable: _showLoader,
      builder: (_, value, child) {
        return Visibility(
          visible: value,
          child: LoaderScrollMolecule(
            left: (width * 0.5) - 30,
            bottom: 30,
          ),
        );
      },
    );
  }

  Widget _body() {
    return ValueListenableBuilder(
      valueListenable: _items,
      child: const Center(child: CircularProgressIndicator()),
      builder: (context, value, Widget? child) {
        if (value.isNotEmpty) return _list();

        return child!;
      },
    );
  }

  Widget _list() {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 30),
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      itemCount: _items.value.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 25);
      },
      itemBuilder: (_, int index) {
        final data = _items.value[index];

        return ItemListMolecule(
          urlImage: data.thumbnailUrl,
          title: data.title,
          subtitle: 'Item: ${data.id}',
        );
      },
    );
  }

  void _scrollListener() {
    _scrollController.addListener(() {
      double nextPageTrigger = 0.8 * _scrollController.position.maxScrollExtent;

      if ((_scrollController.position.pixels) > nextPageTrigger) {
        _scrollLoadData();
      }
    });
  }

  void _scrollLoadData() async {
    if (_showLoader.value) return;

    if (_scrollController.position.pixels + 150 <=
        _scrollController.position.maxScrollExtent) return;

    _setShowLoader(true);
    _currentPage++;

    await _loadData();
  }

  Future<void> _loadData() async {
    final PhotoModel data = await _viewController.getItems(_currentPage);
    if (data.error.isNotEmpty) {
      _showError(data.error);
      return;
    }
    _items.value = _items.value + data.items;
    debugPrint(_currentPage.toString());
    _setShowLoader(false);
  }

  void _setShowLoader(bool value) async {
    _showLoader.value = value;
  }

  void _showError(String message) {
    if (mounted) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        'error',
        (route) => false,
        arguments: message,
      );
    }
  }
}

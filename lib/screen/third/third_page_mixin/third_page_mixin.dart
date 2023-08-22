part of 'package:navigation/screen/third_page.dart';

mixin ThirdPageMixin on State<ThirdPAge> {
  late TabController _tabController;
  late ThirdBloc _bloc;

  _initControllers(TickerProvider tickerProvider) {
    _tabController = TabController(
      length: 2,
      vsync: tickerProvider,
    );
    _bloc = context.read<ThirdBloc>();
  }
}

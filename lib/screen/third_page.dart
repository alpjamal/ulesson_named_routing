import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation/screen/third/third_bloc.dart';

part 'package:navigation/screen/third/third_page_mixin/third_page_mixin.dart';

class ThirdPAge extends StatefulWidget {
  final String name;

  const ThirdPAge({super.key, required this.name});

  @override
  State<ThirdPAge> createState() => _ThirdPAgeState();
}

class _ThirdPAgeState extends State<ThirdPAge> with SingleTickerProviderStateMixin, ThirdPageMixin {
  @override
  void initState() {
    super.initState();
    _initControllers(this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThirdBloc, ThirdState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(state.activeIndex == 0 ? 'First Tab' : 'Second Tab'),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: TabBar(
                controller: _tabController,
                onTap: (index) {
                  _bloc.add(ChangePageName(index: index));
                },
                tabs: const [
                  Text('first'),
                  Text('second'),
                ],
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              Scaffold(
                body: Center(child: Text('first tab')),
              ),
              Scaffold(
                body: Center(child: Text('Second tab')),
              )
            ],
          ),
        );
      },
    );
  }
}

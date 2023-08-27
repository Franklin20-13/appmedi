import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../authentication/domain/entities/user.dart';
import '../../domain/entities/menu_options.dart';
import '../bloc/people/people_bloc.dart';
import '../cubit/home_cubit.dart';
import '../widgets/buttom_navigator_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.user});
  final UserEntity user;
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PeopleBloc peopleBloc;
  late List<OptionHome> options = [];
  @override
  void initState() {
    peopleBloc = context.read<PeopleBloc>();
    //peopleBloc.add(const PeopleEvent.getPeople());
    if (widget.user.role == 0) {
      options.addAll(listUser);
    } else {
      options.addAll(listDoctor);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, int>(builder: (context, state) {
        return options[state].child;
      }),
      bottomNavigationBar: ButtonNavigatorBarWidget(options: options),
    );
  }
}

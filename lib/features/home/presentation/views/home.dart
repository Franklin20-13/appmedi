import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/people/people_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late PeopleBloc peopleBloc;
  @override
  void initState() {
    peopleBloc = context.read<PeopleBloc>();
    peopleBloc.add(const PeopleEvent.getPeople());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('holaaa'),
        ),
        body: BlocBuilder<PeopleBloc, PeopleState>(builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: Text('Cargando...'),
            ),
            loadSuccess: (s) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: List.generate(
                    s.people.length,
                    (index) {
                      return Text(s.people[index].name);
                    },
                  ),
                ),
              );
            },
            loadMessage: (m) {
              return Text(m.message);
            },
          );
        }));
  }
}

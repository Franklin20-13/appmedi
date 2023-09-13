import 'package:app_medi/config/custom_icons.dart';
import 'package:app_medi/features/authentication/domain/entities/person.dart';
import 'package:app_medi/features/authentication/presentation/bloc/session/session_bloc.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/doctor/domain/model/option_tabs.dart';
import 'package:app_medi/features/doctor/presentation/bloc/recipes/recipes_bloc.dart';
import 'package:app_medi/routes/router.gr.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeDoctor extends StatefulWidget {
  const HomeDoctor({super.key, required this.user});
  final PersonEntity user;

  @override
  State<HomeDoctor> createState() => _HomeDoctorState();
}

class _HomeDoctorState extends State<HomeDoctor>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  static List<OptionTabs> myTabs = <OptionTabs>[
    OptionTabs(title: 'Recetas Pedientes', data: 0),
    OptionTabs(title: 'Recetas Revisadas', data: 1),
  ];
  late RecipesBloc recipesBloc;
  @override
  void initState() {
    recipesBloc = context.read<RecipesBloc>();
    _tabController = TabController(vsync: this, length: 2);
    recipesBloc.add(
      RecipesEvent.getRecipes(
        myTabs[0].data,
      ),
    );
    _tabController.addListener(() {
      recipesBloc.add(
        RecipesEvent.getRecipes(
          myTabs[_tabController.index].data,
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Bienvenido Dr. ${widget.user.name}',
          style: const TextStyle(
            color: AppColors.primaryColor,
          ),
        ),
        leading: const Icon(
          MediIcons.user_md,
          color: AppColors.primaryColor,
          size: 30,
        ).paddingLeft(15),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              alert(context, text: "¿Seguro que desea cerrar  sesión?",
                  cancel: () {
                Navigator.pop(context);
              }, confirm: () {
                BlocProvider.of<SessionBloc>(context).add(LoggedOut());
                Navigator.pop(context);
              });
            },
            child: const Icon(
              Icons.exit_to_app,
              size: 30,
              color: AppColors.primaryColor,
            ).paddingRight(20),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TabBar(
              controller: _tabController,
              indicatorPadding: const EdgeInsets.all(10),
              labelPadding: const EdgeInsets.symmetric(horizontal: 5),
              unselectedLabelColor: Colors.white,
              labelColor: AppColors.primaryColor,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: Colors.white),
              splashBorderRadius: BorderRadius.circular(40),
              tabAlignment: TabAlignment.center,
              tabs: List.generate(
                myTabs.length,
                (index) {
                  return Tab(
                    child: SizedBox(
                      width: 170,
                      height: 40,
                      child: Center(
                        child: Text(
                          myTabs[index].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ).paddingTop(10),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                myTabs.length,
                (index) {
                  return BlocBuilder<RecipesBloc, RecipesState>(
                      builder: (context, state) {
                    return state.map(
                      initial: (_) => SpinKitThreeBounce(
                        size: 30,
                        itemBuilder: (BuildContext context, int index) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: index.isEven
                                  ? AppColors.primaryColor
                                  : AppColors.mainColor,
                            ),
                          );
                        },
                      ).paddingTop(size.height * .1),
                      loadSuccess: (e) {
                        return cardItems(context, e.recipes)
                            .paddingOnly(top: 10, left: 10, right: 10);
                      },
                      loadMessage: (_) => Container(),
                    );
                  });
                },
              ),
            ),
          )
        ],
      ).paddingOnly(left: 15, right: 15),
    );
  }

  ListView cardItems(BuildContext context, List<RecipeModel> items) {
    return ListView(
      children: List.generate(items.length, (index) {
        return listItem(items, index).paddingTop(10);
      }),
    );
  }

  Widget listItem(List<RecipeModel> items, int index) {
    return InkWell(
      onTap: () {
        context.router.push(ContentDetail(
          model: items[index],
        ));
      },
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withOpacity(0.1),
            offset: const Offset(0, 5),
            blurRadius: 15,
          )
        ]),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            children: [
              const Icon(
                MediIcons.file_medical_alt,
                size: 50,
                color: AppColors.primaryColor,
              ).paddingLeft(10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FuntionsApp().primeraLetraMayuscula(items[index].name),
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      items[index].description,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Paciente: ${items[index].patient}',
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ).paddingLeft(10),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primaryColor,
                size: 30,
              ).paddingRight(10)
            ],
          ),
        ),
      ),
    );
  }
}

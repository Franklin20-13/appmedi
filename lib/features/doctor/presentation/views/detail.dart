import 'package:app_medi/config/custom_icons.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_detail_models.dart';
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/medicament_detail/medicament_detail_bloc.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart';
import 'package:app_medi/features/doctor/presentation/bloc/recipes/recipes_bloc.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ContentDetail extends StatefulWidget {
  const ContentDetail({super.key, required this.model});
  final RecipeModel model;
  @override
  State<ContentDetail> createState() => _ContentDetailState();
}

class _ContentDetailState extends State<ContentDetail> {
  late TreatamentBloc treatamentBloc;
  late MedicamentDetailBloc medicamentDetailBloc;
  late RecipesBloc recipesBloc;
  @override
  void initState() {
    recipesBloc = context.read<RecipesBloc>();
    treatamentBloc = context.read<TreatamentBloc>();
    medicamentDetailBloc = context.read<MedicamentDetailBloc>();
    medicamentDetailBloc
        .add(MedicamentDetailEvent.getMedimanetItems(widget.model.id!, true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ProgressDialog progressDialog = ProgressDialog(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<TreatamentBloc, TreatamentState>(
            listener: (context, state) {
          if (state is InitialTreatment) {
            progressDialog.show();
          }
          if (state is LoadMessageTreatment) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message, color: Colors.red);
          }
          if (state is LoadSuccessTreatment) {
            progressDialog.dismiss();
            showInSnackBar(context, state.message);
            recipesBloc.add(
              const RecipesEvent.getRecipes(
                0,
              ),
            );
            Navigator.pop(context);
          }
        })
      ],
      child: Scaffold(
        backgroundColor: const Color.fromARGB(246, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.primaryColor,
            ),
          ),
          title: const Text(
            'Detalle de Receta',
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ListTile(
                leading: const Icon(
                  Icons.note,
                  size: 36,
                  color: AppColors.primaryColor,
                ),
                title: Text(
                  FuntionsApp().primeraLetraMayuscula(widget.model.name),
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  FuntionsApp().primeraLetraMayuscula(widget.model.description),
                  style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor.withOpacity(0.7)),
                ),
              ),
            ).paddingBottom(10),
            Expanded(
              child: SingleChildScrollView(
                child: BlocBuilder<MedicamentDetailBloc, MedicamentDetailState>(
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
                            ).paddingTop(130),
                        loadSuccess: (e) {
                          return Column(
                            children: List.generate(
                              e.items.length,
                              (index) => itemsMedicamentWidget(
                                size,
                                e.items[index],
                              ).paddingBottom(10),
                            ),
                          ).paddingTop(27);
                        },
                        loadMessage: (_) => Container());
                  },
                ),
              ),
            ),
            if (widget.model.status == 0)
              buttonWidgetApp(
                label: 'Verificado',
                height: 50,
                width: 250,
                fontSize: 20,
                onTap: () async {
                  alert(context,
                      text:
                          "¿Esta seguro de marcar como verificado esta receta médica?",
                      cancel: () {
                    Navigator.pop(context);
                  }, confirm: () {
                    treatamentBloc
                        .add(TreatamentEvent.changeRecipe(widget.model.id!));
                    Navigator.pop(context);
                  });
                },
              ).paddingBottom(35)
          ],
        ).paddingOnly(left: 15, right: 15),
      ),
    );
  }

  Container itemsMedicamentWidget(Size size, RecipeDetailModels item) {
    return Container(
      width: double.infinity,
      height: 95,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: size.width * .2,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: const Icon(
              MediIcons.capsules,
              size: 35,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Nombre:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(FuntionsApp().primeraLetraMayuscula(
                              item.medicamentModel!.name))
                          .paddingLeft(10),
                    ),
                  ],
                ).paddingBottom(5),
                Row(
                  children: [
                    const Text(
                      'Tipo:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(FuntionsApp().primeraLetraMayuscula(
                              item.medicamentModel!.type))
                          .paddingLeft(10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:
                          List.generate(hoursList(item.hour).length, (index) {
                        final dat = hoursList(item.hour);
                        final state =
                            isNotification(item, dat[index].toString());
                        return SizedBox(
                          width: 100,
                          child: Chip(
                            label: Text(
                              DateFormat('HH:mm a')
                                  .format(FuntionsApp().parseTime(dat[index])),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor:
                                state ? Colors.green : AppColors.primaryColor,
                          ),
                        );
                      })),
                )
              ],
            ).paddingLeft(10),
          ),
        ],
      ),
    );
  }

  List<DateTime> hoursList(String item) {
    List<DateTime> dates = [];
    int index = 0;
    final listData = item.split(";");
    while (index < (listData.length - 1)) {
      dates.add(DateTime.parse(listData[index]));
      index++;
    }
    return dates;
  }

  bool isNotification(RecipeDetailModels item, String hour) {
    List<String> hours = [];
    final list = item.hourCompleted.split(";");
    int index = 0;
    while (index < (list.length - 1)) {
      hours.add(list[index]);
      index++;
    }
    final exist = hours.where((p) => p.compareTo(hour) == 0).toList();
    if (exist.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

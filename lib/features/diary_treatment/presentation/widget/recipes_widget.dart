import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart';
import 'package:app_medi/features/diary_treatment/presentation/bloc/treatament/treatament_bloc.dart';
import 'package:app_medi/shared/values/functions.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bloc/get_recipes/get_recipes_bloc.dart';
import 'recipe_detail_widget.dart';

class RecipesWidget extends StatefulWidget {
  const RecipesWidget({super.key, required this.onTap, required this.onChange});
  final VoidCallback onTap;
  final ValueChanged<RecipeModel> onChange;
  @override
  State<RecipesWidget> createState() => _RecipesWidgetState();
}

class _RecipesWidgetState extends State<RecipesWidget> {
  late GetRecipesBloc getRecipesBloc;
  bool isDelete = false;
  bool isRecipeDetail = false;
  RecipeModel? recipeSelected;
  late TreatamentBloc treatamentBloc;
  @override
  void initState() {
    getRecipesBloc = context.read<GetRecipesBloc>();
    getRecipesBloc.add(const GetRecipesEvent.getRecipes());
    treatamentBloc = context.read<TreatamentBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return isRecipeDetail
        ? RecipeDetailWidget(
            recipe: recipeSelected!,
            onTap: () {
              setState(() {
                isRecipeDetail = false;
                recipeSelected = null;
              });
            },
          )
        : ListView(
            children: [
              Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Mis Recetas Med.',
                      style: GoogleFonts.montserrat(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: widget.onTap,
                        child: const Icon(
                          Icons.add_circle,
                          size: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BlocBuilder<GetRecipesBloc, GetRecipesState>(
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
                          ).paddingTop(size.height * .2 + 55),
                      loadSuccess: (e) => Column(
                            children: List.generate(
                              e.recipes.length,
                              (index) => itemsRecipesWidget(
                                size,
                                e.recipes[index],
                              ).paddingBottom(15),
                            ),
                          ).paddingTop(17),
                      loadMessage: (_) => Container());
                },
              ),
            ],
          );
  }

  Widget itemsRecipesWidget(Size size, RecipeModel item) {
    return Container(
      width: double.infinity,
      height: 5 + 60,
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
          if (!isDelete)
            InkWell(
              onDoubleTap: () {
                setState(() {
                  isDelete = !isDelete;
                });
              },
              onTap: () {
                recipeSelected = item;
                widget.onChange(recipeSelected!);
              },
              child: Container(
                width: size.width * .2,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.edit,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            )
          else
            InkWell(
              onDoubleTap: () {
                setState(() {
                  isDelete = !isDelete;
                });
              },
              onTap: () {
                alert(context,
                    text: "¿Esta seguro de eliminar esta cita médica?",
                    cancel: () {
                  Navigator.pop(context);
                }, confirm: () {
                  treatamentBloc.add(TreatamentEvent.deleteById(item.id!));
                  Navigator.pop(context);
                });
              },
              child: Container(
                width: size.width * .2,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: const Icon(
                  Icons.delete,
                  size: 35,
                  color: Colors.white,
                ),
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
                      child:
                          Text(FuntionsApp().primeraLetraMayuscula(item.name))
                              .paddingLeft(10),
                    ),
                  ],
                ).paddingBottom(5),
                Row(
                  children: [
                    const Text(
                      'Descripción:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(FuntionsApp()
                              .primeraLetraMayuscula(item.description))
                          .paddingLeft(10),
                    ),
                  ],
                ),
              ],
            ).paddingLeft(10),
          ),
          InkWell(
            onTap: () {
              setState(() {
                recipeSelected = item;
                isRecipeDetail = true;
              });
            },
            child: Container(
              width: 70,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:app_medi/config/custom_icons.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/recipe_model.dart';
import '../bloc/treatament/treatament_bloc.dart';
import '../widget/recipe_widget.dart';
import '../widget/recipes_widget.dart';

class DiaryTreatmentView extends StatefulWidget {
  const DiaryTreatmentView({super.key});

  @override
  State<DiaryTreatmentView> createState() => _DiaryTreatmentViewState();
}

class _DiaryTreatmentViewState extends State<DiaryTreatmentView> {
  bool isList = true;
  late RecipeModel? selectRecipe;
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
            //clearForm();
          }
        })
      ],
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * .3,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MediIcons.first_aid,
                    size: 70,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * .6 + 50,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 10,
                    ),
                    Expanded(
                      child: isList
                          ? RecipesWidget(
                              onTap: () {
                                selectRecipe = null;
                                setState(() {
                                  isList = !isList;
                                });
                              },
                              onChange: (RecipeModel value) {
                                selectRecipe = value;
                                setState(() {
                                  isList = !isList;
                                });
                              },
                            )
                          : RecipeWidget(
                              onTap: () {
                                setState(() {
                                  isList = !isList;
                                });
                              },
                              selectRecipe: selectRecipe,
                            ),
                    ),
                  ],
                ).paddingOnly(left: 20, right: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

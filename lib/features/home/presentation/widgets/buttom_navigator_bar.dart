import 'package:app_medi/features/home/presentation/cubit/home_cubit.dart';
import 'package:app_medi/shared/values/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/menu_options.dart';

class ButtonNavigatorBarWidget extends StatefulWidget {
  const ButtonNavigatorBarWidget({super.key, required this.options});
  final List<OptionHome> options;
  @override
  State<ButtonNavigatorBarWidget> createState() =>
      _ButtonNavigatorBarWidgetState();
}

class _ButtonNavigatorBarWidgetState extends State<ButtonNavigatorBarWidget> {
  String selectedItem = "Home";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(widget.options.length, (index) {
            return itemOptionWidget(
              widget.options[index].icon,
              widget.options[index].title,
              () {
                setState(() {
                  selectedItem = widget.options[index].title;
                });
                context.read<HomeCubit>().changePage(index);
              },
            );
          })).paddingOnly(left: 20, right: 20),
    );
  }

  InkWell itemOptionWidget(IconData icon, String text, VoidCallback onTap) {
    Color color = Colors.black.withOpacity(.3);
    if (selectedItem.toLowerCase() == text.toLowerCase()) {
      color = Colors.black;
    }
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: color),
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: color, fontWeight: FontWeight.bold),
          ).paddingTop(4)
        ],
      ),
    );
  }
}

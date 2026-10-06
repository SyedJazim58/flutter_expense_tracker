import 'package:expense_tracker/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onbuttontap;
  final String label;
  final Color buttoncolor;
  final Color buttonlabelcolor;

  const CustomButtom({
    super.key,
    required this.label,
    required this.buttoncolor,
    this.onbuttontap,
    required this.buttonlabelcolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttoncolor,
          border: Border.all(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(15),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Text(
              label,
              style: TextStyle(
                color: buttonlabelcolor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

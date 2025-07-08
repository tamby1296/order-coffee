import 'package:flutter/material.dart';
import 'package:test/styles/colors.dart';

class SizeSelector extends StatelessWidget {
  final bool isActive;
  final String label;
  final void Function() onPressed;

  const SizeSelector({
    super.key,
    required this.isActive,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: isActive ? Color(0xffF9F2ED) : Colors.white,
          side: BorderSide(
            color: isActive ? AppColors.kAppClay : AppColors.kAppSilver,
            width: 1.35,
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 16,
              color: isActive ? AppColors.kAppClay : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

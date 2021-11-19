import 'package:flutter/material.dart';
import 'package:sample_sheet_app/sample_sheet.dart';

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    required this.borderRadius,
  });

  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 6),
          const Center(
            child: Radius3Rect(),
          ),
          _buildCloseButtonArea(context),
        ],
      ),
    );
  }

  Widget _buildCloseButtonArea(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 0.5),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: _buildCloseButton,
        ),
        const SizedBox(height: 2.5),
      ],
    );
  }

  Widget get _buildCloseButton {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 16),
        child: Icon(
          Icons.close,
          size: 24,
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}

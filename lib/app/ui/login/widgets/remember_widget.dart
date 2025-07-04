import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';

class RememberDesign extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?> onChange;

  const RememberDesign({
    super.key,
    required this.isChecked,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Recuérdame", style: AppTexts.body1),
          Checkbox(value: isChecked, onChanged: onChange),
        ],
      ),
    );
  }
}

class RememberWidget extends StatefulWidget {
  const RememberWidget({super.key});

  @override
  RememberWidgetState createState() => RememberWidgetState();
}

class RememberWidgetState extends State<RememberWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return RememberDesign(isChecked: _isChecked, onChange: _onChange);
  }

  void _onChange(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }
}

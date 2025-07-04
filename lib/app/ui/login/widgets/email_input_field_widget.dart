import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';

class EmailInputFieldDesign extends StatelessWidget {
  final Color backgroundColor;
  final TextEditingController controller;

  const EmailInputFieldDesign({
    super.key,
    required this.backgroundColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'vendedor@empresa.com',
        hintStyle: TextStyle(color: AppColors.semidarkT),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        filled: true,
        fillColor: backgroundColor,
      ),
    );
  }
}

class EmailInputFieldWidget extends StatefulWidget {
  const EmailInputFieldWidget({super.key});

  @override
  EmailInputFieldWidgetState createState() => EmailInputFieldWidgetState();
}

/// Gestiona el estado para el cambio de color del campo de entrada
class EmailInputFieldWidgetState extends State<EmailInputFieldWidget> {
  Color _bgColor = Colors.transparent; // color inicial
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return EmailInputFieldDesign(
      backgroundColor: _bgColor,
      controller: _controller,
    );
  }

  /// Limpia el controlador y libera recursos al eliminar el widget
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        _bgColor = _controller.text.isEmpty
            ? Colors.transparent
            : AppColors.tertiaryS;
      });
    });
  }
}

import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:flutter/material.dart';

class PasswordInputFieldDesign extends StatelessWidget {
  final Color backgroundColor;
  final TextEditingController controller;
  final bool changeIcon;
  final VoidCallback onchangeVisibility;

  const PasswordInputFieldDesign({
    super.key,
    required this.backgroundColor,
    required this.controller,
    required this.changeIcon,
    required this.onchangeVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: changeIcon,
      decoration: InputDecoration(
        hintText: '**********',
        hintStyle: TextStyle(color: AppColors.semidarkT),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        filled: true,
        fillColor: backgroundColor,
        suffixIcon: IconButton(
          icon: Icon(changeIcon ? Icons.visibility_off : Icons.visibility),
          onPressed: onchangeVisibility,
        ),
      ),
    );
  }
}

class PasswordInputFieldWidget extends StatefulWidget {
  const PasswordInputFieldWidget({super.key});

  @override
  PasswordInputFieldWidgetState createState() =>
      PasswordInputFieldWidgetState();
}

/// Gestiona el estado para el cambio de color del campo de entrada
class PasswordInputFieldWidgetState extends State<PasswordInputFieldWidget> {
  Color _bgColor = Colors.transparent; // color inicial
  final TextEditingController _controller = TextEditingController();
  bool _changeIcon = true;

  @override
  Widget build(BuildContext context) {
    return PasswordInputFieldDesign(
      backgroundColor: _bgColor,
      controller: _controller,
      changeIcon: _changeIcon,
      onchangeVisibility: _ontoggleVisibility,
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

  void _ontoggleVisibility() {
    setState(() {
      _changeIcon = !_changeIcon;
    });
  }
}

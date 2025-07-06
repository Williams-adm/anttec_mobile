import 'package:anttec_mobile/core/styles/colors.dart';
import 'package:anttec_mobile/core/styles/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'logout') {
          context.goNamed('login');
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'logout',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Cerrar sesión', style: AppTexts.body2M),
              SizedBox(width: 10.0),
              Icon(Symbols.chip_extraction),
            ],
          ),
        ),
      ],
      color: AppColors.primaryS,
      offset: Offset(0, 45),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        margin: EdgeInsets.only(left: 15),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.lightdarkT,
              blurRadius: 6,
              offset: Offset(0, 1),
            ),
          ],
          image: DecorationImage(
            image: AssetImage("assets/img/user.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

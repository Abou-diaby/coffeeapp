import 'package:flutter/material.dart';

class ProfilIcon extends StatelessWidget {
  const ProfilIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/user_image.png", width: 42, height: 42,),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user_model.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    
    // Retorna home ou login baseado no estado de autenticação
    if (user == null) {
      return LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
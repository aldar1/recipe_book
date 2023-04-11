import 'package:flutter/material.dart';

import 'package:cookboox_1/theme/app_theme.dart';
import 'package:cookboox_1/ui/decoration_input.dart';
import 'package:cookboox_1/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        urlImage: 'assets/logo.png',
        child: Center(
          child: Transform.translate( 
            offset: const Offset(0, 30),
            child: const SingleChildScrollView(
              child: _CardLogin(),
            ),
          ),
        ),
      )
    );
  }
}

class _CardLogin extends StatelessWidget {
  const _CardLogin();

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: AppTheme.primaryColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 35),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              cursorColor: Colors.indigo,
              decoration: DecorationInput.decoration(labelText: 'Usuario', hintText: 'Ingrese su Usuario'),
            ),
            const SizedBox(height: 20,),
            const TextFormField1(),
            const SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, 'home'), 
                child: const Text('Iniciar Sesion')
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('No estas Registrado?'),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'signup'),
                  child: const Text('Registrarse',style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),)
                ),
              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}


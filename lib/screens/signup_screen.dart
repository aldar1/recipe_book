import 'package:flutter/material.dart';
import 'package:cookboox_1/theme/app_theme.dart';
import 'package:cookboox_1/ui/decoration_input.dart';
import 'package:cookboox_1/widgets/widgets.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        urlImage: 'assets/signup.png',
        child: Center(
          child: Transform.translate( 
            offset: const Offset(0, 60),
            child: SingleChildScrollView(
              child: Card(
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
                      const SizedBox(height: 20,),
                      const _GenderRadio(),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, 'home');
                          }, 
                          child: const Text('Registrarse')
                        ),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}

class _GenderRadio extends StatefulWidget {
  const _GenderRadio();

  @override
  State<_GenderRadio> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<_GenderRadio> {
  int gender = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Genero'),
        Radio(
          activeColor: AppTheme.primaryColor,
          value: 1,
          groupValue: gender,
          onChanged: (value){
            gender = value!;
            setState(() {});
          },
        ),
        const Text('Masculino'),
        Radio(
          activeColor: AppTheme.primaryColor,
          value: 0,
          groupValue: gender,
          onChanged: (value){
            gender = value!;
            setState(() {});
          },
        ),
        const Text('Femenino'),
      ],
    );
  }
}
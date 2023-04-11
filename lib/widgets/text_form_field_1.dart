import 'package:flutter/material.dart';

class TextFormField1 extends StatefulWidget{
  const TextFormField1({super.key});

  @override
  State<TextFormField1> createState() => _TextFormField1State();
}

class _TextFormField1State extends State<TextFormField1> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.indigo,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Ingrese su Contraseña',
        suffixIcon: IconButton(
          onPressed: (){
            obscureText = !obscureText;
            setState(() {});
          }, 
          icon: Icon(
            color:Colors.indigo,
            obscureText ? Icons.visibility : Icons.visibility_off
          )
        ),
      ),
    );
  }
}
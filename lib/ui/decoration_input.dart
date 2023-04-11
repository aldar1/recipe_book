import 'package:flutter/material.dart';


class DecorationInput{
  DecorationInput(labelText);


  static InputDecoration decoration({
    required String labelText,
    required String hintText,
  }){
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.indigo
        )
      ),
      
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.indigo,
          width: 2
        ),
      ),
      floatingLabelStyle: const TextStyle(color: Colors.indigo)
      
    );
  }
}
import 'package:flutter/material.dart';

import '../palatte.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
   this.inputType,
   this.inputAction,
   required this.obscureText,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final bool obscureText ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.grey[600]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),

        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon,
              color: Colors.white,size: 22,),
            ),
            hintStyle: kBodyText,
            
          ),
          style: kBodyText,
          keyboardType:
           inputType,
           textInputAction: inputAction,
           obscureText: obscureText,
        ),
      ),
    );
  }
}

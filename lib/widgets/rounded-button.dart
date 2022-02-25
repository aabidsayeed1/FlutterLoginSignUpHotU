import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16)
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(buttonName,
          style: kBodyText,),
        ),),
    );
  }
}
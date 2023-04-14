import 'package:flutter/material.dart';

class eMailField extends StatelessWidget {
  const eMailField({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail_outlined,),
        hintText: "e-Mail",
        border: OutlineInputBorder(),
      ),
      maxLength: 25,
      keyboardType: TextInputType.emailAddress,
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.key_outlined),
        hintText: "Password",
      ),
    maxLength: 10,
    
    );
  }
}
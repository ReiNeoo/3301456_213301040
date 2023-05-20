import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Widgets/eMailField.dart';


class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 1,),
          Expanded(child: Text("data"), flex: 3,),
          Spacer(flex: 1,),
          Expanded(child: PasswordField(), flex: 1,),
          Expanded(child: PasswordField(), flex: 1,),
          Expanded(child: Row(
            children: [
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Onayla"))
            ],
          ),)
        ],
      ),
    );
  }
}
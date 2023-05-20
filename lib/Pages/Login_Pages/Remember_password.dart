import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Widgets/eMailField.dart';

import '../../Product/Project_Paddings.dart';

class RememberPasswordView extends StatelessWidget {
  const RememberPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: LogInPagePaddings.LogInMainPadding,
        child: Column(
          children: [
            const Spacer(flex: 1,),
            const Expanded(
              flex: 3,
              child: Text("dfsadşfasdfasdf")),
            const Spacer(flex: 1,),
            const Expanded(child: eMailField(), flex: 1,),
            const Expanded(child: Text("data"), flex: 1,),
            const Expanded(child: SecurityQuestion(), flex: 1,),
            Expanded(child: Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("data"))
              ],
            ), flex: 1,),
            const Spacer(flex: 1,)
          ],
        ),),
    );
  }
}
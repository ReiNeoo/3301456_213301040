import 'package:flutter/material.dart';
import 'package:yiyoruz_project/Product/Project_Texts.dart';
import 'package:yiyoruz_project/Widgets/NavigationBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(PageAppBarTitle.ProfileTitle),),
      body: Center(child: Text("Profil bilgileri")),
      bottomNavigationBar: ProjectNavigationBar(),
    );
  }
}
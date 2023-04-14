import 'package:flutter/material.dart';
import '../Product/Color_Palette.dart';
import '../Product/Project_Texts.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({
    super.key,
    required this.ImageName,
    required this.Direction,
  });

  final String ImageName;
  final Widget Direction;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      color: ProjectColorPalette.ButtonCollor,
      child: ListTile(
        leading: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Direction));
          },
          child: Image.asset("assets/Avatar.png"),
          backgroundColor: ProjectColorPalette.CardColor,
        ),
        title: const Text(MainMenuText.GreetingCard),
      ),
    );
  }
}

class MenuSearchField extends StatelessWidget {
  const MenuSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          hintText: "Lezzetli Bir Şeyler Ara",
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.search_outlined)),
    );
  }
}

class NavigationTile extends StatelessWidget {
  const NavigationTile({
    super.key,
    required this.title, 
    required this.Direction,
  });

  final String title;
  final Widget Direction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.dining_outlined),
      title: Text(title),
      trailing: Icon(Icons.arrow_right_outlined),
      onTap: () {
        Navigator.push(
              context, MaterialPageRoute(builder: (context) => Direction));
      },
    );
  }
}

class ImageListTile extends StatelessWidget {
  const ImageListTile({
    super.key,
    required this.subtitle,
    required this.imageTitle,
    required this.Direction, 
    required this.width,
  });

  final String imageTitle;
  final String subtitle;
  final Widget Direction;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ListTile(
        title: Image(
          image: AssetImage(imageTitle),
        ),
        subtitle: Text(subtitle),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Direction));
        },
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
    required this.Image,
    required this.Text,
    required this.dire, 
    required this.width,
  });

  final String Image;
  final String Text;
  final Widget dire;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return ImageListTile(
          width: width,
          Direction: dire,
          imageTitle: Image,
          subtitle: Text,
        );
      },
    );
  }
}

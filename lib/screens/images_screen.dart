import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:practica3/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView( 
        children: [
          cardImage1(),
          image2(),   
        ],
      )
    );
  }
  Card cardImage1() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child:Column(
        children: [
          const SizedBox(
            height: 450.0,
            width: 900.0,
            child: Image(
              image: AssetImage('assets/img/homer.png')
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Homero',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    )
    );
  }
  SizedBox image2() {
    return SizedBox(
      height: 200,
      width: 200.0,
      child: Image.network(
        'https://i.ytimg.com/vi/jZqCkNEQ5HI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBLv4VuZtjR5Tjjl0KE3N1vsodJuw'),
    );   
  }
  Stack imageFade() {
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://i.ytimg.com/vi/jZqCkNEQ5HI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBLv4VuZtjR5Tjjl0KE3N1vsodJuw'),
        )
      ],
    );
  }
}
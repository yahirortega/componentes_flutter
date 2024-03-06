import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';



class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar( 
      title: const Text('imagenes'),
      ),
      body: ListView(
        children: [
         cardImage1(),
         ImageFade()
        ],
      )
      );
  }
  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
        margin: const EdgeInsets.all(16),
        elevation: 10,
    
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
          children: [ 
          const SizedBox(
            height: 350.0,
            width: 350.0,
            child: Image(
              image: AssetImage('assets/img/raro.jpeg')
            ),
          ),
          Container(
              padding:const EdgeInsets.all(10),
              child: Text(
                'jujutsukaisen',
                style: Apptheme.darkTheme.textTheme.headlineMedium,
              ),
            )
       ]
          ),
        ),
      );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 100.0,
      child: Image.network('https://fotografias-neox.atresmedia.com/clipping/cmsimages02/2022/05/12/D7B029F9-EF15-4416-83FA-84AF6949274C/jujutsu-kaisen-0_98.jpg?crop=1429,804,x248,y0&width=1900&height=1069&optimize=high&format=webply'),
    );

  }
  Stack ImageFade(){
    return Stack( 
      children: <Widget> [
        Center(
          child: CircularProgressIndicator(),
        ),
        Center(child: FadeInImage.memoryNetwork(
           placeholder: kTransparentImage,
           image: 'https://fotografias-neox.atresmedia.com/clipping/cmsimages02/2022/05/12/D7B029F9-EF15-4416-83FA-84AF6949274C/jujutsu-kaisen-0_98.jpg?crop=1429,804,x248,y0&width=1900&height=1069&optimize=high&format=webply'),),
      ],
    );
  }
}
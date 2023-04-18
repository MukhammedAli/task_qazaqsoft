import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:clippy_flutter/diagonal.dart';

class ClippedImage extends StatelessWidget {
 
final String url;

 ClippedImage({required this.url});

  @override
  Widget build(BuildContext context) {
    return Diagonal(
      clipHeight: 100, 
      child: 
      Container(decoration: BoxDecoration(
        
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(url))),
      child: SizedBox(
      
        width: double.infinity,
    child: Image.asset(url),),)
      
     );
  }
}
import 'package:flutter/material.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w/12, vertical: 24),
      child: Text("Made with ❤️ In India By Priyanshu Verma", textAlign: TextAlign.center,),
    );
  }
}

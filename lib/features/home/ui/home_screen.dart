import 'package:doctor_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 12),
          //color:Color.fromARGB(255, 149, 151, 163),
          child: const Column(
            children: [
            HomeTopBar(),
            
          ],),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:landa/HeaderWidget.dart';
import 'package:landa/RowWidget.dart';
import 'package:landa/RowWithCardWidget.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext, int index) {
            if (index == 0) {
              return HeaderWidget(index: index);
            } else if (index >= 1 && index <= 3) {
              return RowWithCardWidget(index: index);
            } else {
              return RowWidget(index: index);
            }
          },
        ),
      ),
    );
  }
}

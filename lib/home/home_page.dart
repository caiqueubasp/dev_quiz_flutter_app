import 'package:DevQuiz/home/widget/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widget/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widget/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(child: LevelButtonWidget(label: "Fácil")),
                  Flexible(child: LevelButtonWidget(label: "Médio")),
                  Flexible(child: LevelButtonWidget(label: "Difícil")),
                  Flexible(child: LevelButtonWidget(label: "Perito")),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [

                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                ],
              ))

            ],
          ),
        ));
  }
}

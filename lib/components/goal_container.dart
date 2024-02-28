import 'package:flutter/material.dart';

class GoalContainer extends StatefulWidget {
  const GoalContainer({super.key});

  @override
  State<GoalContainer> createState() => _GoalContainerState();
}

class _GoalContainerState extends State<GoalContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 235,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xffffd700),
            ),
            child: const Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Goals',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            fontSize: 14, decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'you don\'t have a goal now',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

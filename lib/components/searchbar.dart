import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(14),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: Color(0xffd6b4fc),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [Icon(Icons.search)],
          ),
        ),
      ],
    );
  }
}

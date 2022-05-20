import 'package:flutter/material.dart';

class GiovannaCard extends StatelessWidget {
  final String petNameText;
  final String petTypeText;

  GiovannaCard({required this.petNameText, required this.petTypeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.pink, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 60,
      child: Row(
        children: [
          Text(
            petNameText,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              petTypeText,
            ),
          ),
        ],
      ),
    );
  }
}
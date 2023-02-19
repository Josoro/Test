import 'package:flutter/material.dart';

class CategoryProducts extends StatelessWidget {
  List categories = ['All', 'Winter', 'Men', 'Woman', 'Baby'];

  CategoryProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: index == 1 ? Colors.black : null,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: index == 1 ? Colors.white : Colors.black),
                ),
              ),
            );
          }),
    );
  }
}

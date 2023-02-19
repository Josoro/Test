import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Find Your Clothes ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 25),
              Container(
                width: 400,
                height: 200,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dec 16 - Dec 31',
                            style: TextStyle(color: Colors.amber, fontSize: 24),
                          ),
                          const SizedBox(height: 6),
                          const Text('25 % OFF',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                          const SizedBox(height: 6),
                          const Text('Super Discount',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24)),
                          const SizedBox(height: 14),
                          Container(
                            width: 90,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Shop Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    //Image.asset('', height: 5, width: 5)
                  ],
                ),
              ),
            ],
          ),
        ),
        //Category

        CategoryProducts(),
        const SizedBox(
          height: 30,
        ),
        const Cardsswipper(),
        const Cardsswipper()
      ]),
    );
  }
}

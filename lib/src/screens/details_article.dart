import 'package:flutter/material.dart';

class DetailsArticle extends StatefulWidget {
  const DetailsArticle({
    super.key,
  });

  @override
  State<DetailsArticle> createState() => _DetailsArticleState();
}

class _DetailsArticleState extends State<DetailsArticle> {
  int selectedSize = 3;
  int selectedColors = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height / 1.9,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage('assets/no-image.jpg'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 22,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.favorite_border,
                            size: 22,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.anchor,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Jacket para caballero',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('₡145.9'),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '4.8',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  '(26k + review)',
                  style: TextStyle(color: Colors.black26),
                ),
              ],
            ),
          ),
          //sizes
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Size',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),

          Container(
            width: size.width * 0.9,
            height: size.height * 0.08,
            color: Colors.red,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, index) {
                return AnimatedContainer(
                  margin: const EdgeInsets.all(10.0),
                  duration: const Duration(milliseconds: 200),
                  width: size.width * 0.12,
                  decoration: const BoxDecoration(color: Colors.amber),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

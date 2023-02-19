import 'package:flutter/material.dart';

class Cardsswipper extends StatelessWidget {
  const Cardsswipper({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      //color: Colors.red,
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (_, int index) => const CardImage()))
        ],
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 270,
      //color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'Details'),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage('https://via.placeholder.com/300x400'),
                    width: 190,
                    height: 290,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.all(9.0),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text('Ropa para dama'),
                  SizedBox(height: 5),
                  Text(
                    '₡199',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

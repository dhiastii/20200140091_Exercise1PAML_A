import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import './register.dart';
import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({super.key, required this.name});

  final String? name;

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  String? searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            alignment: Alignment.topLeft,
            child: RichText(
                text: TextSpan(
              text: 'Hello, ',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ))),
        Container(width: 250),
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Image.asset(
            "assets/images/logoreg.png",
          ),
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            margin: EdgeInsets.only(top: 10, left: 20),
            alignment: Alignment.topLeft,
            child: RichText(
                text: TextSpan(
              text: 'Pokedex',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(236, 243, 192, 26)),
            ))),
      ]),
      Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Pokemon',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              ))
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 170,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Wrap(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          "assets/images/bulbasaur.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('#001',
                                    style: TextStyle(color: Colors.grey)),
                                Container(width: 10),
                                Text('Bulbasaur',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Grass',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ) // set height to 100 pixels
                                    ),
                                Container(width: 5),
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    alignment: Alignment.topLeft,
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Poison',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                const Text(
                                    "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
                height: 170,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          "assets/images/ivysaur.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('#002',
                                    style: TextStyle(color: Colors.grey)),
                                Container(width: 10),
                                Text('Ivysaur',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Grass',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ) // set height to 100 pixels
                                    ),
                                Container(width: 5),
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    alignment: Alignment.topLeft,
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Poison',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                const Text(
                                    "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
                height: 170,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          "assets/images/venusaur.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('#003',
                                    style: TextStyle(color: Colors.grey)),
                                Container(width: 10),
                                Text('Venusaur',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Grass',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ) // set height to 100 pixels
                                    ),
                                Container(width: 5),
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    alignment: Alignment.topLeft,
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Poison',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                const Text(
                                    "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight..",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
                height: 170,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 30),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          "assets/images/charmander.png",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text('#004',
                                    style: TextStyle(color: Colors.grey)),
                                Container(width: 10),
                                Text('Charmander',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('Fire',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ) // set height to 100 pixels
                                    ),
                                Container(width: 5),
                                Container(
                                    margin: EdgeInsets.only(left: 5),
                                    alignment: Alignment.topLeft,
                                    width: 50, // set width to 200 pixels
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Align(
                                      child: const Text('',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    )),
                              ],
                            ),
                            SizedBox.fromSize(
                              size: Size(5, 5),
                            ),
                            Row(
                              children: [
                                const Text(
                                    "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      )
    ]));
  }
}

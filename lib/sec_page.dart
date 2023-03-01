import 'package:flutter/material.dart';

class SecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'asset/images/m1.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.2),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      child: Text(
                        'Review Order',
                        style: TextStyle(fontSize: 20, color: Colors.brown),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Ice Latte Float',
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Espresso with chilled milk,\ntopped with ice cream.',
                          style: TextStyle(color: Colors.brown),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '',
                      ),
                      maxLength: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Size',
                      ),
                      maxLength: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Sugar',
                      ),
                      maxLength: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Additions',
                      ),
                      maxLength: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Total',
                      ),
                      maxLength: null,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.brown),
                    margin: EdgeInsets.only(top: 20, bottom: 5),
                    child: TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          '     Order Now     ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}

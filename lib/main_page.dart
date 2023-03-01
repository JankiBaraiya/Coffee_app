import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'first_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Icon(Icons.list),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '   Search Coffee as per your taste',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 15,
                        child: Icon(Icons.woman),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Expanded(
                      child: Text(
                        'Good Morning',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Expanded(
                      child: Text(
                        "It's Great Day for a Coffee...",
                        style: TextStyle(color: Colors.brown, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30,top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(0.8),
                        child: FutureBuilder<List<dynamic>>(
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.network(
                                              snapshot.data![index]['CoffeeIcon']
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Text(
                                              snapshot.data![index]['CoffeeName']
                                                  .toString(),
                                              style: TextStyle(color: Colors.brown),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                              );
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          },
                          future: getIconFromApi(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Text(
                        'Best Seller Coffee',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return FirstPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 250,
                        child: FutureBuilder<List<dynamic>>(
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(25),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          child: Image.network(
                                            snapshot.data![index]['CoffeeImage']
                                                .toString(),
                                          ),
                                        )),
                                  );
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data!.length,
                              );
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          },
                          future: getDetailFromApi(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 5),
                      child: Text(
                        'New Menu',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('asset/images/n1.jpeg')),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'asset/images/new.jpeg',
                            )),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'asset/images/n5.jpeg',
                            )),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'asset/images/n4.jpeg',
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            flex: 5,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.brown,
              ),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.location_on_outlined,
              color: Colors.brown,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.icecream_outlined,
              color: Colors.brown,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(
                Icons.face_unlock_rounded,
                color: Colors.brown,
              ),
              onPressed: () {},
            ),
          ),
        ]),
        color: Colors.orange[100],
      ),
    );
  }

  Future<List<dynamic>> getDetailFromApi() async {
    http.Response res = await http.get(
        Uri.parse('https://63f5ad04ab76703b15af5d90.mockapi.io/CoffeeDetail'));

    List<dynamic> jsonData = jsonDecode(res.body.toString());
    return jsonData;
  }

  Future<List<dynamic>> getIconFromApi() async {
    http.Response res1 = await http.get(
        Uri.parse('https://63f5ad04ab76703b15af5d90.mockapi.io/IconForCoffee'));

    List<dynamic> jsonData = jsonDecode(res1.body.toString());
    return jsonData;
  }
}

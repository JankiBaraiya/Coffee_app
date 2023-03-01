import 'package:flutter/material.dart';
import 'package:project_1/sec_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                child: Image.asset(
                  'asset/images/m1.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                              'Ice Latte Float',
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Text(
                              'Rp. 30,000/Cups',
                              style: TextStyle(color: Colors.brown),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.mark_as_unread_sharp,
                              color: Colors.brown),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            child: Text('20',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.brown,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            child: Text('30',
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            child: Icon(Icons.star, color: Colors.brown),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            child: Text(
                              '15',
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 30, top: 50),
                      child: Text(
                        'About Ice Latte Float',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        child: Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. '
                          ,style: TextStyle(
                              color: Colors.brown,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.brown),borderRadius: BorderRadius.circular(20),),
                      margin: EdgeInsets.only(top: 40,left: 30),
                        child: TextButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return SecPage();
                          },),);
                        },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('     Add to Cart     ',style: TextStyle(color: Colors.brown,fontSize: 20),),
                    ),)),
                  )
                ],
              ),
            ),
            flex: 2,
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
}

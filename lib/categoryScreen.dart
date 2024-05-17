import 'package:flutter/material.dart';
import 'package:outfit_design/categoryScreen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0.0,
        ),
        body: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(width: 10),
                        Text(
                          'Holy Rezk',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 10),
                        Text('holyrezk@mail.com'),
                      ],
                    ),
                    SizedBox(width: ScreenSize.width * 0.26,) ,
                    IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                  ],
                ),
               SizedBox(height: 10,) ,
                Card(
                  child: ExpansionTile(
                    title: Text("Categories " , style: TextStyle(color: Colors.black)),
                    children: [
                      ExpansionTile(
                        title: Text(
                          ' Men',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        children: [
                          ExpansionTile(
                            title: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                '  Crew neck',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          ExpansionTile(
                            title: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'V-neck',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          ExpansionTile(
                            title: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Long sleeve',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          ExpansionTile(
                            title: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Henley neck',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          ExpansionTile(
                            title: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                ' Short sleeve',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ExpansionTile(
                        title: MaterialButton(
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Woman ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

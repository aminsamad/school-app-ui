import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10, top: 8),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.sort,
                  color: Colors.black,
                ))
          ],
        ),

        //Body
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 12,
                  right: 12,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello,",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      "Roberto",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60),

              //Search Bar
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(555),
                      color: Colors.black),
                  child: TextField(
                    textDirection: TextDirection.ltr,
                    style: TextStyle(color: Colors.white),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey[300])),
                  )),
              SizedBox(height: 60),

              // My Items
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 60),
                child: GridView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0),
                  children: [
                    myContainer("Reading", Icons.book, Colors.deepOrange),
                    myContainer("Litrature", Icons.school, Colors.blueAccent),
                    myContainer("Mathmatics", Icons.square_foot, Colors.green),
                    myContainer("Writing", CupertinoIcons.pencil, Colors.purple)
                  ],
                ),
              ),

              Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_downward_rounded,
                        color: Colors.grey[700],
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }

  myContainer(String title, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.grey[100]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: color,
            size: 30,
          ),
          SizedBox(height: 10),
          Text(
            title,
          ),
        ],
      ),
    );
  }
}

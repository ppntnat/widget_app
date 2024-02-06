import 'package:flutter/material.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, this.title = ""}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text("Product Listing")),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          Text(
            "TueanPhai", textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage("https://cdn-icons-png.freepik.com/512/219/219986.png"),
            radius: 80,
            child: Image.network(
              "https://cdn-icons-png.freepik.com/512/219/219986.png",
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          ),
          Text(
            "Users",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
              onPressed: () {
                print("News");
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                backgroundColor: Colors.red[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.newspaper, color: Colors.white,),
                  Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                  Text(
                    "News",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
              onPressed: () {
                print("Set User Location");
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                backgroundColor: Color.fromARGB(255, 238, 67, 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.near_me, color: Colors.white,),
                  Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                  Text(
                    "Set User Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.1,
            child: TextButton(
            onPressed: () {
              print("Suggest AvoidSuggest Avoid");
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              backgroundColor: Color.fromARGB(255, 9, 109, 6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.help_center, color: Colors.white,),
                Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                Text(
                  "Suggest Avoid",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("Home");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print("Emergency Call");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call),
                    Padding(padding: EdgeInsets.fromLTRB(10, 30.0, 0, 30.0),),
                    Text(
                      "Emergency Call",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class RatingBox extends StatefulWidget {
//   @override
//   _RatingBoxState createState() => _RatingBoxState();
// }

// class _RatingBoxState extends State<RatingBox> {
//   int _rating = 0;
//   void _setRatingAsOne() {
//     setState(() {
//       _rating = 1;
//     });
//   }

//   void _setRatingAsTwo() {
//     setState(() {
//       _rating = 2;
//     });
//   }

//   void _setRatingAsThree() {
//     setState(() {
//       _rating = 3;
//     });
//   }

//   Widget build(BuildContext context) {
//     double _size = 20;
//     print(_rating);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.all(0),
//           child: IconButton(
//             icon: (_rating >= 1
//                 ? Icon(
//                     Icons.star,
//                     size: _size,
//                   )
//                 : Icon(
//                     Icons.star_border,
//                     size: _size,
//                   )),
//             color: Colors.red[500],
//             onPressed: _setRatingAsOne,
//             iconSize: _size,
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(0),
//           child: IconButton(
//             icon: (_rating >= 2
//                 ? Icon(
//                     Icons.star,
//                     size: _size,
//                   )
//                 : Icon(
//                     Icons.star_border,
//                     size: _size,
//                   )),
//             color: Colors.red[500],
//             onPressed: _setRatingAsTwo,
//             iconSize: _size,
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(0),
//           child: IconButton(
//             icon: (_rating >= 3
//                 ? Icon(
//                     Icons.star,
//                     size: _size,
//                   )
//                 : Icon(
//                     Icons.star_border,
//                     size: _size,
//                   )),
//             color: Colors.red[500],
//             onPressed: _setRatingAsThree,
//             iconSize: _size,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ProductBox extends StatelessWidget {
//   ProductBox(
//       {Key? key,
//       this.name = "",
//       this.description = "",
//       this.price = 0,
//       this.image = ""})
//       : super(key: key);

//   final String name;
//   final String description;
//   final int price;
//   final String image;

//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(2),
//         height: 140,
//         child: Card(
//             child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//               // Image.asset("assets/appimages/" + image),
//               Expanded(
//                   child: Container(
//                       padding: EdgeInsets.all(5),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Text(this.name,
//                               style: TextStyle(fontWeight: FontWeight.bold)),
//                           Text(this.description),
//                           Text("Price: " + this.price.toString()),
//                           RatingBox(),
//                         ],
//                       )))
//             ])));
//   }
// }

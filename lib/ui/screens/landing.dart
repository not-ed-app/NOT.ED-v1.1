import 'package:flutter/material.dart';
import 'reader.dart';
import 'library.dart';
class Landing extends StatelessWidget {
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {

    Container SubjectHorizontalScroll(String id){
      return Container(
        margin: const EdgeInsets.only(left: 10.0),
        width: 200.0,
        child: Stack(children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Library())),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(image: AssetImage("assets/orangeasthetic.jpg"),
                    height: 200,
                  ))),
          Center(
              child: InkWell(
                  onTap: () => print(id + " Subject Selected."),
                  child: Text(
                    id.toUpperCase(),
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                  ))),
        ]),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Semester 4',style: TextStyle(fontSize: 25,),)),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 40.0),
            height: 190.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SubjectHorizontalScroll("MA202"),
                SubjectHorizontalScroll("CS202"),
                SubjectHorizontalScroll("CS204"),
                SubjectHorizontalScroll("CS206"),
                SubjectHorizontalScroll("CS208"),
                SubjectHorizontalScroll("HS200"),
              ],
            ),
          ),

          Container(
              margin: const EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              child: Text('Continue',style: TextStyle(fontSize: 25,),)),

          //1st Home PDF
          Container(
            margin: const EdgeInsets.only(top: 40.0, left: 30.0),
            child: Stack(
              children: <Widget>[
                Container(
                  //color: Colors.yellow,
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Reader())),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(
                            image: AssetImage("assets/homepdf1.jpg"),
                            height: 150.0,
                          ),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 60.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("CS204", style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent, fontWeight: FontWeight.w300),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Module 5", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Just now", style: TextStyle(fontSize: 18.0, color: Colors.orange[300], fontWeight: FontWeight.w300),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //2nd Home PDF
          Container(
            margin: const EdgeInsets.only(top: 30.0, left: 30.0),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Reader())),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(
                            image: AssetImage("assets/homepdf2.jpg"),
                            height: 150.0,
                          ),
                        ),
                      ),
                      Container(
                        //alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 60.0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("MA202", style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent, fontWeight: FontWeight.w300),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Module 2", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Yesterday", style: TextStyle(fontSize: 18.0, color: Colors.orange[300], fontWeight: FontWeight.w300),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

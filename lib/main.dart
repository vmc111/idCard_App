import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}
// Create a StatelessWidget with stless shortcur
// After completing entire page
// Conver to statefull by ctrl on StatelessWidget in below line

class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {

  int level=0;
  String name = 'VAMSHI';
  String Company = 'XYZ IT Solutions Pvt. Limited';
  String Position = 'Junior';
  String eMail_id = 'abc@gmail.com';

  /*
  Pending WorK :
  1) Creating multiple pages to upload a Pic and Enter Details
  2) Add Functionality to Buttons (Currectly to Next).
  3) To Add Images from local folders.
  List<FileImage> imageStorage = <FileImage>[];
  List<AssetImage> imagepicker =  <AssetImage>[];
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Id Card'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            onPressed: (){},
            backgroundColor: Colors.black54,
            label: Text(
              'BACK',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Divider(color: Colors.red,height: 30.0,),
          FloatingActionButton.extended(
            onPressed:(){},
            label: Icon(
              Icons.add_to_home_screen,
              // Icons.home_rounded,
              size: 45.0,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
          ),
          FloatingActionButton.extended(
            onPressed: (){
              if (level>=10){
                setState(() {
                  level = 0;
                });
              }else{
                setState(() {
                  level+=1;
                });
              }
            },
            label: Text(
                'NEXT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.black54,
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Center(
              child: CircleAvatar(
                // backgroundImage: NetworkImage('https://images.app.goo.gl/48jCYp1Dxaox3yYt8'),
                backgroundImage: AssetImage('assets/thumb.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$name',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'COMPANY',
                    style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
            ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$Company',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0 ),
            Text(
              'CURRENT SALARY LPA',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           SizedBox(height: 30.0,),
            Row (
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 5.0),
                Text(
                  'edhookati@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}



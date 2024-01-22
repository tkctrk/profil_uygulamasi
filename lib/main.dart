import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: Profil(),));

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int uyelikLevel=3;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
              onPressed: (){
                  setState(() {
                    uyelikLevel++;
                  });
              },
            icon: Icon(Icons.keyboard_arrow_up),
          ),
        ],

      ),
      backgroundColor: Color(0xFF5758BB),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('Images/Kn9ZE7Qv_400x400.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              color: Colors.orange[500],
              height: 90,
            ),
            Text(
                'İSİM',
              style: TextStyle(color: Colors.grey[200],letterSpacing: 1.0),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Ali Osman',
              style: TextStyle(
                color: Colors.orange[700],
                letterSpacing: 1.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(height: 30,),
            Text(
              'Soyİsim',
              style: TextStyle(color: Colors.grey[200],letterSpacing: 1.0),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Hazır',
              style: TextStyle(
                  color: Colors.orange[700],
                  letterSpacing: 1.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
    SizedBox(height: 30,),
    Text(
    'Üyelik Seviyesi',
    style: TextStyle(color: Colors.grey[200],letterSpacing: 1.0),
    ),
    SizedBox(height: 10.0,),
    Text(
    '$uyelikLevel',
    style: TextStyle(
    color: Colors.orange[700],
    letterSpacing: 1.0,
    fontSize: 25.0,
    fontWeight: FontWeight.bold
    ),
    ),
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(width: 15.0,),
                Text(
                  'tarikocaturk1@outlook.com',
                  style: TextStyle(
                      color: Colors.limeAccent,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}

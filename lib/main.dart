
import "package:flutter/material.dart";

void main(){
  runApp(Portfolio());
}
class Portfolio extends StatelessWidget{
  double circleSize = 70;

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PORTFOLIO', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.all(20),
                height: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue[800],
                      Colors.black45,
                    ]
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(2, 2),
                      color: Colors.grey[800]
                    )
                  ]
                ),
//child       
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(
                      height: 100,
                      width: 100,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/dp.jpg'), fit: BoxFit.cover, alignment: Alignment.center),
                        borderRadius: BorderRadius.circular(360),
                        border: Border.all(width: 5, color: Colors.white, style: BorderStyle.solid)
                      ),
                      //child: Image.asset('assets/images/dp.jpg', fit: BoxFit.cover, alignment: Alignment.topCenter,)
                    ),
                   SizedBox(height: 6),
                   Text('Festus Maxwell', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white)),
                   SizedBox(height: 4),
                   infoMaker(info: 'Nigeria', icon: Icons.location_on),
                   SizedBox(height: 2),
                   infoMaker(info: 'Festusmaxwell7@gmail.com', icon: Icons.email),
                   SizedBox(height: 2),
                   infoMaker(info: '+2349051348552', icon: Icons.phone),
                   SizedBox(height: 2),
                   
                  ],
                )
              ),
              Center(child: Text("Skills", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      skillMaker(size: circleSize, skill: 'Javascript', image: 'javascript.png', color: Colors.yellow[500]),
                      skillMaker(size: circleSize, skill: 'NodeJs', image: 'nodejs.png', color: Colors.green[500]),
                      skillMaker(size: circleSize, skill: 'Firebase', image: 'firebase.png', color: Colors.amber[500]),
                    ]
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      skillMaker(size: circleSize, skill: 'PHP', image: 'php.png', color: Colors.purple[700]),
                      skillMaker(size: circleSize, skill: 'SQL', image: 'sql.png', color: Colors.blue[800]),
                    ]
                  )
                ],
              ),
              Container(
                height: 150,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      offset: Offset(2, 3),
                      color: Colors.grey[400],
                      spreadRadius: 2
                    )
                  ],
                   gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue[800],
                      Colors.black45,
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("About me", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white54))),
                    SizedBox(height: 5),
                    Text('I am enthusiastic, passionate, and self taught developer with a dream of contributing to the world through tech. I am an SSCE holder. And i love music, coding,  and building of reusable components and solutions for the web.', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

 Widget skillMaker({String image, String skill, double size, Color color}){
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Container(
            height: size,
            width: size,
            padding: EdgeInsets.all(3),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(2, 4),
                  color: color.withOpacity(.5)
                )
              ]
            ),
              child: Image.asset('assets/images/$image', fit: BoxFit.contain, alignment: Alignment.center,)
       ),
       SizedBox(height: 5),
       Text(skill)
     ],
   );
 }

 Widget infoMaker({String info, dynamic icon}){
  return Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                   Icon(icon, color: Colors.white70, size: 20),
                   SizedBox(width: 5),
                   Text(info, style: TextStyle(fontSize: 15, color: Colors.white54)),
                 ],);
 }
}
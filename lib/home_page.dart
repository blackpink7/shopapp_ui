import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _listItem = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),

        title: Center(
         child:Text("Apple Products"),
        ),
        backgroundColor: Colors.deepOrangeAccent,
          actions: [
           Padding(
                padding:EdgeInsets.all(10),
         child: Container(
           width: 36,
           height: 36,
           decoration: BoxDecoration(
             color: Colors.amber.shade600,
             borderRadius: BorderRadius.circular(10)
           ),
           child: Center(
             child: Text("7"),
           ),
         ),
           ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
         child: Column(
           children: [
             //image1
             Container(
               width: double.infinity,
               height: 200,
               //color: Colors.black,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 image: DecorationImage(
                   image: AssetImage("assets/images/image_3.png"),
                   fit: BoxFit.cover,
                 )
               ),
               //opacity image1
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                   gradient: LinearGradient(
                     begin: Alignment.bottomRight,colors: [
                       Colors.black.withOpacity(.3),
                     Colors.black.withOpacity(.01),
                   ]
                   )
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Text("LifeStyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                     SizedBox(height: 20,),
                     Container(
                       width: double.infinity,
                       margin: EdgeInsets.symmetric(horizontal: 50),
                       child: TextButton(
                           onPressed: (){},
                           style: TextButton.styleFrom(
                             primary: Colors.black,
                             backgroundColor: Colors.white,
                           ),
                           child: Text("Shop now")
                       ),
                     ),
                     SizedBox(height: 20,),
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: 20,
             ),
             Expanded(
                 child: ListView(
                   children:
                   _listItem.map((item) => cellOfList(item)).toList(),
                 )
             ),
           ],
         ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
                height: 315,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 35,
            )
          ],
        ),
      ),

    );
  }
}


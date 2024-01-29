import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class roottwoApp extends StatelessWidget {
  const roottwoApp({super.key});

  final String imageAssetName = "assets/MEST_HEADSHOT.JPG";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book), label: 'More'),
          // BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home')
        ],
      ),
      appBar: AppBar(
        title: const Text(
          "PROFILE",
        ),
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
        Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(imageAssetName),
              ),

              const SizedBox(height: 40,),

              const Text('Abena Nunya',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
              const Text('Abena Nunya',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
              const Text('Abena Nunya',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
              const Text('Abena Nunya',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold ),),
              
              const Text('Product Designer', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
            ],
          ),

        const SizedBox(height: 25,),

        const Row(
          
          children: [

            Text("Complete your Profile",
            
            style: TextStyle(

              fontWeight: FontWeight.bold,
            ),
            ),
            Text("(1/5)")

          ],
        ),

        const SizedBox(height: 10,),

         Row(

          children: List.generate(5, (index) {


            return Expanded(
              child: Container(
                width: 10,
                height: 7,
                margin:  EdgeInsets.only(right: index == 4 ? 0:6),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                ),
              
              ),
            );
          }),


         ),
        

        const SizedBox(height: 10,),

        SizedBox(

          height: 180,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){

            return  SizedBox(
              width: 160,
              child:  Card(
                shadowColor: Colors.black12,

                child: Padding(
                  
                  padding: EdgeInsets.all(15.0),
                  
                  child: Column(
                  
                    children: [
                      Icon(Icons.person,size: 30,),
                  
                      SizedBox(height:10),
                  
                      const Text("Upload your Resume", 
                      textAlign: TextAlign.center,),
                      ElevatedButton(onPressed: (){} ,style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),child: const Text("Upload"),)
                      ],
                  ),
                ),
              )
            );
          }, separatorBuilder: (context, index) => 
          const Padding(padding: EdgeInsets.only(right: 5)),
           itemCount: 5,
        )

      )],
      ),
    );
  }
}

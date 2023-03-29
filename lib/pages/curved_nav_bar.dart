import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_practice/pages/gesture_detector.dart';
import 'package:flutter_widget_practice/pages/sliver_app_bar.dart';
import 'package:flutter_widget_practice/pages/tab_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade100,
        // leading: IconButton(icon: const Icon(Icons.menu),
        //   onPressed: () {
        //   //Do something
        //   },
        // ),
        title: const Center(child: Text('A P P B A R')),
        actions: [
          IconButton(icon: const Icon(Icons.share),
            onPressed: () {
              //Do something
            },
          ),
          // IconButton(icon: const Icon(Icons.person),
          //   onPressed: () {
          //     //Do something
          //   },
          // ),

        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple.shade100,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(child: Text('L O G O', style: TextStyle(fontSize: 35),),),
                // child: Icon(Icons.home, size: 35,)
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
                title: const Text("Sliver App Bar", style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SliverAppBarr()));
                },
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
                title: const Text("Tab Bar", style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TabBarr()));
                },
              ),
              ListTile(
                leading: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
                title: const Text("Gesture Detector", style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GestureDetectorr()));
                },
              ),
            ],
          ),
        ),
      ),
      // endDrawer: Drawer(),
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index){
          //print(index);
        },
        color: Colors.deepPurple.shade100,
        backgroundColor: Colors.deepPurple,
        items:
        const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.settings, color: Colors.white)
        ],

      ),

    );
  }
}

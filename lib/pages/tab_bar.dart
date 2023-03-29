import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('T A B  B A R'),
        ),
        body: Column(
          children: [
            const TabBar(
                tabs:
                [
                  Tab(icon: Icon(Icons.home, color: Colors.deepPurple,),),
                  Tab(icon: Icon(Icons.person, color: Colors.deepPurple,),),
                  Tab(icon: Icon(Icons.settings, color: Colors.deepPurple,),)
                ]),
            Expanded(
              child: TabBarView(children: [
                //first tab
                Container(
                  color: Colors.green,
                  child: const Center(child: Text('Tab 1')),
                ),
                //second tab
                Container(
                  color: Colors.brown,
                  child: const Center(child: Text('Tab 2')),
                ),
                //third tab
                Container(
                  color: Colors.yellow,
                  child: const Center(child: Text('Tab 3')),),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

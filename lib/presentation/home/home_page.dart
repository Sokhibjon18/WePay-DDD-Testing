import 'package:flutter/material.dart';
import 'reusables.dart';

import 'adding_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<Data> information = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Houses'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () async {
              Data data = await Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Adding()));
              setState(() => information.add(data));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: information.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: const ValueKey('Dismiss'),
                    background: Container(
                      color: Colors.red,
                      child: const Icon(Icons.delete, color: Colors.white,),
                    ),
                    child: taskContainer(information[index], context),
                    onDismissed: (direction){
                      setState(() {
                        information.removeAt(index);
                      });
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Data {
  late String location;
  late String people;
  late String price;

  Data(
      this.location,
      this.people,
      this.price,
      );
}

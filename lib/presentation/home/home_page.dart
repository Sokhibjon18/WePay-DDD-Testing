import 'package:flutter/material.dart';
import 'reusables.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Houses'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              bottomsheet(context, controller);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

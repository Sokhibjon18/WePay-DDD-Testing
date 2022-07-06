import 'package:flutter/material.dart';
import 'package:we_pay/presentation/home/reusables.dart';

import 'consts.dart';
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  List colors = [
    const Color(0xff00D015),
    const Color(0xffFF5050),
    const Color(0xffFCFF59),
    const Color(0xffDF5FFF),
    const Color(0xffFFC149),
    const Color(0xffFFFFFF),
  ];
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          reusableTextField('Email', _controller),
          reusableTextField('Username', _controller),
          colorOnChart(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: colors.length,
              itemBuilder: (_, index) => profileColor(colors[index]),
            ),
          ),
        ],
      ),
    );
  }

  Widget profileColor(Color color) => CircleAvatar(
    radius: 20,
    backgroundColor: color,
  );
}
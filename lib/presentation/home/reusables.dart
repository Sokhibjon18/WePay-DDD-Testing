import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container reusableTextField(String text, TextEditingController controller) {
  return Container(
    margin: const EdgeInsets.only(left: 32, right: 32, top: 20),
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          color: Colors.grey,
        ),
      ],
    ),
    child: TextField(
      controller: controller,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.blue.withOpacity(0.5)),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: const TextStyle(color: Colors.grey),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    ),
  );
}

// Container taskContainer(Data data, BuildContext context) {
//   return Container(
//     margin: const EdgeInsets.all(15),
//     decoration: const BoxDecoration(
//       color: Colors.white,
//       boxShadow: [
//         BoxShadow(
//           spreadRadius: 1,
//           color: Colors.grey,
//         ),
//       ],
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width*0.54,
//           margin: const EdgeInsets.only(left: 10, bottom: 6, top: 7),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 data.location,
//                 style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                 overflow: TextOverflow.ellipsis,
//               ),
//               Text(
//                 'Xonadoshlar: ' + data.people,
//                 style: const TextStyle(fontSize: 12, color: Colors.grey),
//                 maxLines: 2,
//                 overflow: TextOverflow.fade,
//                 //softWrap: true,
//               ),
//             ],
//           ),
//         ),
//         Container(
//           width: 113,
//           height: 26,
//           color: Colors.green,
//           child: Center(child: Text('Yan: '+data.price+" so'm", style: const TextStyle(color: Colors.white),)),
//         ),
//       ],
//     ),
//   );
// }

void bottomsheet(context, TextEditingController controller) {
  List informs = ['Region', 'District', 'Street'];
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (_) => Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.07,
            child: const Center(
              child: Text(
                'Adding apartment',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: informs.length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(left: 32, right: 32, top: 24),
              child: reusableTextField(informs[index], controller),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.384,
                margin: const EdgeInsets.only(left: 32, right: 24, top: 24),
                child: reusableTextField('House number', controller),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.39,
                margin: const EdgeInsets.only(right: 32, top: 24),
                child: reusableTextField('Flat number', controller),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            margin: const EdgeInsets.only(left: 32, right: 32, top: 25),
            color: Colors.blue,
            child: const Center(child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 16),)),
          ),
        ],
      ),
    ),
  );
}
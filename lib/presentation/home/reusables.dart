import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

Container reusableTextField(
    String text, IconData icon, TextEditingController controller) {
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
        prefixIcon: Icon(icon, color: Colors.grey),
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
      onChanged: (String title) {
        controller.text = title;
        controller.selection = TextSelection.collapsed(offset: title.length);
      },
    ),
  );
}

Container taskContainer(Data data, BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          color: Colors.grey,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.54,
          margin: const EdgeInsets.only(left: 10, bottom: 6, top: 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.location,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Xonadoshlar: ' + data.people,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                maxLines: 2,
                overflow: TextOverflow.fade,
                //softWrap: true,
              ),
            ],
          ),
        ),
        Container(
          width: 113,
          height: 26,
          color: Colors.green,
          child: Center(child: Text('Yan: '+data.price+" so'm", style: const TextStyle(color: Colors.white),)),
        ),
      ],
    ),
  );
}
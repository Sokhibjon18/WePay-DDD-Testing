import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container reusableTextField(String text) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          color: Colors.grey,
        ),
      ],
    ),
    child: TextField(
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

void bottomsheet(context) {
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
            height: 56,
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
              child: reusableTextField(informs[index]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 48,
                margin: const EdgeInsets.only(left: 32, right: 24, top: 24),
                child: reusableTextField('House number'),
              ),
              Container(
                width: 48,
                margin: const EdgeInsets.only(right: 32, top: 24),
                child: reusableTextField('Flat number'),
              ),
            ],
          ),
          Container(
            height: 45,
            margin: const EdgeInsets.only(left: 32, right: 32, top: 25),
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

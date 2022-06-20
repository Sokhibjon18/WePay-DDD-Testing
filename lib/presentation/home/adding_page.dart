import 'package:flutter/material.dart';
import 'reusables.dart';
import 'home_page.dart';
class Adding extends StatefulWidget {
  const Adding({Key? key, this.data}) : super(key: key);
  final Data? data;
  @override
  _AddingState createState() => _AddingState();
}

class _AddingState extends State<Adding> {

  late TextEditingController _locationController ;
  late TextEditingController _personController ;
  late TextEditingController _priceController;

  void saving(){
    Data a = Data(_locationController.text, _personController.text, _priceController.text);
    Navigator.pop(context,a);
  }
  @override
  void initState() {
    _locationController = TextEditingController();
    _personController = TextEditingController();
    _priceController = TextEditingController();
    // _locationController.text = widget.data?.location??'';
    // _personController.text = widget.data?.people??'';
    // _priceController.text = widget.data?.price??'';
    super.initState();
  }

  @override
  void dispose() {
    _locationController.dispose();
    _personController.dispose();
    _priceController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            reusableTextField('Location', Icons.location_on, _locationController),
            reusableTextField('People', Icons.people, _personController),
            reusableTextField('Total price', Icons.price_change, _priceController),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: const EdgeInsets.fromLTRB(32, 10, 32, 20),
              child: ElevatedButton(
                onPressed: () {
                  saving();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blue;
                      }
                      return const Color(0xFF5580EE);
                    },
                  ),
                ),
                child: const Text(
                  'Add',
                  style:TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
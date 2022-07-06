import 'package:flutter/material.dart';
import '../consts.dart';
import '../customs/pie_chart_painter.dart';
import '../model/card_model.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<CardModel> cardsList = [
    CardModel(
        customerName: 'jushkin',
        name: '2131',
        amount: 231,
        color: Colors.amber),
    CardModel(
        customerName: 'jushkin', name: '3342', amount: 187, color: Colors.red),
    CardModel(
        customerName: 'jushkin',
        name: '3342',
        amount: 400,
        color: Colors.green),
    CardModel(
        customerName: 'jushkin', name: '3211', amount: 700, color: Colors.blue),
  ];

  List<Details> details = [];


  TextEditingController _productController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _noteController = TextEditingController();

  double strokeWidth = 40;
  late final double chartSize = MediaQuery.of(context).size.width * 0.7;
  late final double spaceBetweenCards = MediaQuery.of(context).size.width * 0.075;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: [
            backgroundImage(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    toolBar(),
                    const SizedBox(height: 16),
                    Container(
                      alignment: Alignment.topCenter,
                      child: CustomPaint(
                        size: Size(chartSize, chartSize),
                        painter: PieChartPainter(cardsList, chartWidth: strokeWidth),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 76, left: 8, right: 8, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Center(
                            child: Text(
                              'Shopping',
                              style:  TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() async{
                              await showModalBottomSheet(
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
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
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
                                              'Shopping',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        productName1(_productController),
                                        price(_priceController),
                                        note(_noteController),
                                        dateAndCount(),
                                        GestureDetector(
                                          onTap: () {
                                            Details detail = Details(_productController.text, _priceController.text, _noteController.text);
                                            setState(() {
                                              details.add(detail);
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: addButton(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                            child: const Icon(Icons.add_rounded),
                          )],
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: details.length,
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      itemBuilder: (_, index) => listItems(index, details),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage() => Container(
    height: MediaQuery.of(context).size.height / 2,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      color: dashboardHeader,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(64),
        bottomRight: Radius.circular(64),
      ),
    ),
  );

  Widget toolBar() => Row(
    children: [
      const Icon(Icons.arrow_back_ios, color: Colors.white),
      const SizedBox(width: 26),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Yanvar, 2022',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Text(
            'Yashnabot,Tuzel,22b,112',
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
      const SizedBox(width: 131),
      Stack(
        children: const [
          Icon(
            Icons.calendar_month,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    ],
  );

  Widget mainCards(String title, String desc, String assetPath) => Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 4,
        )
      ],
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Image(
          image: AssetImage(assetPath),
          width: 90,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          desc,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(
            fontSize: 10,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ),
  );

  Widget listItems(int index, List<Details> a) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200]!.withOpacity(0.1),
          blurRadius: 8,
        )
      ],
    ),
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[200],
            child: Icon(
              Icons.add_shopping_cart,
              size: 32,
              color: cardsList[index].color,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    a[index].productName,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '${a[index].price} sums',
                    style: const TextStyle(
                        fontSize: 18,
                        color: dashboardSecondary,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                cardsList[index].customerName,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  Widget productName1(TextEditingController controller) => Container(
    margin: const EdgeInsets.only(left: 32, right: 32, top: 24),
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
      decoration: const InputDecoration(
        labelText: 'Product name',
        labelStyle: TextStyle(color: Colors.grey),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    ),
  );

  Widget price(TextEditingController controller) => Container(
    margin: const EdgeInsets.only(left: 32, right: 32, top: 24),
    height: 48,
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
      decoration: const InputDecoration(
        labelText: 'Price',
        labelStyle: TextStyle(color: Colors.grey),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    ),
  );

  Widget note(TextEditingController controller) => Container(
    margin: const EdgeInsets.only(left: 32, right: 32, top: 24),
    height: 90,
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
      maxLines: 3,
      decoration: const InputDecoration(
        labelText: 'Note',
        labelStyle: TextStyle(color: Colors.grey),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    ),
  );

  Widget dateAndCount() => Container(
    margin: const EdgeInsets.only(left: 32, right: 32, top: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 48,
          width: 158,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.grey,
              ),
            ],
          ),
          child: Center(
            child: Center(
              child: Text(
                'Date: ${DateTime.now()}',
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Container(
          width: 144,
          height: 48,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.grey,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Count: 1',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class Details {
  late String productName;
  late String price;
  late String note;

  Details(
      this.productName,
      this.price,
      this.note,
      );
}

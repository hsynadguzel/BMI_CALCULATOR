import 'package:bmi_calculator/screens/info_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  String? result;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
              icon: Icon(
                Icons.help,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  radioButton('Erkek', Colors.blue, 0),
                  radioButton('Kadın', Colors.pink, 1),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Boyunuz CM: ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: heightController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Boyunuzu Giriniz',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Kilonuz KG: ',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: weightController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Kilonuzu Giriniz',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    bmiCalculate(
                      double.parse(heightController.value.text),
                      double.parse(weightController.value.text),
                    );
                  },
                  child: Text(
                    'Hesapla',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'Vücut Kitle İndeksiniz: ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  '$result',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'Geliştirici: Hüseyin ADIGÜZEL',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void bmiCalculate(double height, double weight) {
    double finalresult = weight / (height * height / 10000);
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi;
    });
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        height: 80.0,
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        child: FlatButton(
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          color: currentindex == index ? color : Colors.grey[200],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }
}

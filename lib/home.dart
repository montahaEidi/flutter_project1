import 'package:flutter/material.dart';

class SpaceWeightPage extends StatefulWidget {
  @override
  SpaceWeightPageState createState() => SpaceWeightPageState();
}

class SpaceWeightPageState extends State<SpaceWeightPage> {
  TextEditingController weightController = TextEditingController();
  String resultText = "";

  void calculateWeight() {
    double weight = double.tryParse(weightController.text) ?? 0.0;

    if (weight <= 0) {
      setState(() {
        resultText = "Please enter a valid weight.";
      });
      return;
    }

    double mercuryWeight = weight * 0.38;
    double venusWeight = weight * 0.91;
    double earthWeight = weight;
    double marsWeight = weight * 0.38;
    double jupiterWeight = weight * 2.53;
    double saturnWeight = weight * 1.07;

    setState(() {
      resultText = """
     Mercury: ${mercuryWeight.toStringAsFixed(2)} kg
     Venus: ${venusWeight.toStringAsFixed(2)} kg
     Earth: ${earthWeight.toStringAsFixed(2)} kg
     Mars: ${marsWeight.toStringAsFixed(2)} kg
     Jupiter: ${jupiterWeight.toStringAsFixed(2)} kg
     Saturn:"${saturnWeight.toStringAsFixed(2)} kg
      """;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Space Weight Calculator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0A5EB0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your weight in kg:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Weight (kg)',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateWeight,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text(
                'Calculate',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                resultText,
                style: TextStyle(fontSize: 18, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





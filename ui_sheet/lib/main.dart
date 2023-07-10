import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  final List<List<String>> data = [
    ['John', '25', 'New York','a','red','500'],
    ['Alice', '30', 'London','a','red','500'],
    ['Bob', '35', 'Paris','a','red','500'],
    ['Eve', '28', 'Tokyo','a','red','500'],
    ['Mi', '4', 'Bein','a','red','580'],
    //Add more rows if needed 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Sheet'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Location')),
              DataColumn(label: Text('Payee')),
              DataColumn(label: Text('Color')),
              DataColumn(label: Text('Credit')),
              //Add more columns if needed 
            ],
            rows: List<DataRow>.generate(
              data.length,
              (int index) => DataRow.byIndex(
                index: index,
                cells: List<DataCell>.generate(
                  data[index].length,
                  (int cellIndex) => DataCell(
                    Text(data[index][cellIndex]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyDataTable(),
  ));
}

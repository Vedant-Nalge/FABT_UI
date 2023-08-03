import 'package:flutter/material.dart';

class MyDataTable extends StatefulWidget {
  @override
  _MyDataTableState createState() => _MyDataTableState();
}

class _MyDataTableState extends State<MyDataTable> {
  final List<List<String>> data = [
    ['John', '25', 'New York','a','red','500'],
    ['Alice', '30', 'London','a','red','500'],
    ['Bob', '35', 'Paris','a','red','500'],
    ['Eve', '28', 'Tokyo','a','red','500'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Mi', '4', 'Bein','a','red','580'],
    ['Sam', '4', 'New York','a','blue','600'],
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
                  (int cellIndex) {
                    return DataCell(
                      TextFormField(
                        initialValue: data[index][cellIndex],
                        onChanged: (newValue) {
                          setState(() {
                            data[index][cellIndex] = newValue;
                          });
                        },
                      ),
                    );
                  },
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

import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({super.key});

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
          header: const Text('Employers'),
          rowsPerPage: rowsPerPage,
          onRowsPerPageChanged: (int? newRowCount) {
            if (newRowCount != null) {
              setState(() {
                rowsPerPage = newRowCount;
              });
            }
          },
          columns: const [
            DataColumn(label: Text('No.')),
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Phone')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Address')),
          ],
          source: DataSource()),
    );
  }
}

class Person {
  final String name;
  final String phone;
  final String email;
  final String address;
  bool selected = false;
  Person({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });
}

class DataSource extends DataTableSource {
  int selectedCount = 0;
  List<Person> personLists = [
    Person(
        name: 'John Doe',
        phone: '555-0100',
        email: 'john.doe@example.com',
        address: '101 Main St, Anytown, USA'),
    Person(
        name: 'Jane Smith',
        phone: '555-0101',
        email: 'jane.smith@example.com',
        address: '102 Elm St, Anytown, USA'),
    Person(
        name: 'Michael Johnson',
        phone: '555-0102',
        email: 'michael.johnson@example.com',
        address: '103 Oak St, Anytown, USA'),
    Person(
        name: 'Emily Davis',
        phone: '555-0103',
        email: 'emily.davis@example.com',
        address: '104 Maple St, Anytown, USA'),
    Person(
        name: 'David Wilson',
        phone: '555-0104',
        email: 'david.wilson@example.com',
        address: '105 Pine St, Anytown, USA'),
    Person(
        name: 'Sarah Brown',
        phone: '555-0105',
        email: 'sarah.brown@example.com',
        address: '106 Cedar St, Anytown, USA'),
    Person(
        name: 'James Miller',
        phone: '555-0106',
        email: 'james.miller@example.com',
        address: '107 Birch St, Anytown, USA'),
    Person(
        name: 'Laura Garcia',
        phone: '555-0107',
        email: 'laura.garcia@example.com',
        address: '108 Walnut St, Anytown, USA'),
    Person(
        name: 'Robert Martinez',
        phone: '555-0108',
        email: 'robert.martinez@example.com',
        address: '109 Cherry St, Anytown, USA'),
    Person(
        name: 'Lisa Hernandez',
        phone: '555-0109',
        email: 'lisa.hernandez@example.com',
        address: '110 Ash St, Anytown, USA'),
    Person(
        name: 'Brian Lee',
        phone: '555-0110',
        email: 'brian.lee@example.com',
        address: '111 Spruce St, Anytown, USA'),
    Person(
        name: 'Linda Lewis',
        phone: '555-0111',
        email: 'linda.lewis@example.com',
        address: '112 Fir St, Anytown, USA'),
    Person(
        name: 'William Walker',
        phone: '555-0112',
        email: 'william.walker@example.com',
        address: '113 Pineview St, Anytown, USA'),
    Person(
        name: 'Nancy Hall',
        phone: '555-0113',
        email: 'nancy.hall@example.com',
        address: '114 River St, Anytown, USA'),
    Person(
        name: 'George Allen',
        phone: '555-0114',
        email: 'george.allen@example.com',
        address: '115 Lake St, Anytown, USA'),
    Person(
        name: 'Karen Young',
        phone: '555-0115',
        email: 'karen.young@example.com',
        address: '116 Hill St, Anytown, USA'),
    Person(
        name: 'Charles Scott',
        phone: '555-0116',
        email: 'charles.scott@example.com',
        address: '117 Valley St, Anytown, USA'),
    Person(
        name: 'Jessica Adams',
        phone: '555-0117',
        email: 'jessica.adams@example.com',
        address: '118 Creek St, Anytown, USA'),
    Person(
        name: 'Paul Nelson',
        phone: '555-0118',
        email: 'paul.nelson@example.com',
        address: '119 Park St, Anytown, USA'),
    Person(
        name: 'Emily Clark',
        phone: '555-0119',
        email: 'emily.clark@example.com',
        address: '120 Forest St, Anytown, USA'),
    Person(
        name: 'Steven Wright',
        phone: '555-0120',
        email: 'steven.wright@example.com',
        address: '121 Garden St, Anytown, USA'),
  ];
  @override
  DataRow? getRow(int index) {
    final Person person = personLists[index];
    return DataRow.byIndex(
        index: index,
        selected: person.selected,
        onSelectChanged: (bool? newValue) {
          if (person.selected != newValue) {
            selectedCount += newValue! ? 1 : -1;
            person.selected = newValue;
            notifyListeners();
          }
        },
        cells: [
          DataCell(Text('${index + 1}')),
          DataCell(Text(person.name)),
          DataCell(Text(person.phone)),
          DataCell(Text(person.email)),
          DataCell(Text(person.address)),
        ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => personLists.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => selectedCount;
}

// SubScreen

import 'package:first_app/model/item_model.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // manual items list
  List<Item> lstItems = [
    Item(
      itemId: 1,
      itemName: 'Copy',
      itemPrice: 15,
    ),
    Item(
      itemId: 2,
      itemName: 'Book',
      itemPrice: 25,
    ),
    Item(
      itemId: 3,
      itemName: 'Highlighter',
      itemPrice: 50,
    ),
    Item(
      itemId: 4,
      itemName: 'Signpen',
      itemPrice: 60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DataTable(

          // Color fill in column heading
          headingRowColor: MaterialStateColor.resolveWith(
            (states) => Colors.amber,
          ),
          border: TableBorder.all(
            color: Colors.black,
          ),
          columns: const [
            DataColumn(
              label: Text('Item Name'),
            ),
            DataColumn(
              label: Text('Item Price'),
            ),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('Pencil')),
              DataCell(Text('12')),
            ]),
            DataRow(cells: [
              DataCell(Text('Pen')),
              DataCell(Text('50')),
            ]),
          ]),
    );
  }
}

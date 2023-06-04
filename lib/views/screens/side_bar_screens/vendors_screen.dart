import 'package:flutter/material.dart';

class VendorScreen extends StatelessWidget {
  static const String routeName = '\VendorScreen';

  Widget _rowHeader(String text, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade700,
          ),
          color: Colors.cyan.shade700,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Manage Vendors',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader(' Logo', 1),
              _rowHeader(' Vendor Name', 3),
              _rowHeader(' City', 2),
              _rowHeader(' State', 2),
              _rowHeader(' Action', 1),
              _rowHeader(' View More', 1),
            ],
          ),
        ],
      ),
    );
  }
}

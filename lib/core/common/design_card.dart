import 'package:flutter/material.dart';

class DesignCard extends StatelessWidget {
  final String designName;
  final String designImage;
  final double designPrice;
  final String designCategory;
  final String designDescription;

  const DesignCard({
    required this.designName,
    required this.designImage,
    required this.designPrice,
    required this.designCategory,
    required this.designDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Display design image
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(10.0)),
            child: Image.network(
              designImage,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display design name
                Text(
                  designName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                // Display design price
                Text(
                  '\$${designPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 5),
                // Display design category
                Text(
                  designCategory,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 5),
                // Display design description
                Text(
                  designDescription,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

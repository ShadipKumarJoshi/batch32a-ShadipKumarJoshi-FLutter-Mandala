import 'package:final_assignment/core/common/dashboard_Tab_View_Heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomizeView extends ConsumerStatefulWidget {
  const CustomizeView({super.key});

  @override
  ConsumerState<CustomizeView> createState() => _CustomizeViewState();
}

class _CustomizeViewState extends ConsumerState<CustomizeView> {
  final _customizeFormKey = GlobalKey<FormState>();

  // Variables to hold selected values
  String? _selectedCategory;
  String? _selectedSize;
  String? _selectedDesign;
  String? _selectedColor;

  // Dropdown options
  final Map<String, String> _categories = {
    'T-shirt': 'assets/products/tshirt.png',
    'Tanktop': 'assets/products/tanktop.png',
    'Sweatshirt': 'assets/products/swearshirt.png',
    'Hoodie': 'assets/products/hoodie.png',
  };
  final List<String> _sizes = ['XS', 'S', 'M', 'L', 'XL'];
  final Map<String, String> _designs = {
    'Design 1': 'assets/designs/design1.jpg',
    'Mario': 'assets/designs/mario.jpeg',
  };
  final Map<String, Color> _colors = {
    'Red': Colors.red,
    'Blue': Colors.blue,
    'Green': Colors.green,
    'Black': Colors.black,
    'White': Colors.white,
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          const Center(
            child: DashboardTabViewHeading(text: 'Customize Prints'),
          ),
          // Top container displaying selected images and background color
          SingleChildScrollView(
            child: Expanded(
              child: Container(
                height: 300,
                color: _selectedColor != null
                    ? _colors[_selectedColor]
                    : const Color(0xFFFFF0C4),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Display the selected category image if available
                    if (_selectedCategory != null)
                      Image.asset(
                        _categories[_selectedCategory]!,
                        fit: BoxFit.contain,
                      ),
                    // Overlay the selected design image if available
                    if (_selectedDesign != null)
                      Image.asset(
                        _designs[_selectedDesign]!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Form(
            key: _customizeFormKey,
            child: Column(
              children: [
                // Category Dropdown with Images
                DropdownButtonFormField<String>(
                  value: _selectedCategory,
                  decoration: const InputDecoration(labelText: 'Category'),
                  items: _categories.entries.map((entry) {
                    return DropdownMenuItem<String>(
                      value: entry.key,
                      child: Row(
                        children: [
                          Image.asset(entry.value, width: 24, height: 24),
                          const SizedBox(width: 10),
                          Text(entry.key),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCategory = newValue;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a category' : null,
                ),
                const SizedBox(height: 5),

                // Size Dropdown
                DropdownButtonFormField<String>(
                  value: _selectedSize,
                  decoration: const InputDecoration(labelText: 'Size'),
                  items: _sizes.map((String size) {
                    return DropdownMenuItem<String>(
                      value: size,
                      child: Text(size),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedSize = newValue;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a size' : null,
                ),
                const SizedBox(height: 5),

                // Design Dropdown
                DropdownButtonFormField<String>(
                  value: _selectedDesign,
                  decoration: const InputDecoration(labelText: 'Design'),
                  items: _designs.keys.map((String design) {
                    return DropdownMenuItem<String>(
                      value: design,
                      child: Text(design),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedDesign = newValue;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a design' : null,
                ),
                const SizedBox(height: 5),

                // Color Dropdown
                DropdownButtonFormField<String>(
                  value: _selectedColor,
                  decoration: const InputDecoration(labelText: 'Color'),
                  items: _colors.keys.map((String color) {
                    return DropdownMenuItem<String>(
                      value: color,
                      child: Text(color),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedColor = newValue;
                    });
                  },
                  validator: (value) =>
                      value == null ? 'Please select a color' : null,
                ),
                const SizedBox(height: 5),

                // Add to Cart Button
                ElevatedButton(
                  onPressed: () {
                    if (_customizeFormKey.currentState!.validate()) {
                      // Add your add-to-cart logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Added to cart!')),
                      );
                    }
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

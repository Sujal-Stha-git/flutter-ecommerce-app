import 'package:flutter/material.dart';
import 'product_model.dart';

// Home screen showing list of products
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top app bar with burgundy color
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
        backgroundColor: const Color(0xFF880E4F), 
        foregroundColor: Colors.white, 
      ),
      
      // Main content area
      body: Padding(
        padding: EdgeInsets.all(16.0), 
        
        // Scrollable list that builds items efficiently
        child: ListView.builder(
          itemCount: sampleProducts.length,
          itemBuilder: (context, index) {
            Product product = sampleProducts[index]; 
            return ProductCard(product: product); 
          },
        ),
      ),
    );
  }
}

// Individual product card widget
class ProductCard extends StatelessWidget {
  final Product product; 
  
  const ProductCard({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0), // Space between cards
      elevation: 4.0, // Shadow depth for card
      
      // Detects taps on the entire card
      child: GestureDetector(
        onTap: () {
          // Navigate to product detail screen when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailScreen(product: product),
            ),
          );
        },
        
        // Card content with padding
        child: Padding(
          padding: EdgeInsets.all(16.0), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //left align
            children: [
              // rouded corner for product
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  product.imageUrl,
                  height: 150, 
                  width: double.infinity, 
                  fit: BoxFit.cover, 
                ),
              ),
              
              SizedBox(height: 12.0), // Spacing after image
              
              // Product name
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              SizedBox(height: 8.0), // Space between name and price row
              
              // Row containing price and add to cart button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between elements
                children: [
                  Text(
                    '\$${product.price.toStringAsFixed(2)}', 
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.green, 
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  
                  // Add to cart button
                  ElevatedButton(
                    onPressed: () {
                      // Show success message when button pressed
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product.name} added to cart!',
                          style: TextStyle(fontSize: 20)), 
                          duration: Duration(seconds: 2), 
                          backgroundColor: Colors.green, 
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF880E4F), 
                      foregroundColor: Colors.white, 
                    ),
                    child: Text('Add to Cart'),
                  ),
                ],
              ),
              
              SizedBox(height: 8.0), 
              
              // Hint text to encourage tapping
              Text(
                'view details',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[700], 
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Detailed product view screen
class ProductDetailScreen extends StatelessWidget {
  final Product product; // Product to show details for
  
  const ProductDetailScreen({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar showing product name
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: const Color(0xFF880E4F), 
        foregroundColor: Colors.white,
      ),
      
      // Scrollable content for long descriptions
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Left-align 
          children: [
            // Large product image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                product.imageUrl,
                height: 300, 
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            
            SizedBox(height: 20.0), 
            // Product name
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24.0, 
                fontWeight: FontWeight.bold,
              ),
            ),
            
            SizedBox(height: 16.0), 
            
            // Product price 
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.green, 
                fontWeight: FontWeight.w900,
              ),
            ),
            
            SizedBox(height: 20.0), 
            
            // Description section header
            Text(
              'Description',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            
            SizedBox(height: 8.0), 
            
            // Product description text
            Text(
              product.description,
              style: TextStyle(
                fontSize: 16.0,
                height: 1.5, 
                color: Colors.grey[700],
              ),
            ),
            
            SizedBox(height: 30.0), 
            
            
            SizedBox(
              width: double.infinity, 
              height: 50.0, 
              child: ElevatedButton(
                onPressed: () {
                  // Show success message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${product.name} added to cart!',
                      style: TextStyle(fontSize: 20)), 
                      duration: Duration(seconds: 2),
                      backgroundColor: const Color.fromARGB(255, 2, 123, 6), // Success
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF880E4F), 
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), 
                  ),
                ),
                child: Text(
                  'Add to Cart',
                  style: TextStyle(fontSize: 18.0), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
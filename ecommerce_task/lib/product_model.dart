/// Product model class that represents a product in the system
class Product {
  final String name;
  final String imageUrl;
  final double price;
  final String description;
  
  /// Constructor that requires all fields to be provided
  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });
}

/// Sample data and mock data in list format
List<Product> sampleProducts = [

  Product(
    name: 'iPhone 15 Pro',
    imageUrl: 'https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?w=300&h=300&fit=crop',
    price: 999.99,
    description: '''
- 6.1″ Super Retina XDR OLED, 120 Hz ProMotion
- A17 Pro chip for top-tier performance
- 48 MP main + 12 MP ultra-wide + 12 MP telephoto (3x)
- USB-C charging with ~23 hr video playback
- Titanium frame with IP68 water resistance
- Action Button and Face ID
''',
  ),

  Product(
    name: 'Samsung Galaxy S24',
    imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=300&h=300&fit=crop',
    price: 849.99,
    description: '''
- 6.2″ Dynamic AMOLED 2X, 1-120 Hz adaptive
- Snapdragon 8 Gen 3 for Galaxy
- 50 MP wide + 12 MP ultra-wide + 10 MP telephoto (3x)
- 4000 mAh battery with fast charging
- IP68 water/dust resistance
- Android 14 with Galaxy AI features
''',
  ),

  Product(
    name: 'MacBook Pro 14"',
    imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=300&h=300&fit=crop',
    price: 1999.99,
    description: '''
- 14.2″ Liquid Retina XDR display, 120 Hz
- Apple M3 / M3 Pro / M3 Max chip options
- 8-128 GB unified memory, up to 8 TB SSD
- ~18 hr video playback with fast MagSafe charging
- 3x Thunderbolt 4, HDMI, SDXC card slot
- macOS Sonoma with advanced workflows
''',
  ),

  Product(
    name: 'AirPods Pro',
    imageUrl: 'https://images.unsplash.com/photo-1588423771073-b8903fbb85b5?w=300&h=300&fit=crop',
    price: 249.99,
    description: '''
- Active Noise Cancellation and Transparency
- Adaptive Audio with Personalized Spatial Audio
- ~6 hr listening time (30 hr with case)
- USB-C, MagSafe, and Qi wireless charging
- IP54 dust and water resistance
- H2 chip for seamless Apple integration
''',
  ),
];

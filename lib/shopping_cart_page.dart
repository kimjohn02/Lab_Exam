import 'package:flutter/material.dart';

/// The main shopping cart screen implemented as a [StatelessWidget].
class ShoppingCartPage extends StatelessWidget {
  /// The full name of the student for the delivery address.
  final String studentName;

  const ShoppingCartPage({
    super.key,
    this.studentName = 'Kim Lupogan',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF0F172A),
          ),
          onPressed: () {
            debugPrint('Back clicked');
          },
        ),
        titleSpacing: 0,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Color(0xFF0F172A),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xFF0F172A),
                      size: 26,
                    ),
                    onPressed: () {
                      debugPrint('Cart clicked');
                    },
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Color(0xFF2563EB),
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 18,
                        minHeight: 18,
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 2. Introduction Section
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDBEAFE),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    'CAMPUS STORE',
                    style: TextStyle(
                      color: Color(0xFF2563EB),
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Ready for checkout',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Review your items before placing your order.',
                style: TextStyle(
                  fontSize: 13.5,
                  color: Color(0xFF64748B),
                ),
              ),
              const SizedBox(height: 16),

              // 3. Delivery Information Card
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Color(0xFF2563EB),
                      size: 26,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      width: 1,
                      height: 36,
                      color: const Color(0xFFE2E8F0),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deliver to $studentName',
                            style: const TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Matina, Davao City',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        debugPrint('Change delivery address clicked');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Change',
                        style: TextStyle(
                          color: Color(0xFF2563EB),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // 4. Order Items Section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(
                      fontSize: 13.5,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Product 1: Wireless Mouse
              const CartItemCard(
                productName: 'Wireless Mouse',
                price: 'PHP 450.00',
                quantity: 1,
                icon: Icons.mouse_outlined,
              ),
              const SizedBox(height: 12),

              // Product 2: USB-C Hub
              const CartItemCard(
                productName: 'USB-C Hub',
                price: 'PHP 850.00',
                quantity: 1,
                icon: Icons.cable_outlined,
              ),
              const SizedBox(height: 12),

              // Product 3: Laptop Stand
              const CartItemCard(
                productName: 'Laptop Stand',
                price: 'PHP 700.00',
                quantity: 1,
                icon: Icons.laptop_chromebook_outlined,
              ),
              const SizedBox(height: 16),

              // 5. Discount Banner
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFDBEAFE).withOpacity(0.55),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFBFDBFE)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.sell_outlined,
                      color: Color(0xFF2563EB),
                      size: 22,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      width: 1,
                      height: 32,
                      color: const Color(0xFFBFDBFE),
                    ),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'STUDENT10 applied',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '10% discount on items',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Color(0xFF64748B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFF2563EB),
                      size: 22,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // 6. Payment Summary
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Payment Summary',
                      style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildSummaryRow('Subtotal', 'PHP 2,000.00'),
                    const SizedBox(height: 8),
                    _buildSummaryRow('Discount (10%)', '- PHP 200.00'),
                    const SizedBox(height: 8),
                    _buildSummaryRow('Delivery Fee', 'PHP 50.00'),
                    const SizedBox(height: 12),
                    const Divider(color: Color(0xFFE2E8F0), thickness: 1),
                    const SizedBox(height: 8),
                    _buildSummaryRow('Total', 'PHP 1,850.00', isTotal: true),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // 7. Place Order Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Place order clicked! Total: PHP 1850.00');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock, size: 18, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Place Order',
                        style: TextStyle(
                          fontSize: 15.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String amount, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 16 : 13.5,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.w500,
            color: const Color(0xFF0F172A),
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            fontSize: isTotal ? 16 : 13.5,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.w500,
            color: const Color(0xFF0F172A),
          ),
        ),
      ],
    );
  }
}

/// A reusable [StatelessWidget] card representing an item in the shopping cart.
class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon container with light-blue background
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFDBEAFE).withOpacity(0.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 30,
                color: const Color(0xFF2563EB),
              ),
            ),
          ),
          const SizedBox(width: 14),
          // Product Details & Quantity Controls
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName,
                            style: const TextStyle(
                              fontSize: 14.5,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0F172A),
                            ),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            price,
                            style: const TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint('Remove item: $productName');
                      },
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(
                        Icons.delete_outline,
                        color: Color(0xFF94A3B8),
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    // Minus button
                    InkWell(
                      onTap: () {
                        debugPrint('Decrease quantity: $productName');
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 28,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: const Color(0xFF2563EB),
                            width: 1.2,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.remove,
                            size: 14,
                            color: Color(0xFF2563EB),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Quantity display
                    Container(
                      width: 36,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xFFCBD5E1),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '$quantity',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    // Plus button
                    InkWell(
                      onTap: () {
                        debugPrint('Increase quantity: $productName');
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 28,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: const Color(0xFF2563EB),
                            width: 1.2,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 14,
                            color: Color(0xFF2563EB),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


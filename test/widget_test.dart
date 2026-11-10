import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lupogan_labexam/main.dart';
import 'package:lupogan_labexam/shopping_cart_page.dart';

void main() {
  testWidgets('ShoppingCartPage renders all required sections', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify AppBar title and badge
    expect(find.text('My Cart'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);

    // Verify Introduction Section
    expect(find.text('CAMPUS STORE'), findsOneWidget);
    expect(find.text('Ready for checkout'), findsOneWidget);
    expect(
      find.text('Review your items before placing your order.'),
      findsOneWidget,
    );

    // Verify Delivery Information Card
    expect(find.text('Deliver to Kim Lupogan'), findsOneWidget);
    expect(find.text('Matina, Davao City'), findsOneWidget);
    expect(find.text('Change'), findsOneWidget);

    // Verify Order Items
    expect(find.text('Order Items'), findsOneWidget);
    expect(find.text('3 items'), findsOneWidget);
    expect(find.text('Wireless Mouse'), findsOneWidget);
    expect(find.text('PHP 450.00'), findsOneWidget);
    expect(find.text('USB-C Hub'), findsOneWidget);
    expect(find.text('PHP 850.00'), findsOneWidget);
    expect(find.text('Laptop Stand'), findsOneWidget);
    expect(find.text('PHP 700.00'), findsOneWidget);

    // Verify Reusable CartItemCard count
    expect(find.byType(CartItemCard), findsNWidgets(3));

    // Verify Discount Banner
    expect(find.text('STUDENT10 applied'), findsOneWidget);
    expect(find.text('10% discount on items'), findsOneWidget);

    // Verify Payment Summary
    expect(find.text('Payment Summary'), findsOneWidget);
    expect(find.text('Subtotal'), findsOneWidget);
    expect(find.text('PHP 2,000.00'), findsOneWidget);
    expect(find.text('Discount (10%)'), findsOneWidget);
    expect(find.text('- PHP 200.00'), findsOneWidget);
    expect(find.text('Delivery Fee'), findsOneWidget);
    expect(find.text('PHP 50.00'), findsOneWidget);
    expect(find.text('Total'), findsOneWidget);
    expect(find.text('PHP 1,850.00'), findsOneWidget);

    // Verify Place Order Button
    expect(find.text('Place Order'), findsOneWidget);
  });
}

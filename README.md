# Shopping Cart Page (StatelessWidget Lab Exam)

**Project Name:** `stateless_lab_exam`  
**Student Name:** Kim Lupogan  
**Course / Laboratory:** Mobile Application Development  

---

## 📱 Project Description
A Flutter shopping cart user interface built entirely using standard Flutter widgets and a pure `StatelessWidget` architecture. The design strictly replicates the provided reference design with nested layouts, reusable custom widgets, clean visual hierarchy, and accurate button console callbacks.

---

## ✨ Features & Architecture

1. **AppBar**:
   - Custom back-arrow navigation icon.
   - Left-aligned bold title: `"My Cart"`.
   - Right shopping bag icon with a badge displaying `"3"`, positioned using a `Stack`.
2. **Introduction Section**:
   - Light-blue rounded container badge: `CAMPUS STORE`.
   - Bold heading: `Ready for checkout`.
   - Subtitle: `Review your items before placing your order.`.
3. **Delivery Information Card**:
   - Rounded white card containing location pin icon.
   - Text displaying `Deliver to Kim Lupogan` and `Matina, Davao City`.
   - Right-aligned `Change` text button.
4. **Order Items**:
   - Section header displaying `Order Items` and `3 items`.
   - Reusable `CartItemCard` widget (`StatelessWidget`) accepting:
     - `productName`
     - `price`
     - `quantity`
     - `icon`
   - Three pre-configured product records:
     - **Wireless Mouse** — PHP 450.00 (Qty: 1)
     - **USB-C Hub** — PHP 850.00 (Qty: 1)
     - **Laptop Stand** — PHP 700.00 (Qty: 1)
   - Includes rounded product icon container, delete button, and `[-] [1] [+]` quantity buttons.
5. **Discount Banner**:
   - Light-blue rounded container with tag icon, vertical divider, `STUDENT10 applied`, `10% discount on items`, and a check-circle icon.
6. **Payment Summary**:
   - White rounded card with detailed breakdown:
     - Subtotal: `PHP 2,000.00`
     - Discount (10%): `- PHP 200.00`
     - Delivery Fee: `PHP 50.00`
     - Total: **`PHP 1,850.00`** (bold emphasized)
7. **Place Order Button**:
   - Full-width blue button with lock icon, rounded corners, and readable white text.

---

## 🔘 Button Behavior & Console Outputs

All interactive widgets implement `debugPrint()` callbacks producing the required console outputs:

| Control | Console Output |
| :--- | :--- |
| **Back arrow** | `Back clicked` |
| **Shopping bag** | `Cart clicked` |
| **Change** | `Change delivery address clicked` |
| **Plus button** | `Increase quantity: [product name]` |
| **Minus button** | `Decrease quantity: [product name]` |
| **Delete button** | `Remove item: [product name]` |
| **Place Order** | `Place order clicked! Total: PHP 1850.00` |

---

## 🚀 Getting Started

To run this application locally:

```bash
# Clone the repository
git clone <repository-url>

# Navigate into the project directory
cd stateless_lab_exam

# Fetch dependencies
flutter pub get

# Run the app
flutter run
```

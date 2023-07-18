// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ödeme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int totalPrice = 0;
  List<CartItem> cartItems = [];

  void updateTotalPrice(int price) {
    setState(() {
      totalPrice = price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            'Ödeme',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Geri dön butonuna basıldığında yapılacak işlemler
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Image.asset('assets/gorsel.png'), // Görsel için yolunuzu güncelleyin
              SizedBox(height: 16),
              Text(
                'Antakya Kebap Center',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Ödeme Detayı',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              MenuItem(
                title: 'Adana Kebap',
                price: 89,
                cartItems: cartItems,
                updateTotalPrice: updateTotalPrice,
              ),
              MenuItem(
                title: 'Döner Kebap',
                price: 87,
                cartItems: cartItems,
                updateTotalPrice: updateTotalPrice,
              ),
              MenuItem(
                title: 'Açık Ayran',
                price: 25,
                cartItems: cartItems,
                updateTotalPrice: updateTotalPrice,
              ),
              MenuItem(
                title: 'Çoban Salata',
                price: 35,
                cartItems: cartItems,
                updateTotalPrice: updateTotalPrice,
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 2,
                color: Colors.black87, // Çizgi rengini koyu siyah olarak ayarladık
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adet',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Ürün',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    'Toplam Fiyat',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${cartItems[index].quantity}X', style: TextStyle(color: Colors.black)),
                      Text(cartItems[index].title, style: TextStyle(color: Colors.black)),
                      Text('${cartItems[index].price * cartItems[index].quantity} TL', style: TextStyle(color: Colors.black)),
                    ],
                  );
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Genel Toplam:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    '$totalPrice TL',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.infinity,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      // Ödeme Yap butonuna basıldığında yapılacak işlemler
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff008FA0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                    ),
                    child: Text(
                      'Ödeme Yap',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  final String title;
  final int price;
  final List<CartItem> cartItems;
  final Function(int) updateTotalPrice;

  const MenuItem({
    required this.title,
    required this.price,
    required this.cartItems,
    required this.updateTotalPrice,
  });

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  int quantity = 0;

  void updateCartItem() {
    int itemIndex = -1;
    for (int i = 0; i < widget.cartItems.length; i++) {
      if (widget.cartItems[i].title == widget.title) {
        itemIndex = i;
        break;
      }
    }

    if (quantity > 0) {
      if (itemIndex != -1) {
        widget.cartItems[itemIndex].quantity = quantity;
      } else {
        widget.cartItems.add(CartItem(
          title: widget.title,
          price: widget.price,
          quantity: quantity,
        ));
      }
    } else {
      if (itemIndex != -1) {
        widget.cartItems.removeAt(itemIndex);
      }
    }

    int totalPrice = 0;
    for (var item in widget.cartItems) {
      totalPrice += item.price * item.quantity;
    }

    widget.updateTotalPrice(totalPrice);
  }

  void increaseQuantity() {
    setState(() {
      quantity++;
    });
    updateCartItem();
  }

  void decreaseQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
    updateCartItem();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('${quantity}X', style: TextStyle(color: Colors.black)),
        Text(widget.title, style: TextStyle(color: Colors.black)),
        Text('${widget.price * quantity} TL', style: TextStyle(color: Colors.black)),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: increaseQuantity,
        ),
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: decreaseQuantity,
        ),
      ],
    );
  }
}

class CartItem {
  final String title;
  final int price;
  int quantity;

  CartItem({
    required this.title,
    required this.price,
    required this.quantity,
  });
}

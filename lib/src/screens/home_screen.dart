import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_wallet/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllerPage = PageController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFFc88197),
        child: const Icon(Icons.monetization_on),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.red,
        child: SizedBox(
          height: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:const SizedBox(
                        height: 90,
                        width: 90,
                        child: Icon(Icons.home, color: Color(0XFFC88197), size: 40,)),
                  ),
                  const Text('  Home', style: TextStyle(
                      fontFamily: 'nunite',
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              // Container(width: 100,),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: 90,
                        width: 90,
                        child: Icon(
                          Icons.settings,
                          color: Colors.grey.shade400,
                          size: 40,
                        )),
                  ),
                  const Text('Settings', style: TextStyle(
                      fontFamily: 'nunite',
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
            physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          children: [
            buildAppBar(),
            const SizedBox(height: 25),
            buildListCards(controllerPage),
            const SizedBox(height: 15),
            Center(
              child: SmoothPageIndicator(
                controller: controllerPage,
                count: 3,
                effect: ExpandingDotsEffect(
                dotHeight: 12,
                  activeDotColor: Colors.grey.shade800,
                ),
              ),
            ),
            const SizedBox(height: 15),
            buildBotons(),
            const SizedBox(height: 15),
            buildTransacctions(),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'My',
                style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cards',
                style: TextStyle(fontFamily: 'Lora', fontSize: 28),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget buildListCards(PageController controllerPage) {
    return SizedBox(
      height: 180,
      child: PageView(
        controller: controllerPage,
        scrollDirection: Axis.horizontal,
        children: const [
          CardWidget(
            balance: 5250.20,
            cardNumber: 12345678899,
            expiryMonth: 14,
            expiryYear: 22,
            color: Color(0xFF695EF2),
          ),
          CardWidget(
            balance: 5250.20,
            cardNumber: 12345678899,
            expiryMonth: 10,
            expiryYear: 22,
            color: Color(0xFFA5D5F1),
          )
        ],
      ),
    );
  }

  Widget buildBotons() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildItem('Send', Icons.send, Colors.purple.shade900),
          buildItem('Pay', Icons.payment, Colors.blue.shade700),
          buildItem(
              'Bills', Icons.brightness_4_outlined, Colors.green.shade600),
        ],
      ),
    );
  }

  Widget buildItem(String title, IconData icon, Color color) {
    return Column(
      children: [
        BotonWidget(icon: icon, color: color),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'nunito',
            fontSize: 18,
            color: Colors.grey.shade800,
          ),
        )
      ],
    );
  }

  Widget buildTransacctions() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          TransactionWidget(Color(0XFF9893E3), Icons.stacked_line_chart,
              'Statistics', 'Payments and income'),
          TransactionWidget(Color(0XFF67A8C5), Icons.message, 'Transactions',
              'Transaction History'),
        ],
      ),
    );
  }
}

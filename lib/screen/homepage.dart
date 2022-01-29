import 'package:flutter/material.dart';
import 'package:youtubeui/module/widget.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Hi Rakib', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/user0.png'),
                  )
                ],
              ),
              const Text('10 task pending', style: TextStyle(fontSize: 18, color: Colors.deepOrange)),
              const SizedBox(height: 25),
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 65,
                          width: 250,
                          padding:  const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: Colors.grey.shade300, size: 40),
                              const Text('Search', style: TextStyle(fontSize: 20, color: Colors.grey),)
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.deepOrange,
                          radius: 33,
                          child: Icon(Icons.menu_open_sharp, color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(height: 35),
                    const Text('Categories', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 35),
                    Row(
                      children: const [
                        CategoryItem('Mobile App', '10 Tasks', 'girl.png'),
                        CategoryItem('Website', '05 Tasks', 'boy.png'),
                      ],
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Ongoing Task', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                        Text('See all', style: TextStyle(fontSize: 16, color: Colors.deepOrange)),
                      ],
                    ),
                    const SizedBox(height: 35),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Wallet App Design', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.shade100
                                ),
                                child: const Text('6d', style: TextStyle(color: Colors.white)),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Text('Team members', style: TextStyle(color: Colors.grey, fontSize: 14)),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/user1.jpeg'),
                                        radius: 15,
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/user2.jpeg'),
                                        radius: 15,
                                      ),
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        backgroundImage: AssetImage('images/user3.jpeg'),
                                        radius: 15,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: const [
                                      Icon(Icons.access_time_filled_rounded, color: Colors.deepOrange),
                                      Text('2:30 PM -  6:00 PM', style: TextStyle(color: Colors.grey,fontSize: 14))
                                    ],
                                  )
                                ],
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 65,
                                height: 65,
                                child: Stack(
                                  children: [
                                    CustomPaint(
                                      painter: MyPainter(100, color: Colors.grey.shade100),
                                      child: Container(),
                                    ),                                    
                                    CustomPaint(
                                      painter: MyPainter(72, color: Colors.blue.shade200),
                                      child: const Center(child: Text('%72', style: TextStyle(fontSize: 12))),
                                    ),
                                  ],
                                )
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter{
  final double angel;
  final Color? color;
  const MyPainter(this.angel, {this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color ?? Colors.green.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawArc(
      Rect.fromLTRB(0, 0, size.width, size.height), 
      // const Offset(0, 0) & size,
      -math.pi / 2, 
      (math.pi * 2) * (angel / 100), 
      false, 
      paint1
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)=>true;
  
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffa7b8c8),
      appBar: AppBar(
        backgroundColor: const Color(0xffa7b8c8),
        elevation: 0,
      ),
      body: Column(children: [
        Container(
          height: 500,
          width: 500,
          decoration: const BoxDecoration(
              color: Color(0xffa7b8c8),
              image: DecorationImage(
                  image: AssetImage('assets/Images/chair3.png'),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 287,
          width: 420,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 4)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("   Occasional Chair",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "     Chair",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(
                width: 500,
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 80,
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xffd2d3cb),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xffa7b8c8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 160,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(Icons.add, size: 29),
                            ),
                            onTap: () {
                              setState(() {
                                num1++;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("$num1", style: const TextStyle(fontSize: 25)),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(Icons.remove, size: 29),
                            ),
                            onTap: () {
                              setState(() {
                                if (num1 > 0) {
                                  num1--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: CupertinoColors.systemGrey2,
                              blurRadius: 5,
                              spreadRadius: 2,
                            )
                          ]),
                      child: const Icon(
                        Icons.star_border,
                        size: 50,
                      )),
                  const SizedBox(
                    width: 130,
                  ),
                  Container(
                    width: 170,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),boxShadow: const [BoxShadow(color: Colors.grey,spreadRadius: 2,blurRadius: 5)]
                    ),
                    child: const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "\$ 260",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Icon(Icons.arrow_forward,color: Colors.white,)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    ));
  }
}

int num1 = 1;

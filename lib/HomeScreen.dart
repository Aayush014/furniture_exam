import 'package:flutter/material.dart';
import 'package:furniture_exam/CartScreen.dart';
import 'package:furniture_exam/ItemScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 450,
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Discover",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      child: const Icon(
                        Icons.person,
                        size: 35,
                      ),
                      onTap: () {
                        Navigator.of(context).push
                          (MaterialPageRoute(builder: (context) => const CartScreen(),),);
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                child: Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 3, blurRadius: 5),
                      ],
                      image: const DecorationImage(
                          image: AssetImage('assets/Images/room1.png'),
                          fit: BoxFit.fill)),
                  child: const Text("\n   BRING GREAT DESIGNTO \n   EVERYONE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 17)),
                ),onTap: () {
                  Navigator.of(context).push
                    (MaterialPageRoute(builder: (context) => const ItemScreen(),),);
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: 600,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Seats\n    .",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lamps",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Sofas",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Tables",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Beds",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //SizedBox(width: 10,),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: [
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('assets/Images/chair1.png'),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Arm Chair",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      const Text(
                        "\$ 98",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ]),
                  ),
                  Container(
                    height: 250,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('assets/Images/chair.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Occasional Chair",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        const Text(
                          "\$ 260",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                width: 500,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Text("\n    New Arrived",
                    style:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 23)),
              ),
              Container(
                height: 90,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5),
                  ],
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 90,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/Images/lamp2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "\n    Natural Lamp",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("\$ 68",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Icon(Icons.arrow_forward),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

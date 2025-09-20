import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.red,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            "Padang, Sumatera Barat",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/banner.jpg"),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search Item",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/baju.png",
                                scale: 10),
                          ),
                        ),
                        Text("Clothes"),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/celana.png",
                                scale: 10),
                          ),
                        ),
                        Text("Pants"),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/sepatu.png",
                                scale: 10),
                          ),
                        ),
                        Text("Shoes"),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/topi.png",
                                scale: 10),
                          ),
                        ),
                        Text("Hat"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Filter"),
                  Text("All"),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Food"),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Drink"),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Snack"),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Flowers"),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Backpack"),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text("Clothes"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Filter"),
                  Text("All"),
                ],
              ),
              SizedBox(height: 20),
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.7),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text("Clothes"),
                          ),
                          Expanded(
                            child: Image.asset("assets/images/baju.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp. 60.000"),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text("4.9"),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text("Pants"),
                          ),
                          Expanded(
                            child: Image.asset("assets/images/celana.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp. 60.000"),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.green),
                                  Text("4.9"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text("Shoes"),
                          ),
                          Expanded(
                            child: Image.asset("assets/images/sepatu.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp. 60.000"),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.green),
                                  Text("4.9"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text("Hat"),
                          ),
                          Expanded(
                            child: Image.asset("assets/images/topi.png"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Rp. 60.000"),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.green),
                                  Text("4.9"),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

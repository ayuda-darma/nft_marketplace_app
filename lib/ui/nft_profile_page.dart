import 'package:flutter/material.dart';
import 'package:nft_marketplace_app/ui/nft_detail_page.dart';

class NFTProfilePage extends StatefulWidget {
  const NFTProfilePage({Key? key}) : super(key: key);

  @override
  State<NFTProfilePage> createState() => _NFTProfilePageState();
}

class _NFTProfilePageState extends State<NFTProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_left_outlined), onPressed: () {}),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                ],
              ),
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage("images/profile1.jpg"),
              ),
              SizedBox(height: 16),
              Text(
                "Hello World",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("@Noone"),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(0, 0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "hello@world.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: TabBar(
                  tabs: [
                    Tab(text: "Cerations"),
                    Tab(text: "Collections"),
                  ],
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  indicatorWeight: 1,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(
                              8,
                              (index) => GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => NFTDetailPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2022/01/17/17/20/bored-6945309_960_720.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  )),
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(
                              8,
                              (index) => GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => NFTDetailPage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2022/01/17/17/20/bored-6945309_960_720.png"),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  )),
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

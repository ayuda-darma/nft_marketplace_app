import 'package:flutter/material.dart';

class NFTDetailPage extends StatefulWidget {
  const NFTDetailPage({Key? key}) : super(key: key);

  @override
  State<NFTDetailPage> createState() => _NFTDetailPageState();
}

class _NFTDetailPageState extends State<NFTDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2022/01/17/17/20/bored-6945309_960_720.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 16,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_left_outlined),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.white),
                        IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                            color: Colors.white),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.transparent,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.pink,
                      ),
                    ),
                  )
                ],
              ),
            ),
            flex: 11,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text("Consume",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/profile1.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Creator",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                              SizedBox(height: 4),
                              Text("Romy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  )),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn.pixabay.com/photo/2021/05/24/09/15/ethereum-6278326_960_720.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Current bid",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                )),
                            SizedBox(height: 4),
                            Text("100 ETH",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 16),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "So happy to share my seconf collab with my beloved wife",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextSpan(
                      text: "@Noone",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: "I'm so proud of her work and accomplishment",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 16),
                Expanded(
                  child: DefaultTabController(
                      length: 3,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 32,
                              child: TabBar(
                                  isScrollable: true,
                                  labelColor: Colors.black,
                                  indicatorWeight: 1.5,
                                  unselectedLabelColor: Colors.grey,
                                  indicatorColor: Colors.black,
                                  tabs: [
                                    Tab(text: "Info"),
                                    Tab(text: "Bids"),
                                    Tab(text: "History"),
                                  ]),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                ),
                                child: TabBarView(children: [
                                  Container(),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                          child: CircleAvatar(
                                        backgroundImage:
                                            AssetImage("images/profile1.jpg"),
                                      )),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Bid placed by Roy",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            Text("May 4, 2022 at 15:10",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("2.15 ETH",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ),
                                  Container(),
                                ]),
                              ),
                            ),
                          ])),
                ),
                SizedBox(height: 16),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text("Buy it now",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                )
              ],
            ),
            flex: 11,
          ),
        ]),
      ),
    );
  }
}

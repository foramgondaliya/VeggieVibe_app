import 'package:appmania/utils/allproductdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                ProductData.favData.add(data);
                ProductData.convertData();
                setState(() {
                  isLiked = !isLiked;
                });
              },
              child: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.black,
                size: 27,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
            alignment: Alignment.bottomCenter,
          ),
          Container(
            height: 700,
            width: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            //padding: EdgeInsets.only(top: 160),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...data['image'].map((e) {
                    return Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 570),
                      child: CircleAvatar(
                        foregroundImage: NetworkImage(e),
                        radius: 10,
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 400),
            child: Column(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (data['count'] == 0)
                                ? Container()
                                : Container(
                                    height: 50,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.green,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              data['count']--;
                                            });
                                          },
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "${data['count']}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              data['count']++;
                                            });
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 33),
                          child: Row(
                            children: [
                              Text(
                                "${data['title']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  fontSize: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 15),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  RichText(
                                      text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                      text: "${data['description']}",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        height: 1.5,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " Read More",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.green,
                                        height: 1.5,
                                      ),
                                    ),
                                  ]))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "⭐ ${data['rating']}",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "🔥 ${data['kcl']} Kcal",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "⌚ ${data['average']} min",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: Row(
                            children: [
                              Text(
                                "Ingradients",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 18),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...data['Ingradients'].map((e) {
                                  return Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(right: 10),
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade300,
                                    ),
                                    child: Text(
                                      "${e}",
                                      style: TextStyle(
                                        fontSize: 23,
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        ProductData.cartData.add(data);
                        ProductData.convertUniiqueData();
                        data['count']++;
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.green,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

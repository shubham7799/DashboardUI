import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff3e45a9),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 12, right: 12, top: MediaQuery.of(context).size.height/10),
          width: double.infinity,
          color: Color(0xfff7f7f7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Icon(Icons.arrow_back),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Products listed",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.sort,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              item(),
              item(),
              item(),
              item(),
            ],
          ),
        ),
      ),
    );
  }

  // Widget item(String image, String name, String price) {
  //   return Column(
  //     children: [
  //       Container(
  //         padding: EdgeInsets.only(top: 8),
  //         width: 200,
  //         child: Card(
  //           margin: EdgeInsets.zero,
  //           elevation: 8,
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: Row(
  //                     children: [
  //                       Container(
  //                         width: 60,
  //                         height: 60,
  //                         decoration: BoxDecoration(
  //                             image: DecorationImage(
  //                                 image: AssetImage(image),
  //                                 fit: BoxFit.contain)),
  //                       ),
  //                       Text(name),
  //                     ],
  //                   ),
  //                 ),
  //                 Row(
  //                   children: [
  //                     Text("QTY:1"),
  //                     SizedBox(
  //                       width: 20,
  //                     ),
  //                     Text(price),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget item() {
    return Container(
      height: 210,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                          image: AssetImage("images/tree.jpg"),
                          fit: BoxFit.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Product Type",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Text(
                              "Pidi",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Body Name",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mango",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "anklet",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(icon: Icon(Icons.delete), onPressed: null),
                    IconButton(icon: Icon(Icons.edit), onPressed: null),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

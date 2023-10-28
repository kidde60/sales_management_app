import 'package:flutter/material.dart';
import 'package:sales_management_app/reusable/categories_model.dart';
import 'package:sales_management_app/screens/item_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final list = Categories.list;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text('sales management app'.toUpperCase()),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person_2_outlined),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ItemScreen()));
          },
          child: const Icon(Icons.add)),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Hello, Professor'),
            const Text(
              'Monitor Your Sales',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),

            // search bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                  border: Border(left: BorderSide(width: 4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search ......',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.mic),
                ],
              ),
            ),

            // Categories
            SizedBox(
              height: 45,
              child: ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  height: 50,
                  width: 170,
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            list[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PolyVynle',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '50 pieces',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 50,
                //   width: 170,
                //   child: Row(
                //     children: [
                //       Container(
                //         height: 45,
                //         width: 45,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: Colors.black),
                //         child: const Center(
                //           child: Text(
                //             'PV',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 5,
                //       ),
                //       const Flexible(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'PolyVynle',
                //               style: TextStyle(
                //                   color: Colors.white70,
                //                   fontWeight: FontWeight.w400,
                //                   fontSize: 16),
                //               overflow: TextOverflow.ellipsis,
                //             ),
                //             Text(
                //               '50 pieces',
                //               style: TextStyle(
                //                   color: Colors.white70,
                //                   fontWeight: FontWeight.w200,
                //                   fontSize: 15),
                //               overflow: TextOverflow.ellipsis,
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 50,
                //   width: 170,
                //   child: Row(
                //     children: [
                //       Container(
                //         height: 45,
                //         width: 45,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: Colors.black),
                //         child: const Center(
                //           child: Text(
                //             'PV',
                //             style: TextStyle(
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 5,
                //       ),
                //       const Flexible(
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'PolyVynle',
                //               style: TextStyle(
                //                   color: Colors.white70,
                //                   fontWeight: FontWeight.w400,
                //                   fontSize: 16),
                //               overflow: TextOverflow.ellipsis,
                //             ),
                //             Text(
                //               '50 pieces',
                //               style: TextStyle(
                //                   color: Colors.white70,
                //                   fontWeight: FontWeight.w200,
                //                   fontSize: 15),
                //               overflow: TextOverflow.ellipsis,
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

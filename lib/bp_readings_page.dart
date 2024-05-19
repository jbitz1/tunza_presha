import 'package:flutter/material.dart';

class BPReadingPage extends StatelessWidget {
  const BPReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            // onPressed: () {
            //   Navigator.pushNamed(context, '/home_page');
            // },
            color: Color.fromRGBO(117, 68, 191, 1),
          ),
          title: const Text(
            "           Blood Pressure", //I KNOW BUT IT WORKS THO!!!!!!
            style: TextStyle(
              color: Color.fromRGBO(117, 68, 191, 1),
            ),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Here are some units you have recorded in the past",
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(100, 20)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 237, 199, 243))),
                        onPressed: null,
                        child: Text(
                          "This month",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(117, 68, 191, 1),
                          ),
                        )),
                    TextButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(100, 20)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(50, 105, 116, 137))),
                        onPressed: null,
                        child: Text(
                          "Last month",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 91, 90, 90),
                          ),
                        )),
                    TextButton(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(102, 20)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(50, 105, 116, 137))),
                        onPressed: null,
                        child: Text(
                          "Last 3 months",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 91, 90, 90),
                          ),
                        )),
                  ],
                ),
                Container(
                  height: 81,
                  width: 379,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 192, 226, 193),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "120/80",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(
                            "Oct 20, 2022 at 9:15 am",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 91, 90, 90),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Normal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 81,
                  width: 379,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(40, 255, 112, 0),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "140/95",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 112, 0)),
                          ),
                          Text(
                            "Oct 21, 2022 at 10:41 am",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 91, 90, 90),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Elevated",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 112, 0),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 81,
                  width: 379,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 192, 226, 193),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "122/76",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(
                            "Oct 23, 2022 at 12:34 pm",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 91, 90, 90),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Normal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 81,
                  width: 379,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromARGB(255, 192, 226, 193),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "124/78",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(
                            "Oct 24, 2022 at 8:56 am",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(255, 91, 90, 90),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Normal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //go to new_reading_page
                    Navigator.pushNamed(context, '/newReadingPage');
                  },
                  style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(362, 56)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(2557, 117, 68, 191))),
                  child: const Text(
                    "Add Pressure Reading",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  //BUT IT WORKS THO
                  height: 80,
                  width: 300,
                )
              ],
            )));
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'I would like to be known as',
                            style:
                                TextStyle(fontSize: 36.0, color: Colors.black)),
                        TextSpan(
                            text: '(optional)',
                            style: TextStyle(color: Colors.grey)),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Please provide me your pronoun / gender"),
                    ),
                  ),
                ),

                //second copy pase
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'I would like to be called by',
                            style:
                                TextStyle(fontSize: 36.0, color: Colors.black)),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Please enter your profile name"),
                    ),
                  ),
                ),

                //third copy pase
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'I\'m studying / Would like to study',
                            style:
                                TextStyle(fontSize: 36.0, color: Colors.black)),
                      ]),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Art"),
                    ),

                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Technology"),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Economics"),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Science"),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Psychology"),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Marketing"),
                    ),
                  ),
                ),

                SizedBox(height: 10.0),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: ("Design"),
                    ),
                  ),
                ),

                SizedBox(height: 20),


                Padding(
                  padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Cancel"),
                        ),
                      ),

                      SizedBox(width: 20),

                      Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor : Colors.greenAccent,
                        ),
                        )),
                    ],
                  ),
                ),

                SizedBox(height: 20),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

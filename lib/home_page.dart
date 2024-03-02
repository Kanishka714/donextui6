import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late double width, height;
  String? selectedRadio;

  @override
  Widget build(BuildContext context) {
    //height = MediaQuery.of(context).size.height;
    //width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:35.0),
          child: Container(
            //height: height*.1,
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
                            style: TextStyle(fontSize: 36.0, color: Colors.black),
                          ),
                          TextSpan(
                            text: '(optional)',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Please provide me your pronoun / gender",
                      ),
                    ),
                  ),

                  // Second text field
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'I would like to be called by',
                            style: TextStyle(fontSize: 36.0, color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: "Please enter your profile name",
                      ),
                    ),
                  ),

                  // Third text field
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'I\'m studying / Would like to study',
                            style: TextStyle(fontSize: 36.0, color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),

                  // Example of dynamic generation of text fields
                  // This can be done for all the text fields related to studying preferences
                  SizedBox(height: 10.0),
                  generateStudyTextField("Art"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Technology"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Economics"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Science"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Psychology"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Marketing"),
                  SizedBox(height: 10.0),
                  generateStudyTextField("Design"),
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Cancel"),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Save"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.greenAccent,
                            ),
                          ),
                        ),
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

  // Function to generate text field for studying preference
  Widget generateStudyTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                selectedRadio = hintText;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Radio(
                value: hintText,
                groupValue: selectedRadio,
                onChanged: (value) {
                  setState(() {
                    selectedRadio = value as String?;
                  });
                },
                activeColor: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

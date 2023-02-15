import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [IconButton(
          onPressed: () {
            debugPrint('Actions');
        }, 
        icon: const Icon(
          Icons.info_outline
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/nasa-rTZW4f02zY8-unsplash.jpg'),
          const SizedBox(height: 10,),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'Text Widget',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.indigo : Colors.blue,              
            ),
            onPressed: () {
              debugPrint('Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: (){
              debugPrint('This is the row');
            },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.local_fire_department,
                color: Colors.blue,
              ),
              Text('Row widget'),
              Icon(
                Icons.local_fire_department
              ),
            ],
           ),
          ),
          Switch(
            value: isSwitch, 
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;       
              });

            },
          ),
          Checkbox(
            value: isCheckbox,
            onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
            },
          ),
          Image.network('https://media.istockphoto.com/id/697120006/photo/amazing-cloudscape-on-the-sky.jpg?s=612x612&w=0&k=20&c=6GK5lZu6xbOpVBNw4tnyoMiu_O8JrD6Et1-TM2b6dqg=')
        ],
       ),
      ),
    );
  }
}
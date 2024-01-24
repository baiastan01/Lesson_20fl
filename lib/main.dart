import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.shopping_cart,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              controller: controller,
            ),
            MyButoon(controller: controller),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Gfdg",
              ),
            ),
            InkWell(
              onTap: () {
                print("object");
              },
              child: Image.network(
                "https://t3.ftcdn.net/jpg/02/48/42/64/360_F_248426448_NVKLywWqArG2ADUxDq6QprtIzsF82dMF.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButoon extends StatelessWidget {
  const MyButoon({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
        ),
        onLongPress: () {},
        onPressed: () {
          print(controller.text);
        },
        child: const Text(
          "Text",
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      // maxLength: 9,
      // maxLines: 6,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        fillColor: Colors.grey,
        filled: true,
        hintText: "Логин",
        prefixIcon: const Icon(Icons.abc),
        suffixIcon: IconButton(
          onPressed: () {
            controller.clear();
          },
          icon: const Icon(
            Icons.delete,
          ),
        ),
        label: const Text("Lable"),
        helperText: "Helper",
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              25,
            ),
          ),
        ),
        // errorText: "Error",
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        disabledBorder: const UnderlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.green,
          width: 5,
        )),
      ),
    );
  }
}

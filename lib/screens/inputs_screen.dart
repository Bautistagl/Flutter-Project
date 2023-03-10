import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y forms"),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    TextFormField(
                      autofocus: true,
                      initialValue: "",
                      onChanged: (value) {
                        print(value);
                      },
                    )
                  ],
                ))),
      ),
    );
  }
}

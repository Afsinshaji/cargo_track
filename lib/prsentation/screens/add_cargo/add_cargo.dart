import 'package:flutter/material.dart';

class AddCargoPage extends StatelessWidget {
  const AddCargoPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? invoicecontroller;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: invoicecontroller,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.file_open),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
          )
        ],
      )),
    );
  }
}

import 'dart:developer';

import 'package:cargo_track/application/riverpod/invoice/invoice_screen.dart';
import 'package:cargo_track/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReWeightTextField extends ConsumerWidget {
  const ReWeightTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.text,
 
  });

  final TextEditingController controller;

  final IconData icon;
  final String text;
  

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Material(
        color: kBlackColor,
        shadowColor: kBlackColor,
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: TextFormField(
        
          onEditingComplete: () {
            log('complete');
             ref.read(reWeightField.notifier).state = true;
          },
          onChanged: (value) {
          
           
            if(value.isEmpty){
             ref.read(reWeightField.notifier).state = false;  
            }else{
               ref.read(reWeightField.notifier).state = true;
            }
           
          },
          textAlign: TextAlign.start,
          controller: controller,
          cursorColor: kWhiteColor,
          style: TextStyle(
              color: kWhiteColor.withOpacity(0.9),
              fontWeight: FontWeight.bold,
              fontSize: 19),
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: kWhiteColor,
              ),
              hintText: text,
              hintStyle: TextStyle(
                color: kWhiteColor.withOpacity(0.9),
              ),
              filled: true,
              fillColor: kBlackColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              )),
          keyboardType: TextInputType.number,
          validator: (text) {
            if (text == null || text.isEmpty) {
              return "Can't be Empty";
            }

            return null;
          },
        ),
      ),
    );
  }
}

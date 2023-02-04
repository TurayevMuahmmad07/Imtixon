import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imtixon/add/phonecontact.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text('Add '),
        actions: [
          IconButton(
              onPressed: () {
                if (nameController.text != '' &&
                    surnameController.text != '' &&
                    phoneController.text != '') {}
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Contact(),
                  ),
                );
              },
              icon: Icon(Icons.check)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: "Enter your Name",
                    contentPadding: const EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  child: TextFormField(
                    controller: surnameController,
                    decoration: InputDecoration(
                        labelText: 'Surname',
                        hintText: "Enter your Surname",
                        contentPadding: const EdgeInsets.only(left: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                    child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  maxLength: 12,
                  decoration: InputDecoration(
                      hintText: "+998 __ ___ __ __",
                      labelText: 'Phone number',
                      contentPadding: const EdgeInsets.only(left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#1B202B"),
      appBar: AppBar(
        backgroundColor: HexColor("#1B202B"),
        leading: Builder(builder: (context) {
          return IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: HexColor("#F5F5F5"),));
        },),
        centerTitle: true,
        title: Text("Privacy & Policy",
        style: TextStyle(
          color: HexColor("#F5F5F5"),
          fontSize: 20,
          fontWeight: FontWeight.w700,
          fontFamily: "Mulish"
        ),
        ),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10,left: 30,right: 20),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontSize: 16,
                fontFamily: "Mulish",
                fontWeight: FontWeight.w700
              ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20,left: 30,right: 10),
              child: Text("The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
              style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontSize: 16,
                fontFamily: "Mulish",
                fontWeight: FontWeight.w700
              ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20,left: 30,right: 10),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              style: TextStyle(
                color: HexColor("#F5F5F5"),
                fontSize: 16,
                fontFamily: "Mulish",
                fontWeight: FontWeight.w700
              ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
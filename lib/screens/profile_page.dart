import 'package:firebase_test_3/widgets/text_field_with_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          width: double.maxFinite,
          height: 50.24,
          child: Center(
            child: Text(
              'Logout',
              //textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                //height: 0,
              ),
            ),
          ),
          decoration: ShapeDecoration(
            color: Color(0xFFF2CB63),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 113,
                height: 113,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/113x113"),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              TextFieldWithTextWidget(
                text: "Name",
                controller: nameController,
                onPressed: () {},
                iconPresent: false,
                icon: null,
              ),
              SizedBox(
                height: 21,
              ),
              TextFieldWithTextWidget(
                text: "Contact",
                controller: contactController,
                onPressed: () {},
                iconPresent: false,
                icon: null,
              ),
              SizedBox(
                height: 21,
              ),
              TextFieldWithTextWidget(
                text: "Password",
                controller: passwordController,
                onPressed: () {},
                iconPresent: true,
                icon: Icons.remove_red_eye,
              ),
              SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE8E4AB),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        backgroundColor: Color(0xFFE8E4AB),
        leading: IconButton(
          onPressed: () {
            context.go("/homepage");
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ui_login_edit_profile/screens/edit.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  int selectedindex=2;
  void onItemTap(int index){
    setState(() {
      selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      
      GNav(
        
        backgroundColor: Colors.grey.shade100,
        gap: 10,
        selectedIndex: 3,
        iconSize: 25,
 rippleColor: Colors.black26,

         tabs: const [
          GButton(icon: Icons.home,iconColor: Color.fromRGBO(188, 188, 188,1),),
          GButton(icon: Icons.explore,iconColor: Color.fromRGBO(188, 188, 188,1),),
          GButton(icon: Icons.bookmark,iconColor: Color.fromRGBO(188, 188, 188,1),),  
          GButton(icon: Icons.person , text: "Profile",iconColor: Color.fromRGBO(188, 188, 188,1),),

         ],
       ) ,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                          height: 160,
                          width: 120,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/OIP.jpeg"),
                                  fit: BoxFit.cover))),
                      Positioned(
                        top: 120,
                        left: 40,
                        child: Container(
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const edit_profile(),));
                              }, icon: const Icon(Icons.edit)),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(225, 246, 255, 1),
                            border: Border.all(color: Colors.white, width: 3),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    "Mr.Spongebob",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                const Center(
                  child: Text(
                    "Spongebob-ka3-2lhamor@gmail.com",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    "Become an publisher",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account settings",
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Personal information",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Notifications",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time spent",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                  height: 35,
                ),
                Text(
                      "Help & Support",
                      style: TextStyle(fontSize: 16, color: Colors.black38),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy policy",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FAQ & Help",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Log out",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500,color: Colors.red),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

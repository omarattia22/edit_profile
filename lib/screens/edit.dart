import 'package:flutter/material.dart';
import 'package:ui_login_edit_profile/screens/profile.dart';

class edit_profile extends StatefulWidget {
  const edit_profile({super.key});

  @override
  State<edit_profile> createState() => _edit_profileState();
}

class _edit_profileState extends State<edit_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(blurRadius: 0.123, offset: Offset(0.5, 0.5))
                          ]),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const profile(),
                                ));
                          },
                          icon: const Icon(Icons.arrow_back)),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Edit profile",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                      height: 160,
                      width: 120,
                      margin: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/OIP.jpeg"),
                              fit: BoxFit.cover))),
                ),
                const Center(
                  child: Text(
                    "Edit image",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey.shade50,
                        child: ListTile(
                          leading: const Icon(Icons.email),
                          title: const Text(
                            "Spongebob-ka3-2lhamor@gmail.com",
                            style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black45,)),
                              child: IconButton(iconSize: 16,padding: const EdgeInsets.only(right: 1),
                                icon: const Icon(Icons.close_outlined,color: Colors.black45,),
                                onPressed: () {},
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey.shade50,
                        child: ListTile(
                          leading: const Icon(Icons.email),
                          title: const Text(
                            "Mr.Spongebob",
                            style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w500),
                          ),
                          trailing: Container(
                            height: 20,
                            width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black45,)),
                              child: IconButton(iconSize: 16,padding: const EdgeInsets.only(right: 1),
                                icon: const Icon(Icons.close_outlined,color: Colors.black45,  ),
                                onPressed: () {},
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
               const Text(
                          "Change password",
                          style: TextStyle(fontSize: 16, color: Colors.black38),
                        ),
                        const SizedBox(height: 15,),
                         Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey.shade50,
                        child: const ListTile(
                          leading: Icon(Icons.lock,color: Colors.black45,),
                          title: Text(
                            "Enter old password",
                            style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w500),
                          ),
                         
                        ),
                      ),
                    ],
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 25),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey.shade50,
                        child: const ListTile(
                          leading: Icon(Icons.lock,color: Colors.black45,),
                          title: Text(
                            "Enter new password",
                            style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w500),
                          ),
                         
                        ),
                      ),
                      const SizedBox(height: 150,),
                      
                      Container(
                       
                        decoration: BoxDecoration(color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                        
                        width: double.infinity,
                        height:70,
                        child: const Padding(
                          padding: EdgeInsets.all(15  ),
                          child: Text("Save", style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                          ),
                          textAlign: TextAlign.center,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyProfile extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<MyProfile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  void initState() {
    _nameController.text = "Mohammed Gamal";
    _ageController.text = "21";
    _weightController.text = "85";

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ScreenSize = MediaQuery.of(context).size ;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: const Text('My Profile', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/Burger.svg'),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/total cost.svg'),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/shopping-cart.svg'),
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Hero(
                    tag: 'profile_picture',
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/user.jpg"),
                          radius: 45,
                          backgroundColor: Colors.white70,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(width: 10),
                            Text(
                              'Holy Rezk',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 10),
                            Text('holyrezk@mail.com'),
                          ],
                        ),
                         SizedBox(width: ScreenSize.width * 0.24),
                        IconButton(
                          icon: SvgPicture.asset('assets/Vector.svg'),
                          color: Colors.grey,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Color of the border
                        width: 1.0, // Width of the border
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white70,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/server.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "My orders",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                           SizedBox(
                            width: ScreenSize.width * 0.49,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Color of the border
                        width: 1.0, // Width of the border
                      ),
                      borderRadius: BorderRadius.circular(8.0), //
                      color: Colors.white70,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/credit-card.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Payment method",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                           SizedBox(
                            width: ScreenSize.width * 0.39,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Color of the border
                        width: 1.0, // Width of the border
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white70,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/map-pin.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Delivery address",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                           SizedBox(
                            width: ScreenSize.width * 0.39,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_outlined),
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: ScreenSize.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Color of the border
                        width: 1.0, // Width of the border
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white70,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/log-out.svg'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Sign out",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

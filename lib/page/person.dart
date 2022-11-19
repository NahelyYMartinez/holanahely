import 'dart:js';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:custom_signin_buttons/custom_signin_buttons.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Person extends StatelessWidget {
  const Person({super.key});
  final double coverHeight = 310;
  final double profileHeight = 144;
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'assets/portada.jpg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage(
          'assets/perfil2.jpg',
        ),
      );
  Widget buildContent() => Column(
        children: [
          const SizedBox(height: 5),
          Text(
            'Nahely Yañez',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Ingeniera en sistemas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: SignInButton(
                    button: Button.Facebook,
                    width: 15,
                    borderRadius: 30,
                    small: true,
                    onPressed: () {
                      const url =
                          "https://www.facebook.com/nahely.yanezmartinez";
                      launchURL(url);
                    },
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  child: SignInButton(
                    button: Button.Instagram,
                    width: 15,
                    borderRadius: 30,
                    small: true,
                    onPressed: () {
                      const url =
                          "https://instagram.com/nahely_nym_06?igshid=YmMyMTA2M2Y=";
                      launchURL(url);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: SignInButton(
                    button: Button.Twitter,
                    width: 15,
                    borderRadius: 30,
                    small: true,
                    onPressed: () {
                      const url =
                          "https://twitter.com/Nahelyyanez?t=Uyleomf3uIpfcn3wXW6IZw&s=09";
                      launchURL(url);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: SignInButton(
                    button: Button.LinkedIn,
                    width: 15,
                    borderRadius: 30,
                    small: true,
                    onPressed: () {
                      const url =
                          "http://www.linkedin.com/in/nahely-yañez-martinez-23b174248";
                      launchURL(url);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "INFORMACIÓN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: const Icon(
                                size: 30,
                                Icons.school,
                                color: Color.fromARGB(255, 3, 7, 20),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              child: Text(
                                "Estudia en :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " Unifranz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: const Icon(
                                size: 30,
                                Icons.favorite,
                                color: Color.fromARGB(255, 3, 7, 20),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              child: Text(
                                "Estado civil :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " Soltera",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: const Icon(
                                size: 30,
                                Icons.home,
                                color: Color.fromARGB(255, 3, 7, 20),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              child: Text(
                                "Vive en :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " Santa Cruz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: const Icon(
                                size: 30,
                                Icons.work,
                                color: Color.fromARGB(255, 3, 7, 20),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Container(
                              child: Text(
                                "Trabaja en :",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                " Unifranz Santa Cruz",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}

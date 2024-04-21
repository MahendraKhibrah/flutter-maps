import 'package:flutter/material.dart';
import 'package:maps/pages/maps_v1_page.dart';
import 'package:maps/pages/maps_v2_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://user-images.githubusercontent.com/75456232/212501850-7266409a-f0fd-4839-ba9a-d328a464c76c.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
              child: Container(
                  constraints:
                      const BoxConstraints.expand(height: double.infinity),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50.0)),
                  ),
                  transform: Matrix4.rotationZ(0.2),
                  child: Column(
                    children: <Widget>[
                      Semantics(
                          label: "Testing gambar",
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://user-images.githubusercontent.com/75456232/212501850-7266409a-f0fd-4839-ba9a-d328a464c76c.png"),
                              ),
                            ),
                          )),
                      Text(
                        "in Flutter",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MapsV1Page(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text(
                          "Google Maps v1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MapsV2Page(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          "Google Maps v2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}

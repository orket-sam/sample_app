import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  void forever(
    BuildContext ctx,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: ctx,
      builder: (ctx) => DraggableScrollableSheet(
          maxChildSize: 0.9,
          minChildSize: 0.3,
          initialChildSize: 0.3,
          expand: false,
          builder: (BuildContext ctx, ScrollController dragScroll) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView(
                      controller: dragScroll,
                      children: List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 18.0, right: 10, left: 10),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                              bottom: Radius.circular(20),
                            ),
                            child: Image.network(
                              'https://picsum.photos/250?image=9',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          forever(context);
        },
        child: const Icon(Icons.more_vert),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  HorizontalListView({
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              itemCount: children.length,
              itemBuilder: (_, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: children[index],
                    ),
                  ),
                );
              },
            ),

            // ListView(
            //   padding: EdgeInsets.symmetric(horizontal: 8),
            //   scrollDirection: Axis.horizontal,
            //   children: children,
            // ),
          ),
        ],
      ),
    );
  }
}

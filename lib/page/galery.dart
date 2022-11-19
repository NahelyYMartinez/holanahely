import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter/material.dart';

class Galery extends StatelessWidget {
  const Galery({super.key});

  get StaggeredGridViem => null;

  get StaggeredTile => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: MasonryGridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/Amiga.jpg')),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget galeria() {
    return StaggeredGridViem.countBuilder(
      crosAxisCount: 4,
      itemCount: 6,
      itemBuilder: (BuildContext conyrxt, int index) {
        return Container(
          color: Colors.deepPurple,
          child: Center(child: Text(index.toString())),
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  }
}

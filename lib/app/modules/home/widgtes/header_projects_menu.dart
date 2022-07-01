import 'package:flutter/material.dart';
import 'package:job_timer/app/entities/project_status.dart';

class HeaderProjectsMenu extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        height: constraints.maxHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: constraints.maxWidth * .45,
              child: DropdownButtonFormField<ProjectStatus>(
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  contentPadding: EdgeInsets.all(7),
                  isCollapsed: true,
                ),
                items: ProjectStatus.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.label),
                        ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              width: constraints.maxWidth * .4,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Novo Projeto'),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  double get maxExtent => 60.0;

  @override
  double get minExtent => 60.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

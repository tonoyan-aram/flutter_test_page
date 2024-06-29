import 'package:flutter/material.dart';

import 'workspace.dart';

class WorkspaceCard extends StatelessWidget {
  final Workspace workspace;
  final void Function()? onPressed;

  const WorkspaceCard(this.workspace, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: workspace.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              bottom: 8.0,
            ),
            child: Text(
              workspace.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

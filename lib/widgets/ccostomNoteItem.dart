
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            'Flutter Tips',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              'Hi eman djfjnd nbnusf bfsuhaduh bfabuhughuh bsfuhu',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 20),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.black,
              size: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 22),
          child: Text(
            ' May 21,2003',
            style:
                TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 18),
          ),
        )
      ]),
    );
  }
}

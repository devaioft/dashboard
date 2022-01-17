
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    this.title,
    this.imageSrc,
  }) : super(key: key);

  final String? title;
  final String? imageSrc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey,
            )),
        child: ListTile(
          title: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    imageSrc!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                title!,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

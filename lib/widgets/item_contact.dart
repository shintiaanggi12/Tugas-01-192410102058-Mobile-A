import 'package:flutter/material.dart';
import 'package:project1/models/user.dart';

class ContactItem extends StatelessWidget {
  final User users;
  ContactItem(this.users);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.blue[100],
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            children: [
              Container(
                width: 61,
                height: 61,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(
                          users.imageUrl,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 30,
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        users.nama,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                      Text(users.email,
                          style: TextStyle(
                              color: Colors.black, fontSize: 18)),
                      Text(users.noHP,
                          style:
                              TextStyle(color: Colors.black, fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

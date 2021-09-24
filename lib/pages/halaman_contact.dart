import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/models/user.dart';
import 'package:project1/widgets/item_contact.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late List<User> users;
  @override
  void initState() {
    users = User.getUser();
    users.sort((a, b) => a.nama.compareTo(b.nama));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (var i = 0; i < users.length; i++)
              InkWell(
                onTap: () {},
                child: ContactItem(User(
                    id: users[i].id,
                    nama: users[i].nama,
                    email: users[i].email,
                    noHP: users[i].noHP,
                    imageUrl: users[i].imageUrl)),
              ),
          ],
        ),
      ),
    );
  }
}

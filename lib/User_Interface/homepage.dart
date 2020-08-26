import 'package:agenda_de_contatos/Helpers/new_contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  List<Contact> contatos = List();

  @override
  void iniState() {
    super.initState();

    helper.getAllContact().then((list) {
      setState(() {
        contatos = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contatos"),
          centerTitle: true,
          backgroundColor: Colors.purple,
          /*actions: [
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            )
          ],*/
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: Icon((Icons.add)),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: contatos.length,
            itemBuilder: (context, index) {}));
  }
}

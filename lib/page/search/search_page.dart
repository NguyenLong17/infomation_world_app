import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final typeSearch = ["name", "alpha", "currency", "lang", "capital"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return ListView.separated(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            elevation: 2,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Text(
                typeSearch[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemCount: typeSearch.length);
  }
}

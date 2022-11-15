import 'package:flutter/material.dart';
import 'package:workspace/pages/BuildAppbar.dart';
import 'package:workspace/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar("catalog"),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: gap_xl),
              _buildCatalog(Colors.cyan.shade50),
              SizedBox(height: gap_l),
              _buildCatalog(Colors.cyan.shade100),
              SizedBox(height: gap_l),
              _buildCatalog(Colors.cyan.shade200),
              SizedBox(height: gap_l),
              _buildCatalog(Colors.cyan.shade300),
              SizedBox(height: gap_l),
              _buildCatalog(Colors.cyan.shade400),
              SizedBox(height: gap_l),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCatalog(Colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 150,
          color: Colors,
        ),
        SizedBox(width: gap_xl),
        TextButton(
          onPressed: () {},
          child: Text(
            "add",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar(String text) {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
      ),
      backgroundColor: Color(0xff3860c4),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

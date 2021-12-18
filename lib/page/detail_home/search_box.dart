import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final String text;
  final ValueChanged<String> onchanged;

  const SearchBox({
    Key? key,
    required this.text,
    required this.onchanged,
  }) : super(key: key);

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 15),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white),
          onChanged: widget.onchanged,
        ),
      ),
    );
  }
}

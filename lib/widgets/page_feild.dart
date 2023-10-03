import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageFeild extends StatefulWidget {
  const PageFeild({Key? key, required this.onChanged, required this.onSubmitted}) : super(key: key);

  final void Function(String) onChanged;
  final void Function(String) onSubmitted;

  @override
  State<PageFeild> createState() => _PageFeildState();
}

class _PageFeildState extends State<PageFeild> {
  late TextEditingController textController;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    focusNode = FocusNode();
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(3), // Limits input to 4 characters
      ],
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      keyboardType: TextInputType.number,
      focusNode: focusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none

        ),
        constraints: const BoxConstraints(maxWidth: 60, maxHeight: 40),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        filled: true,
        fillColor: const Color(0XFFFFF5E3),
        hintText: '11',

      ),
    );
  }
}

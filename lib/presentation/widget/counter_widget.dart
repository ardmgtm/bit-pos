import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final Function(int value) onValueChange;

  const CounterWidget({
    Key? key,
    required this.onValueChange,
  }) : super(key: key);

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 1;

  @override
  void initState() {
    _count = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: _decrement,
          child: Icon(
            Icons.remove_circle_outline,
            size: 28,
            color: _count > 1
                ? Theme.of(context).colorScheme.primary
                : Colors.grey[400],
          ),
        ),
        SizedBox(
          height: 28,
          width: 28,
          child: Center(
            child: Text(
              _count.toString(),
            ),
          ),
        ),
        GestureDetector(
          onTap: _increment,
          child: Icon(
            Icons.add_circle_outline,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  void _increment() {
    setState(() {
      _count += 1;
    });
    widget.onValueChange(_count);
  }

  void _decrement() {
    if (_count > 1) {
      setState(() {
        _count -= 1;
      });
      widget.onValueChange(_count);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sample_sheet_app/sheet_header.dart';

class SampleSheet extends StatelessWidget {
  const SampleSheet();

  static const _radius = 12.0;

  static void show(BuildContext context) {
    showCupertinoModalBottomSheet<void>(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (_) => SampleSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.9;

    return Material(
      child: Container(
        constraints: BoxConstraints(maxHeight: maxHeight),
        decoration: _decoration,
        child: Column(
          children: <Widget>[
            _buildHeader,
            Expanded(
              child: _buildList,
            ),
          ],
        ),
      ),
    );
  }

  Decoration get _decoration {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: _borderRadius,
    );
  }

  BorderRadius get _borderRadius {
    return const BorderRadius.only(
      topRight: Radius.circular(_radius),
      topLeft: Radius.circular(_radius),
    );
  }

  Widget get _buildHeader => SheetHeader(
        borderRadius: _borderRadius,
      );

  Widget get _buildList {
    return ListView(
      shrinkWrap: true,
      children: const <Widget>[
        // 何かしらリスト
        ListTile(
          title: Text('aaa'),
        ),
        ListTile(
          title: Text('bbb'),
        ),
        ListTile(
          title: Text('ccc'),
        ),
        ListTile(
          title: Text('aaa'),
        ),
        ListTile(
          title: Text('bbb'),
        ),
        ListTile(
          title: Text('ccc'),
        ),
        ListTile(
          title: Text('aaa'),
        ),
        ListTile(
          title: Text('bbb'),
        ),
        ListTile(
          title: Text('ccc'),
        ),
        ListTile(
          title: Text('aaa'),
        ),
        ListTile(
          title: Text('bbb'),
        ),
        ListTile(
          title: Text('ccc'),
        ),
        ListTile(
          title: Text('aaa'),
        ),
        ListTile(
          title: Text('bbb'),
        ),
        ListTile(
          title: Text('ccc'),
        ),
      ],
    );
  }
}

class Radius3Rect extends StatelessWidget {
  const Radius3Rect({
    this.color = gray200,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration,
      width: 36,
      height: 5,
    );
  }

  Decoration get _decoration {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(3),
    );
  }
}

const gray200 = Color.fromARGB(255, 212, 212, 212);

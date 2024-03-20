import 'package:flutter/material.dart';
import 'package:taxperts_web_final/colors.dart';

class CustomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int, String) onItemSelected;

  const CustomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  OverlayEntry? _overlayEntry;
  final GlobalKey _mediaKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double p15 = screenWidth / 120;
    // Adjusted divider width calculation to use p15 for consistency
    double p20 = screenWidth / 90;
    double p30 = screenWidth / 60;
    double p60 = screenWidth / 30;

    Color activeColor = AppColor.appTeal;
    Color inactiveColor = Colors.black;
    Color startNowColor = AppColor.appOrange;
    double fontSize = 15;
    FontWeight fontWeight = FontWeight.w500;

    List<String> labels = ['Home', 'Tax Calculator', 'Services', 'Resources', 'Media', 'Contact'];
    List<String> routes = ['/home', '/tax-calculator', '/services', '/resources', '', '/contact'];

    List<Widget> navItems = [];
    for (int i = 0; i < labels.length; i++) {
      Widget item;
      if (labels[i] == 'Media') {
        item = GestureDetector(
          onTap: () {
            if (_overlayEntry == null) {
              _showPopupMenu();
            } else {
              _removePopupMenu();
            }
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: p15),
            child: Text(
              'Media',
              style: TextStyle(
                fontSize: fontSize,
                color: widget.selectedIndex == i ? activeColor : inactiveColor,
                fontWeight: fontWeight,
              ),
              key: _mediaKey,
            ),
          ),
        );
      } else {
        item = InkWell(
          onTap: () => widget.onItemSelected(i, routes[i]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: p15),
            child: Text(
              labels[i],
              style: TextStyle(
                fontSize: fontSize,
                color: widget.selectedIndex == i ? activeColor : inactiveColor,
                fontWeight: fontWeight,
              ),
            ),
          ),
        );
      }
      navItems.add(item);
      // Only add VerticalDivider if the item is not the last in the list
      if (i < labels.length - 1) {
        navItems.add(
          Container(height: 15, child: VerticalDivider(color: AppColor.appDarkGrey, thickness: 1, width: p15)),
        );
      }
    }

    Widget startNowButton = TextButton(
      onPressed: () => widget.onItemSelected(labels.length, '/start'),
      child: Text(
        'Start Now',
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: widget.selectedIndex == labels.length ? activeColor : startNowColor,
        ),
      ),
    );

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...navItems,
          Padding(
            padding: EdgeInsets.only(left: p60, right: p30),
            child: startNowButton,
          ),
        ],
      ),
    );
  }

  void _showPopupMenu() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  void _removePopupMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox = _mediaKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: 85, // Adjusted for specific width
        child: Material(
          elevation: 4.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Blog'),
                onTap: () {
                  _removePopupMenu();
                  widget.onItemSelected(-1, '/blog');
                },
              ),
              ListTile(
                title: Text('Vlog'),
                onTap: () {
                  _removePopupMenu();
                  widget.onItemSelected(-1, '/vlog');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

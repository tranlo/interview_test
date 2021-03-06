import 'package:flutter/material.dart';
import 'package:interviewtest/widget/info_person.dart';

class NavigationInfo extends StatefulWidget {
  NavigationInfo({this.address, this.phoneNumber, this.info, this.name, this.nat});

  final String address;
  final String phoneNumber;
  final String info;
  final String name;
  final String nat;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NavigationInfo> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions;
  List<IconData> _listIcon;

  Color color = Colors.black38;

  @override
  void initState() {
    super.initState();
    _listIcon =[
//      Icon(Icons.location_searching, color: color),
//      Icon(Icons.calendar_today, color: color),
//      Icon(Icons.map, color: color),
//      Icon(Icons.phone, color: color),
//      Icon(Icons.lock, color: color),
      Icons.location_searching,
      Icons.calendar_today,
      Icons.map,
      Icons.phone,
      Icons.lock,
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _widgetOptions = [
      InfoPerson(title: "My address is ",address: "${widget.address}"),
      InfoPerson(title: "My phone is ",address: "${widget.nat}"),
      InfoPerson(title: "My info is ",address: "${widget.info}"),
      InfoPerson(title: "My image is ",address: "${widget.phoneNumber}"),
      InfoPerson(title: "My name is ",address: "${widget.name}"),
    ];

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for(int i = 0; i < 5; i++)
          IconButton(
            icon: Icon(_listIcon[i], color: color,),
            onPressed: () {
              _onItemTapped(i);
            },
          )
      ],
    );
  }
}
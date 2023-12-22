import 'package:flutter/material.dart';

class StarbucksUi extends StatelessWidget {
  const StarbucksUi({super.key});

  @override
  Widget build(BuildContext context) {
    int _selectindex = 0;
    return Scaffold(
// floatingActionButton: ,
      appBar: AppBar(
        leading: Text("What's New"),
        actions: [
          Text('data'),
          Text('data'),
        ],
      ),
    body: NotificationListener<UserScrollNotification>(
    onNotification: (notification) {
    if (notification.direction == ScrollDirection.forward) {
    setState(() {
    isScrolled = true;
    });
    } else if (notification.direction == ScrollDirection.reverse) {
    setState(() {
    isScrolled = false;
    });
    }
    return isScrolled;
    },
    child: CustomScrollView(
    slivers: [
    SliverAppBar(
    flexibleSpace: Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: FlexibleSpaceBar(
    title: Image.asset(
    'assets/47.png',
    )),
    ),
    bottom: const PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: Row(
    children: [
    SizedBox(
    width: 8,
    ),
    Icon(
    Icons.local_activity,
    size: 30,
    ),
    Text(
    "What's New",
    style: TextStyle(fontSize: 20),
    ),
    Icon(
    Icons.pageview_sharp,
    size: 30,
    ),
    Text(
    "Coupon",
    style: TextStyle(fontSize: 20),
    ),
    Spacer(),
    Icon(
    Icons.beach_access,
    size: 30,
    ),
    SizedBox(
    width: 8,
    ),
    ],
    ),
    ),
    pinned: true,
    floating: true,
    expandedHeight: 200,
// actions: [
//
// ],
    ),
    SliverList(
    delegate: SliverChildListDelegate([
    Image.asset('assets/47.png'),
    Container(
    child: Image.asset('assets/47.png'),
    color: Colors.black12,
    ),
    Container(
    constraints: BoxConstraints.tightFor(width: 100, height: 200),
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    Container(
    child: Column(
    children: [
    Image.asset('assets/47.png'),
    ],
    )),
    Image.asset('assets/47.png'),
    Image.asset('assets/47.png'),
    ],
    ),
    ),
    Image.asset('assets/47.png'),
    ]))
    ],
    ),
    ),
    floatingActionButton: FloatingActionButton.extended(
    backgroundColor: Colors.green[800],
// shape: CircleBorder(),
    onPressed: () {},
    isExtended: isScrolled,
    icon: const Icon(Icons.motorcycle_rounded, color: Colors.white),
    label: const Text(
    'Delivers',
    style: TextStyle(color: Colors.white),
    ),
    ),

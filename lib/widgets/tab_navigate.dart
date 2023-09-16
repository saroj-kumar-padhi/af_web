import 'package:flutter/material.dart';

class TabDemo extends StatefulWidget {
  @override
  _TabDemoState createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          //  width: MediaQuery.of(context).size.width * 0.9,
          //  height: MediaQuery.of(context).size.height * 0.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          /* child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),*/
          child: TabBar(
            indicatorColor: Color.fromRGBO(64, 68, 143, 1),
            labelColor: Color.fromRGBO(64, 68, 143, 1),
            // dividerColor: Color.fromRGBO(64, 68, 143, 1),
            // overlayColor:  Color.fromRGBO(64, 68, 143, 1),
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Catagory',
              ),
              //Tab(text: 'Order'),
              Tab(text: 'Order'),
            ],
          ),
        ),
        //))
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: 20, // The total number of items in your list
            itemBuilder: (BuildContext context, int index) {
              // Build and return the widget for each item
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                        // offset: Offset(0, 1),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text('$index. Transaction $index'),
                    // You can customize the appearance of each item here
                  ),
                ),
              );
            },
          )
          // Center(child: Text('Tab 3 Content')),
          //   Center(child: Text('Tab  Content')),
        ],
      ),
    );
  }
}

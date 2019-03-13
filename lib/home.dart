import 'package:flutter/material.dart';

const List<String> tabNames = const<String>[
  'Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo', 'Foxtrot', 'Golf', 'Hotel', 'India'
];

class HomePage extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
              isScrollable: true,
                  tabs: new List.generate(tabNames.length, (index) {
                    return new Tab(text: tabNames[index].toUpperCase());
                  }),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          )
        ],
        title: Text('Task'),
      ),
      body: TabBarView(
          children: new List<Widget>.generate(tabNames.length, (int index) {
            return new Center(
              //child: new Text('${tabNames[index]}'),
              child: new Column(
                children: <Widget>[
                  new GestureDetector(
                  onTap:(){ Navigator.pushNamed(context, "/detail"); },
                  child: new Card(
                    child: new Column(
                      children: <Widget>[
                        new Image.network('https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg'),
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Icon(Icons.navigation),
                             ),
                             new Padding(
                               padding: new EdgeInsets.all(7.0),
                               child: new Text('${tabNames[index]}',style: new TextStyle(fontSize: 18.0),),
                             )
                            ],
                          )
                        )
                      ],
                    ),
                  )
                  )
                ],
              ),
              );
          }),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme;
}

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    // This method is called everytime the search term changes. 
    // If you want to add search suggestions as the user enters their search term, this is the place to do that.
    return Column();
  }
}
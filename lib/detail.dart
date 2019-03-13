import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailPage extends StatefulWidget {

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    // mapController.addMarker(
    //   MarkerOptions(
    //     position: LatLng(
    //       mapController.cameraPosition.target.latitude,
    //       mapController.cameraPosition.target.longitude,
    //     ),
    //   //infoWindowText: InfoWindowText('Random Place', '5 Star Rating'),
    //   icon: BitmapDescriptor.defaultMarker,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
            },
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new SizedBox(
              height: 200.0,
              width: double.infinity,
              child: new Carousel(
                images: [
                  new AssetImage('images/img1.jpg'),
                  new AssetImage('images/img2.jpg'),
                  new AssetImage('images/img3.jpg'),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightBlueAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.black.withOpacity(0.9),
              ),
            ),
            new Container(
              width: double.infinity,
              child: new Card(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[ 
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                          child: new Icon(
                            Icons.date_range
                          ),
                        ),
                        Padding(
                        padding: EdgeInsets.all(8.0),
                          child: new Text('Some Date, Start Time - End Time', textScaleFactor: 1.2),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                          child: new Icon(
                            Icons.navigation
                          ),
                        ),
                        Padding(
                        padding: EdgeInsets.all(8.0),
                          child: new Text('Pune, Maharashtra 411005', textScaleFactor: 1.2),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
                          child: new Icon(
                            Icons.local_offer
                          ),
                        ),
                        Padding(
                        padding: EdgeInsets.all(8.0),
                          child: new Text('Tickets start from Rs. 200', textScaleFactor: 1.2),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            new Container(
              width: double.infinity,
              child: new Card(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[ 
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0),
                          child: new Text('Contact', textScaleFactor: 1.5),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[                        
                        Padding(
                          padding: EdgeInsets.fromLTRB(16.0, 2.0, 2.0, 8.0),
                          child: new Text('Some Event name', textScaleFactor: 1.2),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 4.0, 4.0),
                          child: new Icon(
                            Icons.phone
                          ),
                        ),
                        Padding(
                        padding: EdgeInsets.only(left: 4.0),
                          child: new Text('9876543210', textScaleFactor: 1.1),
                        ),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 4.0, 4.0, 8.0),
                          child: new Icon(
                            Icons.mail
                          ),
                        ),
                        Padding(
                        padding: EdgeInsets.only(left: 4.0),
                          child: new Text('name@mail.com', textScaleFactor: 1.1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            new Container(
              width: double.infinity,
              height: 300.0,
              child: new Card(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[ 
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.all(8.0),
                          child: new Text('Location', textScaleFactor: 1.5),
                        ),
                      ],
                    ),
                    new Container(
                      width: double.infinity,
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                      height: 240.0,                                                                    
                              child: GoogleMap(
                                onMapCreated: _onMapCreated,
                                options: GoogleMapOptions(
                                  cameraPosition: CameraPosition(
                                    target: _center,
                                    zoom: 11.0,
                                  ),
                                ),
                              ),
                    ),
                  ],
                ),
              ),
            ),

            new Container(
              width: double.infinity,
              child: new Card(
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[ 
                    new Row(
                      children: <Widget>[
                        Padding(
                        padding: EdgeInsets.all(8.0),
                          child: new Text('Tags', textScaleFactor: 1.5),
                        ),
                      ],
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[                                         
                          ButtonBar(
                            children: <Widget>[                              
                              FlatButton(
                                child: Text('#Event'),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                },
                              ),  
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {},
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('View Tickets'),
        ),
      ),
    );
  }
}
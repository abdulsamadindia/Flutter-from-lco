import 'package:firebase_database/firebase_database.dart';

class myData {
 String name, email, mobile, address, imageurl;

 myData (this.name, this.email, this.mobile, this.address, this.imageurl);

 myData.fromSnapshot(DataSnapshot snapshot);
}
class Note{
  int _id;
  String _title;
  String _description;
  String _date;

  Note(this._date,this._description,this._title);
  Note.withid(this._id,this._date,this._description,this._title);

  int get id=> _id;
  String get title=> _title;
  String get desc=> _description;
  String get date=> _date;

  set title(String newtitle){
    if (newtitle.length<= 255 ){
      this._title=newtitle;
    }
  }
  set description(String newdesc){
    if (newdesc.length<= 5000 ){
      this._description=newdesc;
    }
  } 
  set date(String newdate){
   {
      this._date=newdate;
    }
  }

  // convert a note object into a map object
  Map<String, dynamic> toMap(){
    var map = Map<String, dynamic>();
    map ['title'] = _title;
    map ['desc'] = _description;
    map ['date']= _date;

    if (id != null){
      map ['id']= _id;
    }
    return map;
  }
  // extract a note object from a map object
  Note.fromMapObject(Map<String, dynamic>map){
    this._id = map['id'];
    this._title= map['title'];
    this._description= map['desc'];
    this._date= map['date'];
  }
}
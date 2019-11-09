class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  String _alamat;

  int _priority;
  Note(this._title,this._date,this._alamat, this._priority, [this._description]);
  Note.withId(this._id, this._title,this._alamat,this._date, this._priority,
      [this._description]);
  int get id => _id;
  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  String get date => _date;

  String get alamat => _alamat;

  
  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

set alamat(String value) {
    _alamat = value;
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  set date(String newDate) {
    if (newDate.length <= 255) {
      this._date = newDate;
    }
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;
    map['alamat'] = _alamat;
    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
    this._alamat = map ['alamat'];
  
  }
}

class JsonDataModel { 
  int? id; 
  String? name;
  String? email;
  String? username;
  JsonDataModel({
    
  this.id,  this.name, this.email,this.username,
  });

  factory JsonDataModel.fromJson(Map<String, dynamic> json) {
  
  return JsonDataModel( 
    id : json['id'],
    name : json['name'], 
    email : json['email'], 
    username: json['username'],

);
  
  }
}

 
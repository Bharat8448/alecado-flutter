// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:convert';

LoginResponseModel loginResponseJson(String str) => LoginResponseModel.fromJson(json.decode(str));



class LoginResponseModel {
  LoginResponseModel({
    required this.data,
  });
  late final Data data;
  
  LoginResponseModel.fromJson(Map<String, dynamic> json){
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.user,
    required this.accessToken,
  });
  late final User user;
  late final String accessToken;
  
  Data.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']);
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['accessToken'] = accessToken;
    return _data;
  }
}

class User {
  User({
    required this.$__,
    required this.$isNew,
    required this.doc,
  });
  late $_ $__;
  late final bool $isNew;
  late final _doc doc;
  
  User.fromJson(Map<String, dynamic> json){
    $__ = $_.fromJson(json['\$__']);
    $isNew = json['\$isNew'];
    doc = _doc.fromJson(json['_doc']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['\$__'] = $__.toJson();
    _data['\$isNew'] = $isNew;
    _data['_doc'] = doc.toJson();
    return _data;
  }
}

class $_ {
  $_({
    required this.activePaths,
    required this.strictMode,
    required this.skipId,
    required this.selected,
    required this.fields,
     this.exclude,
    required this.id,
  });
  late final ActivePaths activePaths;
  late final bool strictMode;
  late final bool skipId;
  late final Selected selected;
  late final Fields fields;
  late final Null exclude;
  late final String id;
  
  $_.fromJson(Map<String, dynamic> json){
    activePaths = ActivePaths.fromJson(json['activePaths']);
    strictMode = json['strictMode'];
    skipId = json['skipId'];
    selected = Selected.fromJson(json['selected']);
    fields = Fields.fromJson(json['fields']);
    exclude = null;
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['activePaths'] = activePaths.toJson();
    _data['strictMode'] = strictMode;
    _data['skipId'] = skipId;
    _data['selected'] = selected.toJson();
    _data['fields'] = fields.toJson();
    _data['exclude'] = exclude;
    _data['_id'] = id;
    return _data;
  }
}

class ActivePaths {
  ActivePaths({
    required this.paths,
    required this.states,
    required this.stateNames,
  });
  late final Paths paths;
  late final States states;
  late final List<String> stateNames;
  
  ActivePaths.fromJson(Map<String, dynamic> json){
    paths = Paths.fromJson(json['paths']);
    states = States.fromJson(json['states']);
    stateNames = List.castFrom<dynamic, String>(json['stateNames']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['paths'] = paths.toJson();
    _data['states'] = states.toJson();
    _data['stateNames'] = stateNames;
    return _data;
  }
}

class Paths {
  Paths({
    required this.password,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.name,
    required this.V,
    required this.verified,
  });
  late final String password;
  late final String email;
  late final String createdAt;
  late final String updatedAt;
  late final String id;
  late final String name;
  late final String V;
  late final String verified;
  
  Paths.fromJson(Map<String, dynamic> json){
    password = json['password'];
    email = json['email'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['_id'];
    name = json['name'];
    V = json['__v'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['password'] = password;
    _data['email'] = email;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['_id'] = id;
    _data['name'] = name;
    _data['__v'] = V;
    _data['verified'] = verified;
    return _data;
  }
}

class States {
  States({
    required this.ignore,
    required this.defa,
    required this.init,
    required this.modify,
    required this.require,
  });
  late final Ignore ignore;
  late final Default defa;
  late final Init init;
  late final Modify modify;
  late final Require require;
  
  States.fromJson(Map<String, dynamic> json){
    ignore = Ignore.fromJson(json['ignore']);
    defa = Default.fromJson(json['default']);
    init = Init.fromJson(json['init']);
    modify = Modify.fromJson(json['modify']);
    require = Require.fromJson(json['require']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ignore'] = ignore.toJson();
    _data['default'] = defa.toJson();
    _data['init'] = init.toJson();
    _data['modify'] = modify.toJson();
    _data['require'] = require.toJson();
    return _data;
  }
}

class Ignore {
  Ignore();
  
  Ignore.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Default {
  Default();
  
  Default.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Init {
  Init({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
    required this.V,
    required this.verified,
  });
  late final bool id;
  late final bool name;
  late final bool email;
  late final bool password;
  late final bool createdAt;
  late final bool updatedAt;
  late final bool V;
  late final bool verified;
  
  Init.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['__v'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['password'] = password;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = V;
    _data['verified'] = verified;
    return _data;
  }
}

class Modify {
  Modify();
  
  Modify.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Require {
  Require();
  
  Require.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Selected {
  Selected();
  
  Selected.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Fields {
  Fields();
  
  Fields.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class _doc {
  _doc({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
    required this.V,
    required this.verified,
  });
  late final String id;
  late final String name;
  late final String email;
  late final String password;
  late final String createdAt;
  late final String updatedAt;
  late final int V;
  late final bool verified;
  
  _doc.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['__v'];
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['password'] = password;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = V;
    _data['verified'] = verified;
    return _data;
  }
}
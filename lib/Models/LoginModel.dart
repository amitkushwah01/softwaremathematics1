class LoginModel {
  String? requestStatus;
  String? operation;
  Data? data;

  LoginModel({this.requestStatus, this.operation, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    requestStatus = json['requestStatus'];
    operation = json['operation'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestStatus'] = this.requestStatus;
    data['operation'] = this.operation;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Dto? dto;

  Data({this.dto});

  Data.fromJson(Map<String, dynamic> json) {
    dto = json['dto'] != null ? new Dto.fromJson(json['dto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dto != null) {
      data['dto'] = this.dto!.toJson();
    }
    return data;
  }
}

class Dto {
  int? id;
  String? createdby;
  String? createddate;
  Null? modifiedby;
  Null? modifieddate;
  Null? approver;
  Null? approvertype;
  Null? approvedby;
  Null? approveddate;
  Null? latlong;
  String? recstatus;
  String? syncstatus;
  String? status;
  Null? documentofproof;
  Null? location;
  Null? tempid;
  Null? tags;
  String? code;
  String? emailid;
  String? mobileno;
  String? username;
  String? password;
  String? profileid;
  Null? isloggedin;
  Null? logincount;
  String? isactive;
  String? resourcecode;
  String? resourcename;
  String? name;
  String? title;
  String? rolename;
  String? rolecode;
  Null? age;
  Null? experience;
  Null? sex;
  Null? description;
  String? classname;

  Dto(
      {this.id,
      this.createdby,
      this.createddate,
      this.modifiedby,
      this.modifieddate,
      this.approver,
      this.approvertype,
      this.approvedby,
      this.approveddate,
      this.latlong,
      this.recstatus,
      this.syncstatus,
      this.status,
      this.documentofproof,
      this.location,
      this.tempid,
      this.tags,
      this.code,
      this.emailid,
      this.mobileno,
      this.username,
      this.password,
      this.profileid,
      this.isloggedin,
      this.logincount,
      this.isactive,
      this.resourcecode,
      this.resourcename,
      this.name,
      this.title,
      this.rolename,
      this.rolecode,
      this.age,
      this.experience,
      this.sex,
      this.description,
      this.classname});

  Dto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdby = json['createdby'];
    createddate = json['createddate'];
    modifiedby = json['modifiedby'];
    modifieddate = json['modifieddate'];
    approver = json['approver'];
    approvertype = json['approvertype'];
    approvedby = json['approvedby'];
    approveddate = json['approveddate'];
    latlong = json['latlong'];
    recstatus = json['recstatus'];
    syncstatus = json['syncstatus'];
    status = json['status'];
    documentofproof = json['documentofproof'];
    location = json['location'];
    tempid = json['tempid'];
    tags = json['tags'];
    code = json['code'];
    emailid = json['emailid'];
    mobileno = json['mobileno'];
    username = json['username'];
    password = json['password'];
    profileid = json['profileid'];
    isloggedin = json['isloggedin'];
    logincount = json['logincount'];
    isactive = json['isactive'];
    resourcecode = json['resourcecode'];
    resourcename = json['resourcename'];
    name = json['name'];
    title = json['title'];
    rolename = json['rolename'];
    rolecode = json['rolecode'];
    age = json['age'];
    experience = json['experience'];
    sex = json['sex'];
    description = json['description'];
    classname = json['classname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['createdby'] = this.createdby;
    data['createddate'] = this.createddate;
    data['modifiedby'] = this.modifiedby;
    data['modifieddate'] = this.modifieddate;
    data['approver'] = this.approver;
    data['approvertype'] = this.approvertype;
    data['approvedby'] = this.approvedby;
    data['approveddate'] = this.approveddate;
    data['latlong'] = this.latlong;
    data['recstatus'] = this.recstatus;
    data['syncstatus'] = this.syncstatus;
    data['status'] = this.status;
    data['documentofproof'] = this.documentofproof;
    data['location'] = this.location;
    data['tempid'] = this.tempid;
    data['tags'] = this.tags;
    data['code'] = this.code;
    data['emailid'] = this.emailid;
    data['mobileno'] = this.mobileno;
    data['username'] = this.username;
    data['password'] = this.password;
    data['profileid'] = this.profileid;
    data['isloggedin'] = this.isloggedin;
    data['logincount'] = this.logincount;
    data['isactive'] = this.isactive;
    data['resourcecode'] = this.resourcecode;
    data['resourcename'] = this.resourcename;
    data['name'] = this.name;
    data['title'] = this.title;
    data['rolename'] = this.rolename;
    data['rolecode'] = this.rolecode;
    data['age'] = this.age;
    data['experience'] = this.experience;
    data['sex'] = this.sex;
    data['description'] = this.description;
    data['classname'] = this.classname;
    return data;
  }
}

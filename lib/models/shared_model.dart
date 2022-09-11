import 'package:facebook_clone/models/status_model.dart';

class SharedStatus {
  String sImage = "";
  String sName = "";
  String sTime = "";
  UserStatus status;

  SharedStatus(this.sImage, this.sName, this.sTime, this.status);
}
import 'dart:convert';
import 'package:http/http.dart';

class WorldTime{

  String location;
  String? time;
  String flag;
  String url_base;

  WorldTime({required this.location, required this.flag, required this.url_base});

  Future<void> getTime() async{
    try{
      Uri url = Uri.https('worldtimeapi.org', 'api/timezone/$url_base');
      Response res = await get(url);
      Map data = jsonDecode(res.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    }
    catch (e){
      time = 'error';
    }
  }
}
// import 'dart:convert';
// import '../Backend/Model/user.dart';
// import 'package:flutter/cupertino.dart';

// ValueNotifier<User> currentUser = ValueNotifier(User());

// Future postMethod({String? url, Map? data, String? header}) async {
//   // print('url ' + url!);
//   // print('Inputs ' + data.toString());

//   final client = http.Client();
//   final response = await client.post(
//     Uri.parse(url!),
//     body: data,
//     headers: header != null
//         ? {'GoogleAccessToken': header}
//         : {'authorization': "Bearer " + currentUser.value.token!},
//   );

//   print('Status Code ' + response.statusCode.toString());
//   print('Response ' + response.body);

//   if (response.statusCode == 200 ||
//       response.statusCode == 201 ||
//       response.statusCode == 501 ||
//       response.statusCode == 404 ||
//       response.statusCode == 403 ||
//       response.statusCode == 400 ||
//       response.statusCode == 409 ||
//       response.statusCode == 500) {
//     var data = jsonDecode(response.body);
//     return data;
//   } else {
//     throw Exception(response.body);
//   }
// }

// Future putMethod({String? url, Map? data}) async {
//   // print('url ' + url!);
//   // print('Inputs ' + data.toString());
//   // print(token.value);

//   final client = http.Client();
//   final response = await client.put(
//     Uri.parse(url!),
//     // headers: {'Content-Type': 'application/json'},
//     body: data,
//   );

//   print('Status Code ' + response.statusCode.toString());
//   print('Response ' + response.body);

//   if (response.statusCode == 200 ||
//       response.statusCode == 201 ||
//       response.statusCode == 501 ||
//       response.statusCode == 404 ||
//       response.statusCode == 403 ||
//       response.statusCode == 400 ||
//       response.statusCode == 409 ||
//       response.statusCode == 500) {
//     var data = jsonDecode(response.body);
//     return data;
//   } else if (response.statusCode == 401) {
//     return {
//       'status': 'error',
//       'message': 'Your token will be expired please logout and login again'
//     };
//   } else {
//     throw Exception(response.body);
//   }
// }

// Future getMethod({String? url}) async {
//   print('url ' + url!);
//   // print(token.value);

//   final client = http.Client();
//   // String token =
//   //     "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZXN1bHQiOnsiaWQiOjE3MiwiR29vZ2xlSWQiOiIxMDc5MTc5MzY1ODMzNDk0MjIxMTYiLCJGYWNlYm9va0lkIjoiIiwiRmlyc3ROYW1lIjoiRmFzdCIsIkxhc3ROYW1lIjoibiBFYXN5IExlYXJuaW5nIiwiR2VuZGVyIjoiIiwiRW1haWwiOiJmYXN0bmVhc3lsZWFybmluZ0BnbWFpbC5jb20iLCJQaG90b1VybCI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FBVFhBSnpSMThTMmc3Slo4dTgwTTVNMWlnN19SWlBPQzRWSGdOVjVYUzlIPXM5Ni1jIiwiTWFwTG9jYXRpb24iOiIiLCJBcHRPckZsYXQiOiIiLCJMYW5kbWFyayI6IiIsIkxhdGl0dWRlIjoiMzkuOTE3ODAzMiIsIkxvbmdpdHVkZSI6Ii04Mi43MzQ3MTQyIiwiUmVmZXJyZXJDb2RlIjpudWxsLCJUb2tlblZlcnNpb24iOjEsIlVzZXJJZCI6MTcyLCJSb2xlSWQiOjIsIlZlcnNpb24iOjF9LCJpYXQiOjE2MzQ4NDg4ODMsImV4cCI6MTYzNTAyMTY4M30.FWxVsvf97Fk-mn4bcEYNr4kBhNunVKnpUdnUAEkRnNw";
//   //
//   // print('Bearer ' + currentUser.value.token!);
//   final response = await client.get(
//     Uri.parse(url),
//     headers: {
//       'authorization': "Bearer " + currentUser.value.token!,
//       // "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZXN1bHQiOnsiaWQiOjE3MiwiR29vZ2xlSWQiOiIxMDc5MTc5MzY1ODMzNDk0MjIxMTYiLCJGYWNlYm9va0lkIjoiIiwiRmlyc3ROYW1lIjoiRmFzdCIsIkxhc3ROYW1lIjoibiBFYXN5IExlYXJuaW5nIiwiR2VuZGVyIjoiIiwiRW1haWwiOiJmYXN0bmVhc3lsZWFybmluZ0BnbWFpbC5jb20iLCJQaG90b1VybCI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FBVFhBSnpSMThTMmc3Slo4dTgwTTVNMWlnN19SWlBPQzRWSGdOVjVYUzlIPXM5Ni1jIiwiTWFwTG9jYXRpb24iOiIiLCJBcHRPckZsYXQiOiIiLCJMYW5kbWFyayI6IiIsIkxhdGl0dWRlIjoiMzkuOTE3ODAzMiIsIkxvbmdpdHVkZSI6Ii04Mi43MzQ3MTQyIiwiUmVmZXJyZXJDb2RlIjpudWxsLCJUb2tlblZlcnNpb24iOjEsIlVzZXJJZCI6MTcyLCJSb2xlSWQiOjIsIlZlcnNpb24iOjF9LCJpYXQiOjE2MzQ4NDEzNjgsImV4cCI6MTYzNTAxNDE2OH0.P6X8IGeDo2c70bD-cbNZgelk3FQFZ598TAiM5lgfPVI",
//       'Content-Type': 'application/json'
//     },
//   );
//   print('this is token ${currentUser.value.token.toString()}');
//   print('Status Code ' + response.statusCode.toString());
//   print('Response ' + response.body);

//   if (response.statusCode == 200 ||
//       response.statusCode == 201 ||
//       response.statusCode == 501 ||
//       response.statusCode == 404 ||
//       response.statusCode == 403 ||
//       response.statusCode == 400 ||
//       response.statusCode == 409 ||
//       response.statusCode == 500) {
//     var data = jsonDecode(response.body);
//     return data;
//   } else if (response.statusCode == 401) {
//     return {
//       'status': 'error',
//       'message': 'Your token will be expired please logout and login again'
//     };
//   } else {
//     throw Exception(response.body);
//   }
// }

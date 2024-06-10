import 'dart:convert';
// import 'package:convert/convert.dart';
// import 'package:sky_engine/convert/';
import 'package:crypto/crypto.dart';

// md5 加密
String generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var digest = md5.convert(content);
  // 这里其实就是 digest.toString()
  return digest.toString();
  // return hex.encode(digest.bytes);
}
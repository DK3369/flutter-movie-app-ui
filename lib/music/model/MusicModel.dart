import 'dart:convert';

import './ClassMusicParamsModel.dart';

class MusicModel extends ClassMusicParamsModel{
  int? id = 0; //主键
  int? albumId = 0; // 专辑id
  String? songName = ""; // 歌曲名称
  String? authorName = ""; // 歌手名称
  int? authorId = 0; // 歌手id
  String? albumName = ""; // 专辑
  String? version = ""; // 版本
  String? language = ""; // 语言
  String? publishDate = ""; // 发布时间
  int? wideAudioId = 0; // 未使用字段
  int? isPublish = 0; // 是否发布
  int? bigPackId = 0; // 未使用字段
  int? finalId = 0; // 未使用字段
  int? audioId = 0; // 音频id
  int? similarAudioId = 0; // 未使用字段
  int? isHot = 0; // 是否热门
  int? albumAudioId = 0; // 音频专辑id
  int? audioGroupId = 0; // 歌曲组id
  String? cover = ""; // 歌曲图片
  String? playUrl = ""; // 网络播放地址
  String? localPlayUrl = ""; // 本地播放地址
  String? sourceName = ""; // 歌曲来源
  String? sourceUrl = ""; // 来源地址
  String? createTime = ""; // 创建时间
  String? updateTime = ""; // 更新时间
  String? label = ""; // 标签
  String? lyrics = ""; // 歌词
  int? isFavorite = 0; // 是否喜欢
  int? times = 0; //  听过的次数，在获取播放记录的时候才有
  MusicModel(
      {this.id, //主键
      this.albumId, // 专辑id
      this.songName, // 歌曲名称
      this.authorName, // 歌手名称
      this.authorId, // 歌手id
      this.albumName, // 专辑
      this.version, // 版本
      this.language, // 语言
      this.publishDate, // 发布时间
      this.wideAudioId, // 未使用字段
      this.isPublish, // 是否发布
      this.bigPackId, // 未使用字段
      this.finalId, // 未使用字段
      this.audioId, // 音频id
      this.similarAudioId, // 未使用字段
      this.isHot, // 是否热门
      this.albumAudioId, // 音频专辑id
      this.audioGroupId, // 歌曲组id
      this.cover, // 歌曲图片
      this.playUrl, // 网络播放地址
      this.localPlayUrl, // 本地播放地址
      this.sourceName, // 歌曲来源
      this.sourceUrl, // 来源地址
      this.createTime, // 创建时间
      this.updateTime, // 更新时间
      this.label, // 标签
      this.lyrics, // 歌词
      this.isFavorite, // 是否喜欢
      this.times // 听过的次数，在获取播放记录的时候才有
      });

  //工厂模式-用这种模式可以省略New关键字
  factory MusicModel.fromJson(dynamic json) {
    return MusicModel(
        id: json["id"],
        albumId: json["albumId"],
        songName: json["songName"],
        authorName: json["authorName"],
        authorId: json["authorId"],
        albumName: json["albumName"],
        version: json["version"],
        language: json["language"],
        publishDate: json["publishDate"],
        wideAudioId: json["wideAudioId"],
        isPublish: json["isPublish"],
        bigPackId: json["isPublish"],
        finalId: json["finalId"],
        audioId: json["audioId"],
        similarAudioId: json["similarAudioId"],
        isHot: json["isHot"],
        albumAudioId: json["albumAudioId"],
        audioGroupId: json["audioGroupId"],
        cover: json["cover"],
        playUrl: json["playUrl"],
        localPlayUrl: json["localPlayUrl"],
        sourceName: json["sourceName"],
        sourceUrl: json["sourceUrl"],
        createTime: json["createTime"],
        updateTime: json["updateTime"],
        label: json["label"],
        lyrics: json["lyrics"],
        isFavorite: json["isFavorite"],
        times: json["times"]);
  }

  static Map toMap(MusicModel musicModel) {
    return {
      "id": musicModel.id,
      "albumId": musicModel.albumId,
      "songName": musicModel.songName,
      "authorName": musicModel.authorName,
      "authorId": musicModel.authorId,
      "albumName": musicModel.albumName,
      "version": musicModel.version,
      "language": musicModel.language,
      "publishDate": musicModel.publishDate,
      "wideAudioId": musicModel.wideAudioId,
      "isPublish": musicModel.isPublish,
      "bigPackId": musicModel.isPublish,
      "finalId": musicModel.finalId,
      "audioId": musicModel.audioId,
      "similarAudioId": musicModel.similarAudioId,
      "isHot": musicModel.isHot,
      "albumAudioId": musicModel.albumAudioId,
      "audioGroupId": musicModel.audioGroupId,
      "cover": musicModel.cover,
      "playUrl": musicModel.playUrl,
      "localPlayUrl": musicModel.localPlayUrl,
      "sourceName": musicModel.sourceName,
      "sourceUrl": musicModel.sourceUrl,
      "createTime": musicModel.createTime,
      "updateTim": musicModel.updateTime,
      "label": musicModel.label,
      "lyrics": musicModel.lyrics,
      "isFavorite": musicModel.isFavorite,
      "times": musicModel.times
    };
  }

  static String stringify(MusicModel musicModel) {
    return json.encode(MusicModel.toMap(musicModel));
  }
}

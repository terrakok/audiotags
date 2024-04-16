// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.82.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;

part 'bridge_definitions.freezed.dart';

abstract class Audiotags {
  Future<Tag> read({required String path, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReadConstMeta;

  Future<void> write({required String path, required Tag data, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWriteConstMeta;
}

@freezed
sealed class AudioTagsError with _$AudioTagsError implements FrbException {
  const factory AudioTagsError.invalidPath() = AudioTagsError_InvalidPath;
  const factory AudioTagsError.noTags() = AudioTagsError_NoTags;
  const factory AudioTagsError.openFile({
    required String message,
  }) = AudioTagsError_OpenFile;
  const factory AudioTagsError.write({
    required String message,
  }) = AudioTagsError_Write;
}

/// The MIME type of the picture.
enum MimeType {
  png,
  jpeg,
  tiff,
  bmp,
  gif,
}

/// An object representing a picture metadata.
class Picture {
  /// The type of picture (ex. front cover)
  final PictureType pictureType;

  /// The mime type of the picture (ex. `image/jpg`)
  final MimeType? mimeType;

  /// The picture data, in bytes.
  final Uint8List bytes;

  const Picture({
    required this.pictureType,
    this.mimeType,
    required this.bytes,
  });
}

/// The type of picture of the song.
enum PictureType {
  other,
  icon,
  otherIcon,
  coverFront,
  coverBack,
  leaflet,
  media,
  leadArtist,
  artist,
  conductor,
  band,
  composer,
  lyricist,
  recordingLocation,
  duringRecording,
  duringPerformance,
  screenCapture,
  brightFish,
  illustration,
  bandLogo,
  publisherLogo,
}

/// Represents the metadata of the file.
class Tag {
  /// The title of the song.
  final String? title;

  /// The artist of the song.
  final String? trackArtist;

  /// The album the song is from.
  final String? album;

  /// The artist of the album.
  final String? albumArtist;

  /// The year that this song was made.
  final int? year;

  /// The genre of the song.
  final String? genre;

  /// The position of the song in a list.
  final int? trackNumber;

  /// The total amount of songs in a list.
  final int? trackTotal;

  /// The position of the disc in a list.
  final int? discNumber;

  /// The total amount of discs in a list.
  final int? discTotal;

  /// The duration of the song. Setting this field
  /// when writing will do nothing.
  final int? duration;

  /// All the pictures of the song.
  final List<Picture> pictures;

  const Tag({
    this.title,
    this.trackArtist,
    this.album,
    this.albumArtist,
    this.year,
    this.genre,
    this.trackNumber,
    this.trackTotal,
    this.discNumber,
    this.discTotal,
    this.duration,
    required this.pictures,
  });
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForumRecord extends FirestoreRecord {
  ForumRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "user_post" field.
  String? _userPost;
  String get userPost => _userPost ?? '';
  bool hasUserPost() => _userPost != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _image = snapshotData['image'] as String?;
    _userPost = snapshotData['user_post'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('forum');

  static Stream<ForumRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ForumRecord.fromSnapshot(s));

  static Future<ForumRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ForumRecord.fromSnapshot(s));

  static ForumRecord fromSnapshot(DocumentSnapshot snapshot) => ForumRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ForumRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ForumRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ForumRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ForumRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createForumRecordData({
  String? text,
  String? image,
  String? userPost,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'image': image,
      'user_post': userPost,
    }.withoutNulls,
  );

  return firestoreData;
}

class ForumRecordDocumentEquality implements Equality<ForumRecord> {
  const ForumRecordDocumentEquality();

  @override
  bool equals(ForumRecord? e1, ForumRecord? e2) {
    return e1?.text == e2?.text &&
        e1?.image == e2?.image &&
        e1?.userPost == e2?.userPost;
  }

  @override
  int hash(ForumRecord? e) =>
      const ListEquality().hash([e?.text, e?.image, e?.userPost]);

  @override
  bool isValidKey(Object? o) => o is ForumRecord;
}

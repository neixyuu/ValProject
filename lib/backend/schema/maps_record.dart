import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapsRecord extends FirestoreRecord {
  MapsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "map_name" field.
  String? _mapName;
  String get mapName => _mapName ?? '';
  bool hasMapName() => _mapName != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  void _initializeFields() {
    _mapName = snapshotData['map_name'] as String?;
    _image = snapshotData['image'] as String?;
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maps');

  static Stream<MapsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapsRecord.fromSnapshot(s));

  static Future<MapsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapsRecord.fromSnapshot(s));

  static MapsRecord fromSnapshot(DocumentSnapshot snapshot) => MapsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MapsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapsRecordData({
  String? mapName,
  String? image,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'map_name': mapName,
      'image': image,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class MapsRecordDocumentEquality implements Equality<MapsRecord> {
  const MapsRecordDocumentEquality();

  @override
  bool equals(MapsRecord? e1, MapsRecord? e2) {
    return e1?.mapName == e2?.mapName &&
        e1?.image == e2?.image &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(MapsRecord? e) =>
      const ListEquality().hash([e?.mapName, e?.image, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is MapsRecord;
}

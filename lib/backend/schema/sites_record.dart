import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SitesRecord extends FirestoreRecord {
  SitesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sites');

  static Stream<SitesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SitesRecord.fromSnapshot(s));

  static Future<SitesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SitesRecord.fromSnapshot(s));

  static SitesRecord fromSnapshot(DocumentSnapshot snapshot) => SitesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SitesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SitesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SitesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SitesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSitesRecordData({
  String? name,
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class SitesRecordDocumentEquality implements Equality<SitesRecord> {
  const SitesRecordDocumentEquality();

  @override
  bool equals(SitesRecord? e1, SitesRecord? e2) {
    return e1?.name == e2?.name && e1?.location == e2?.location;
  }

  @override
  int hash(SitesRecord? e) => const ListEquality().hash([e?.name, e?.location]);

  @override
  bool isValidKey(Object? o) => o is SitesRecord;
}

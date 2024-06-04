import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WeaponRecord extends FirestoreRecord {
  WeaponRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "weapon" field.
  String? _weapon;
  String get weapon => _weapon ?? '';
  bool hasWeapon() => _weapon != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _weapon = snapshotData['weapon'] as String?;
    _desc = snapshotData['desc'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('weapon');

  static Stream<WeaponRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WeaponRecord.fromSnapshot(s));

  static Future<WeaponRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WeaponRecord.fromSnapshot(s));

  static WeaponRecord fromSnapshot(DocumentSnapshot snapshot) => WeaponRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WeaponRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WeaponRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WeaponRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WeaponRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWeaponRecordData({
  String? weapon,
  String? desc,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'weapon': weapon,
      'desc': desc,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class WeaponRecordDocumentEquality implements Equality<WeaponRecord> {
  const WeaponRecordDocumentEquality();

  @override
  bool equals(WeaponRecord? e1, WeaponRecord? e2) {
    return e1?.weapon == e2?.weapon &&
        e1?.desc == e2?.desc &&
        e1?.image == e2?.image;
  }

  @override
  int hash(WeaponRecord? e) =>
      const ListEquality().hash([e?.weapon, e?.desc, e?.image]);

  @override
  bool isValidKey(Object? o) => o is WeaponRecord;
}

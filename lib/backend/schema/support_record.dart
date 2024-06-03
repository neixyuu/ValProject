import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportRecord extends FirestoreRecord {
  SupportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "report_title" field.
  String? _reportTitle;
  String get reportTitle => _reportTitle ?? '';
  bool hasReportTitle() => _reportTitle != null;

  // "report_desc" field.
  String? _reportDesc;
  String get reportDesc => _reportDesc ?? '';
  bool hasReportDesc() => _reportDesc != null;

  // "report_image" field.
  String? _reportImage;
  String get reportImage => _reportImage ?? '';
  bool hasReportImage() => _reportImage != null;

  void _initializeFields() {
    _reportTitle = snapshotData['report_title'] as String?;
    _reportDesc = snapshotData['report_desc'] as String?;
    _reportImage = snapshotData['report_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('support');

  static Stream<SupportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportRecord.fromSnapshot(s));

  static Future<SupportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportRecord.fromSnapshot(s));

  static SupportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportRecordData({
  String? reportTitle,
  String? reportDesc,
  String? reportImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'report_title': reportTitle,
      'report_desc': reportDesc,
      'report_image': reportImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportRecordDocumentEquality implements Equality<SupportRecord> {
  const SupportRecordDocumentEquality();

  @override
  bool equals(SupportRecord? e1, SupportRecord? e2) {
    return e1?.reportTitle == e2?.reportTitle &&
        e1?.reportDesc == e2?.reportDesc &&
        e1?.reportImage == e2?.reportImage;
  }

  @override
  int hash(SupportRecord? e) => const ListEquality()
      .hash([e?.reportTitle, e?.reportDesc, e?.reportImage]);

  @override
  bool isValidKey(Object? o) => o is SupportRecord;
}

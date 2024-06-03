import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgentRecord extends FirestoreRecord {
  AgentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agent');

  static Stream<AgentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgentRecord.fromSnapshot(s));

  static Future<AgentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgentRecord.fromSnapshot(s));

  static AgentRecord fromSnapshot(DocumentSnapshot snapshot) => AgentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgentRecordData({
  String? name,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgentRecordDocumentEquality implements Equality<AgentRecord> {
  const AgentRecordDocumentEquality();

  @override
  bool equals(AgentRecord? e1, AgentRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(AgentRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.description]);

  @override
  bool isValidKey(Object? o) => o is AgentRecord;
}

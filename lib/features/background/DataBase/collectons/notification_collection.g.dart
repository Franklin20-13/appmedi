// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNotificationCollectionCollection on Isar {
  IsarCollection<NotificationCollection> get notificationCollections =>
      this.collection();
}

const NotificationCollectionSchema = CollectionSchema(
  name: r'NotificationCollection',
  id: -287296813000236085,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'fromDate': PropertySchema(
      id: 1,
      name: r'fromDate',
      type: IsarType.string,
    ),
    r'hour': PropertySchema(
      id: 2,
      name: r'hour',
      type: IsarType.string,
    ),
    r'keyDocument': PropertySchema(
      id: 3,
      name: r'keyDocument',
      type: IsarType.string,
    ),
    r'keyDocumentRecipe': PropertySchema(
      id: 4,
      name: r'keyDocumentRecipe',
      type: IsarType.string,
    ),
    r'notifyCompleted': PropertySchema(
      id: 5,
      name: r'notifyCompleted',
      type: IsarType.long,
    ),
    r'quantity': PropertySchema(
      id: 6,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'titleNotification': PropertySchema(
      id: 7,
      name: r'titleNotification',
      type: IsarType.string,
    ),
    r'toDate': PropertySchema(
      id: 8,
      name: r'toDate',
      type: IsarType.string,
    ),
    r'tomado': PropertySchema(
      id: 9,
      name: r'tomado',
      type: IsarType.bool,
    ),
    r'user': PropertySchema(
      id: 10,
      name: r'user',
      type: IsarType.string,
    )
  },
  estimateSize: _notificationCollectionEstimateSize,
  serialize: _notificationCollectionSerialize,
  deserialize: _notificationCollectionDeserialize,
  deserializeProp: _notificationCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _notificationCollectionGetId,
  getLinks: _notificationCollectionGetLinks,
  attach: _notificationCollectionAttach,
  version: '3.1.0+1',
);

int _notificationCollectionEstimateSize(
  NotificationCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.fromDate.length * 3;
  bytesCount += 3 + object.hour.length * 3;
  bytesCount += 3 + object.keyDocument.length * 3;
  bytesCount += 3 + object.keyDocumentRecipe.length * 3;
  bytesCount += 3 + object.titleNotification.length * 3;
  bytesCount += 3 + object.toDate.length * 3;
  bytesCount += 3 + object.user.length * 3;
  return bytesCount;
}

void _notificationCollectionSerialize(
  NotificationCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.fromDate);
  writer.writeString(offsets[2], object.hour);
  writer.writeString(offsets[3], object.keyDocument);
  writer.writeString(offsets[4], object.keyDocumentRecipe);
  writer.writeLong(offsets[5], object.notifyCompleted);
  writer.writeLong(offsets[6], object.quantity);
  writer.writeString(offsets[7], object.titleNotification);
  writer.writeString(offsets[8], object.toDate);
  writer.writeBool(offsets[9], object.tomado);
  writer.writeString(offsets[10], object.user);
}

NotificationCollection _notificationCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NotificationCollection();
  object.description = reader.readString(offsets[0]);
  object.fromDate = reader.readString(offsets[1]);
  object.hour = reader.readString(offsets[2]);
  object.id = id;
  object.keyDocument = reader.readString(offsets[3]);
  object.keyDocumentRecipe = reader.readString(offsets[4]);
  object.notifyCompleted = reader.readLong(offsets[5]);
  object.quantity = reader.readLong(offsets[6]);
  object.titleNotification = reader.readString(offsets[7]);
  object.toDate = reader.readString(offsets[8]);
  object.tomado = reader.readBool(offsets[9]);
  object.user = reader.readString(offsets[10]);
  return object;
}

P _notificationCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _notificationCollectionGetId(NotificationCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _notificationCollectionGetLinks(
    NotificationCollection object) {
  return [];
}

void _notificationCollectionAttach(
    IsarCollection<dynamic> col, Id id, NotificationCollection object) {
  object.id = id;
}

extension NotificationCollectionQueryWhereSort
    on QueryBuilder<NotificationCollection, NotificationCollection, QWhere> {
  QueryBuilder<NotificationCollection, NotificationCollection, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NotificationCollectionQueryWhere on QueryBuilder<
    NotificationCollection, NotificationCollection, QWhereClause> {
  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NotificationCollectionQueryFilter on QueryBuilder<
    NotificationCollection, NotificationCollection, QFilterCondition> {
  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fromDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      fromDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fromDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      fromDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fromDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> fromDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fromDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      hourContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hour',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      hourMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hour',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hour',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> hourIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hour',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keyDocument',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      keyDocumentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keyDocument',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      keyDocumentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keyDocument',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyDocument',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keyDocument',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'keyDocumentRecipe',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      keyDocumentRecipeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'keyDocumentRecipe',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      keyDocumentRecipeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'keyDocumentRecipe',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keyDocumentRecipe',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> keyDocumentRecipeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'keyDocumentRecipe',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> notifyCompletedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notifyCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> notifyCompletedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notifyCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> notifyCompletedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notifyCompleted',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> notifyCompletedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notifyCompleted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> quantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'titleNotification',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      titleNotificationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'titleNotification',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      titleNotificationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'titleNotification',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'titleNotification',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> titleNotificationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'titleNotification',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'toDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      toDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'toDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      toDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'toDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> toDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'toDate',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> tomadoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tomado',
        value: value,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'user',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      userContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'user',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
          QAfterFilterCondition>
      userMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'user',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user',
        value: '',
      ));
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection,
      QAfterFilterCondition> userIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'user',
        value: '',
      ));
    });
  }
}

extension NotificationCollectionQueryObject on QueryBuilder<
    NotificationCollection, NotificationCollection, QFilterCondition> {}

extension NotificationCollectionQueryLinks on QueryBuilder<
    NotificationCollection, NotificationCollection, QFilterCondition> {}

extension NotificationCollectionQuerySortBy
    on QueryBuilder<NotificationCollection, NotificationCollection, QSortBy> {
  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByKeyDocument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocument', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByKeyDocumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocument', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByKeyDocumentRecipe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocumentRecipe', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByKeyDocumentRecipeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocumentRecipe', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByNotifyCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifyCompleted', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByNotifyCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifyCompleted', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByTitleNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNotification', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByTitleNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNotification', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByTomado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tomado', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByTomadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tomado', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      sortByUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.desc);
    });
  }
}

extension NotificationCollectionQuerySortThenBy on QueryBuilder<
    NotificationCollection, NotificationCollection, QSortThenBy> {
  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hour', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByKeyDocument() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocument', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByKeyDocumentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocument', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByKeyDocumentRecipe() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocumentRecipe', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByKeyDocumentRecipeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'keyDocumentRecipe', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByNotifyCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifyCompleted', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByNotifyCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notifyCompleted', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByTitleNotification() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNotification', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByTitleNotificationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'titleNotification', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByTomado() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tomado', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByTomadoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tomado', Sort.desc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByUser() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.asc);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QAfterSortBy>
      thenByUserDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user', Sort.desc);
    });
  }
}

extension NotificationCollectionQueryWhereDistinct
    on QueryBuilder<NotificationCollection, NotificationCollection, QDistinct> {
  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByFromDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fromDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByHour({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hour', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByKeyDocument({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keyDocument', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByKeyDocumentRecipe({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'keyDocumentRecipe',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByNotifyCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notifyCompleted');
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByTitleNotification({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'titleNotification',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByToDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'toDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByTomado() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tomado');
    });
  }

  QueryBuilder<NotificationCollection, NotificationCollection, QDistinct>
      distinctByUser({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user', caseSensitive: caseSensitive);
    });
  }
}

extension NotificationCollectionQueryProperty on QueryBuilder<
    NotificationCollection, NotificationCollection, QQueryProperty> {
  QueryBuilder<NotificationCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      fromDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fromDate');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      hourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hour');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      keyDocumentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keyDocument');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      keyDocumentRecipeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'keyDocumentRecipe');
    });
  }

  QueryBuilder<NotificationCollection, int, QQueryOperations>
      notifyCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notifyCompleted');
    });
  }

  QueryBuilder<NotificationCollection, int, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      titleNotificationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'titleNotification');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      toDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'toDate');
    });
  }

  QueryBuilder<NotificationCollection, bool, QQueryOperations>
      tomadoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tomado');
    });
  }

  QueryBuilder<NotificationCollection, String, QQueryOperations>
      userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user');
    });
  }
}

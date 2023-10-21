// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_data_telegram.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSecretDataTelegramCollection on Isar {
  IsarCollection<SecretDataTelegram> get secretDataTelegrams =>
      this.collection();
}

const SecretDataTelegramSchema = CollectionSchema(
  name: r'SecretDataTelegram',
  id: 646948948492790375,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.long,
    ),
    r'historys': PropertySchema(
      id: 1,
      name: r'historys',
      type: IsarType.objectList,
      target: r'SecretDataTelegramHistorys',
    ),
    r'location': PropertySchema(
      id: 2,
      name: r'location',
      type: IsarType.object,
      target: r'SecretDataTelegramLocation',
    ),
    r'phone_number': PropertySchema(
      id: 3,
      name: r'phone_number',
      type: IsarType.string,
    ),
    r'user_id': PropertySchema(
      id: 4,
      name: r'user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _secretDataTelegramEstimateSize,
  serialize: _secretDataTelegramSerialize,
  deserialize: _secretDataTelegramDeserialize,
  deserializeProp: _secretDataTelegramDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'SecretDataTelegramLocation': SecretDataTelegramLocationSchema,
    r'SecretDataTelegramHistorys': SecretDataTelegramHistorysSchema,
    r'SecretDataTelegramHistorysLocation':
        SecretDataTelegramHistorysLocationSchema
  },
  getId: _secretDataTelegramGetId,
  getLinks: _secretDataTelegramGetLinks,
  attach: _secretDataTelegramAttach,
  version: '3.1.0+1',
);

int _secretDataTelegramEstimateSize(
  SecretDataTelegram object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.historys.length * 3;
  {
    final offsets = allOffsets[SecretDataTelegramHistorys]!;
    for (var i = 0; i < object.historys.length; i++) {
      final value = object.historys[i];
      bytesCount += SecretDataTelegramHistorysSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      SecretDataTelegramLocationSchema.estimateSize(
          object.location, allOffsets[SecretDataTelegramLocation]!, allOffsets);
  bytesCount += 3 + object.phone_number.length * 3;
  return bytesCount;
}

void _secretDataTelegramSerialize(
  SecretDataTelegram object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.date);
  writer.writeObjectList<SecretDataTelegramHistorys>(
    offsets[1],
    allOffsets,
    SecretDataTelegramHistorysSchema.serialize,
    object.historys,
  );
  writer.writeObject<SecretDataTelegramLocation>(
    offsets[2],
    allOffsets,
    SecretDataTelegramLocationSchema.serialize,
    object.location,
  );
  writer.writeString(offsets[3], object.phone_number);
  writer.writeLong(offsets[4], object.user_id);
}

SecretDataTelegram _secretDataTelegramDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SecretDataTelegram();
  object.date = reader.readLong(offsets[0]);
  object.historys = reader.readObjectList<SecretDataTelegramHistorys>(
        offsets[1],
        SecretDataTelegramHistorysSchema.deserialize,
        allOffsets,
        SecretDataTelegramHistorys(),
      ) ??
      [];
  object.isar_data_id = id;
  object.location = reader.readObjectOrNull<SecretDataTelegramLocation>(
        offsets[2],
        SecretDataTelegramLocationSchema.deserialize,
        allOffsets,
      ) ??
      SecretDataTelegramLocation();
  object.phone_number = reader.readString(offsets[3]);
  object.user_id = reader.readLong(offsets[4]);
  return object;
}

P _secretDataTelegramDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readObjectList<SecretDataTelegramHistorys>(
            offset,
            SecretDataTelegramHistorysSchema.deserialize,
            allOffsets,
            SecretDataTelegramHistorys(),
          ) ??
          []) as P;
    case 2:
      return (reader.readObjectOrNull<SecretDataTelegramLocation>(
            offset,
            SecretDataTelegramLocationSchema.deserialize,
            allOffsets,
          ) ??
          SecretDataTelegramLocation()) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _secretDataTelegramGetId(SecretDataTelegram object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _secretDataTelegramGetLinks(
    SecretDataTelegram object) {
  return [];
}

void _secretDataTelegramAttach(
    IsarCollection<dynamic> col, Id id, SecretDataTelegram object) {
  object.isar_data_id = id;
}

extension SecretDataTelegramQueryWhereSort
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QWhere> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SecretDataTelegramQueryWhere
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QWhereClause> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhereClause>
      isar_data_idNotEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isar_data_id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: isar_data_id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: isar_data_id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isar_data_id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterWhereClause>
      isar_data_idBetween(
    Id lowerIsar_data_id,
    Id upperIsar_data_id, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsar_data_id,
        includeLower: includeLower,
        upper: upperIsar_data_id,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SecretDataTelegramQueryFilter
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QFilterCondition> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      dateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'historys',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      isar_data_idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      isar_data_idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      isar_data_idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isar_data_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone_number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone_number',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone_number',
        value: '',
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      phone_numberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone_number',
        value: '',
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SecretDataTelegramQueryObject
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QFilterCondition> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      historysElement(FilterQuery<SecretDataTelegramHistorys> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'historys');
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterFilterCondition>
      location(FilterQuery<SecretDataTelegramLocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }
}

extension SecretDataTelegramQueryLinks
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QFilterCondition> {}

extension SecretDataTelegramQuerySortBy
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QSortBy> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByPhone_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByPhone_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.desc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      sortByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension SecretDataTelegramQuerySortThenBy
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QSortThenBy> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByPhone_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByPhone_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.desc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QAfterSortBy>
      thenByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension SecretDataTelegramQueryWhereDistinct
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QDistinct> {
  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QDistinct>
      distinctByPhone_number({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone_number', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegram, QDistinct>
      distinctByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user_id');
    });
  }
}

extension SecretDataTelegramQueryProperty
    on QueryBuilder<SecretDataTelegram, SecretDataTelegram, QQueryProperty> {
  QueryBuilder<SecretDataTelegram, int, QQueryOperations>
      isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<SecretDataTelegram, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<SecretDataTelegram, List<SecretDataTelegramHistorys>,
      QQueryOperations> historysProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'historys');
    });
  }

  QueryBuilder<SecretDataTelegram, SecretDataTelegramLocation, QQueryOperations>
      locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<SecretDataTelegram, String, QQueryOperations>
      phone_numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone_number');
    });
  }

  QueryBuilder<SecretDataTelegram, int, QQueryOperations> user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user_id');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SecretDataTelegramLocationSchema = Schema(
  name: r'SecretDataTelegramLocation',
  id: -7547645139630120114,
  properties: {
    r'latitude': PropertySchema(
      id: 0,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 1,
      name: r'longitude',
      type: IsarType.double,
    )
  },
  estimateSize: _secretDataTelegramLocationEstimateSize,
  serialize: _secretDataTelegramLocationSerialize,
  deserialize: _secretDataTelegramLocationDeserialize,
  deserializeProp: _secretDataTelegramLocationDeserializeProp,
);

int _secretDataTelegramLocationEstimateSize(
  SecretDataTelegramLocation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _secretDataTelegramLocationSerialize(
  SecretDataTelegramLocation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.latitude);
  writer.writeDouble(offsets[1], object.longitude);
}

SecretDataTelegramLocation _secretDataTelegramLocationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SecretDataTelegramLocation();
  object.latitude = reader.readDouble(offsets[0]);
  object.longitude = reader.readDouble(offsets[1]);
  return object;
}

P _secretDataTelegramLocationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SecretDataTelegramLocationQueryFilter on QueryBuilder<
    SecretDataTelegramLocation, SecretDataTelegramLocation, QFilterCondition> {
  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> latitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> latitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> latitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> latitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramLocation, SecretDataTelegramLocation,
      QAfterFilterCondition> longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SecretDataTelegramLocationQueryObject on QueryBuilder<
    SecretDataTelegramLocation, SecretDataTelegramLocation, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SecretDataTelegramHistorysSchema = Schema(
  name: r'SecretDataTelegramHistorys',
  id: -291857962564755396,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.long,
    ),
    r'location': PropertySchema(
      id: 1,
      name: r'location',
      type: IsarType.object,
      target: r'SecretDataTelegramHistorysLocation',
    ),
    r'phone_number': PropertySchema(
      id: 2,
      name: r'phone_number',
      type: IsarType.string,
    ),
    r'update_date': PropertySchema(
      id: 3,
      name: r'update_date',
      type: IsarType.long,
    )
  },
  estimateSize: _secretDataTelegramHistorysEstimateSize,
  serialize: _secretDataTelegramHistorysSerialize,
  deserialize: _secretDataTelegramHistorysDeserialize,
  deserializeProp: _secretDataTelegramHistorysDeserializeProp,
);

int _secretDataTelegramHistorysEstimateSize(
  SecretDataTelegramHistorys object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      SecretDataTelegramHistorysLocationSchema.estimateSize(object.location,
          allOffsets[SecretDataTelegramHistorysLocation]!, allOffsets);
  bytesCount += 3 + object.phone_number.length * 3;
  return bytesCount;
}

void _secretDataTelegramHistorysSerialize(
  SecretDataTelegramHistorys object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.date);
  writer.writeObject<SecretDataTelegramHistorysLocation>(
    offsets[1],
    allOffsets,
    SecretDataTelegramHistorysLocationSchema.serialize,
    object.location,
  );
  writer.writeString(offsets[2], object.phone_number);
  writer.writeLong(offsets[3], object.update_date);
}

SecretDataTelegramHistorys _secretDataTelegramHistorysDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SecretDataTelegramHistorys();
  object.date = reader.readLong(offsets[0]);
  object.location = reader.readObjectOrNull<SecretDataTelegramHistorysLocation>(
        offsets[1],
        SecretDataTelegramHistorysLocationSchema.deserialize,
        allOffsets,
      ) ??
      SecretDataTelegramHistorysLocation();
  object.phone_number = reader.readString(offsets[2]);
  object.update_date = reader.readLong(offsets[3]);
  return object;
}

P _secretDataTelegramHistorysDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<SecretDataTelegramHistorysLocation>(
            offset,
            SecretDataTelegramHistorysLocationSchema.deserialize,
            allOffsets,
          ) ??
          SecretDataTelegramHistorysLocation()) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SecretDataTelegramHistorysQueryFilter on QueryBuilder<
    SecretDataTelegramHistorys, SecretDataTelegramHistorys, QFilterCondition> {
  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> dateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone_number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
          QAfterFilterCondition>
      phone_numberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone_number',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
          QAfterFilterCondition>
      phone_numberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone_number',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone_number',
        value: '',
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> phone_numberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone_number',
        value: '',
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> update_dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'update_date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> update_dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'update_date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> update_dateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'update_date',
        value: value,
      ));
    });
  }

  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
      QAfterFilterCondition> update_dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'update_date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SecretDataTelegramHistorysQueryObject on QueryBuilder<
    SecretDataTelegramHistorys, SecretDataTelegramHistorys, QFilterCondition> {
  QueryBuilder<SecretDataTelegramHistorys, SecretDataTelegramHistorys,
          QAfterFilterCondition>
      location(FilterQuery<SecretDataTelegramHistorysLocation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'location');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SecretDataTelegramHistorysLocationSchema = Schema(
  name: r'SecretDataTelegramHistorysLocation',
  id: -8956377933387561430,
  properties: {
    r'latitude': PropertySchema(
      id: 0,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 1,
      name: r'longitude',
      type: IsarType.double,
    )
  },
  estimateSize: _secretDataTelegramHistorysLocationEstimateSize,
  serialize: _secretDataTelegramHistorysLocationSerialize,
  deserialize: _secretDataTelegramHistorysLocationDeserialize,
  deserializeProp: _secretDataTelegramHistorysLocationDeserializeProp,
);

int _secretDataTelegramHistorysLocationEstimateSize(
  SecretDataTelegramHistorysLocation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _secretDataTelegramHistorysLocationSerialize(
  SecretDataTelegramHistorysLocation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.latitude);
  writer.writeDouble(offsets[1], object.longitude);
}

SecretDataTelegramHistorysLocation
    _secretDataTelegramHistorysLocationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SecretDataTelegramHistorysLocation();
  object.latitude = reader.readDouble(offsets[0]);
  object.longitude = reader.readDouble(offsets[1]);
  return object;
}

P _secretDataTelegramHistorysLocationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SecretDataTelegramHistorysLocationQueryFilter on QueryBuilder<
    SecretDataTelegramHistorysLocation,
    SecretDataTelegramHistorysLocation,
    QFilterCondition> {
  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> latitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> latitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> latitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> latitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> longitudeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> longitudeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> longitudeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<
      SecretDataTelegramHistorysLocation,
      SecretDataTelegramHistorysLocation,
      QAfterFilterCondition> longitudeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SecretDataTelegramHistorysLocationQueryObject on QueryBuilder<
    SecretDataTelegramHistorysLocation,
    SecretDataTelegramHistorysLocation,
    QFilterCondition> {}

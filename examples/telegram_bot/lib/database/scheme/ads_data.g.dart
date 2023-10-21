// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAdsDataCollection on Isar {
  IsarCollection<AdsData> get adsDatas => this.collection();
}

const AdsDataSchema = CollectionSchema(
  name: r'AdsData',
  id: -8710282488543851238,
  properties: {
    r'chat_id': PropertySchema(
      id: 0,
      name: r'chat_id',
      type: IsarType.long,
    ),
    r'client_user_id': PropertySchema(
      id: 1,
      name: r'client_user_id',
      type: IsarType.long,
    ),
    r'data': PropertySchema(
      id: 2,
      name: r'data',
      type: IsarType.longList,
    )
  },
  estimateSize: _adsDataEstimateSize,
  serialize: _adsDataSerialize,
  deserialize: _adsDataDeserialize,
  deserializeProp: _adsDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _adsDataGetId,
  getLinks: _adsDataGetLinks,
  attach: _adsDataAttach,
  version: '3.1.0+1',
);

int _adsDataEstimateSize(
  AdsData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.data.length * 8;
  return bytesCount;
}

void _adsDataSerialize(
  AdsData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chat_id);
  writer.writeLong(offsets[1], object.client_user_id);
  writer.writeLongList(offsets[2], object.data);
}

AdsData _adsDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AdsData();
  object.chat_id = reader.readLong(offsets[0]);
  object.client_user_id = reader.readLong(offsets[1]);
  object.data = reader.readLongList(offsets[2]) ?? [];
  object.id = id;
  return object;
}

P _adsDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _adsDataGetId(AdsData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _adsDataGetLinks(AdsData object) {
  return [];
}

void _adsDataAttach(IsarCollection<dynamic> col, Id id, AdsData object) {
  object.id = id;
}

extension AdsDataQueryWhereSort on QueryBuilder<AdsData, AdsData, QWhere> {
  QueryBuilder<AdsData, AdsData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AdsDataQueryWhere on QueryBuilder<AdsData, AdsData, QWhereClause> {
  QueryBuilder<AdsData, AdsData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<AdsData, AdsData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterWhereClause> idBetween(
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

extension AdsDataQueryFilter
    on QueryBuilder<AdsData, AdsData, QFilterCondition> {
  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> chat_idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> chat_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chat_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> chat_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chat_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> chat_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chat_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> client_user_idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition>
      client_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> client_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> client_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> dataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AdsData, AdsData, QAfterFilterCondition> idBetween(
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
}

extension AdsDataQueryObject
    on QueryBuilder<AdsData, AdsData, QFilterCondition> {}

extension AdsDataQueryLinks
    on QueryBuilder<AdsData, AdsData, QFilterCondition> {}

extension AdsDataQuerySortBy on QueryBuilder<AdsData, AdsData, QSortBy> {
  QueryBuilder<AdsData, AdsData, QAfterSortBy> sortByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> sortByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }
}

extension AdsDataQuerySortThenBy
    on QueryBuilder<AdsData, AdsData, QSortThenBy> {
  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AdsData, AdsData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension AdsDataQueryWhereDistinct
    on QueryBuilder<AdsData, AdsData, QDistinct> {
  QueryBuilder<AdsData, AdsData, QDistinct> distinctByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chat_id');
    });
  }

  QueryBuilder<AdsData, AdsData, QDistinct> distinctByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id');
    });
  }

  QueryBuilder<AdsData, AdsData, QDistinct> distinctByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data');
    });
  }
}

extension AdsDataQueryProperty
    on QueryBuilder<AdsData, AdsData, QQueryProperty> {
  QueryBuilder<AdsData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AdsData, int, QQueryOperations> chat_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chat_id');
    });
  }

  QueryBuilder<AdsData, int, QQueryOperations> client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<AdsData, List<int>, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }
}

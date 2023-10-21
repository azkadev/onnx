// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_api_rate_limit.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCallApiRateLimitCollection on Isar {
  IsarCollection<CallApiRateLimit> get callApiRateLimits => this.collection();
}

const CallApiRateLimitSchema = CollectionSchema(
  name: r'CallApiRateLimit',
  id: 4481768611760676021,
  properties: {
    r'client_user_id': PropertySchema(
      id: 0,
      name: r'client_user_id',
      type: IsarType.long,
    ),
    r'count': PropertySchema(
      id: 1,
      name: r'count',
      type: IsarType.long,
    ),
    r'expire_date': PropertySchema(
      id: 2,
      name: r'expire_date',
      type: IsarType.long,
    ),
    r'method': PropertySchema(
      id: 3,
      name: r'method',
      type: IsarType.string,
    )
  },
  estimateSize: _callApiRateLimitEstimateSize,
  serialize: _callApiRateLimitSerialize,
  deserialize: _callApiRateLimitDeserialize,
  deserializeProp: _callApiRateLimitDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _callApiRateLimitGetId,
  getLinks: _callApiRateLimitGetLinks,
  attach: _callApiRateLimitAttach,
  version: '3.1.0+1',
);

int _callApiRateLimitEstimateSize(
  CallApiRateLimit object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.method.length * 3;
  return bytesCount;
}

void _callApiRateLimitSerialize(
  CallApiRateLimit object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.client_user_id);
  writer.writeLong(offsets[1], object.count);
  writer.writeLong(offsets[2], object.expire_date);
  writer.writeString(offsets[3], object.method);
}

CallApiRateLimit _callApiRateLimitDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CallApiRateLimit();
  object.client_user_id = reader.readLong(offsets[0]);
  object.count = reader.readLong(offsets[1]);
  object.expire_date = reader.readLong(offsets[2]);
  object.isar_data_id = id;
  object.method = reader.readString(offsets[3]);
  return object;
}

P _callApiRateLimitDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _callApiRateLimitGetId(CallApiRateLimit object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _callApiRateLimitGetLinks(CallApiRateLimit object) {
  return [];
}

void _callApiRateLimitAttach(
    IsarCollection<dynamic> col, Id id, CallApiRateLimit object) {
  object.isar_data_id = id;
}

extension CallApiRateLimitQueryWhereSort
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QWhere> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CallApiRateLimitQueryWhere
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QWhereClause> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhereClause>
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterWhereClause>
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

extension CallApiRateLimitQueryFilter
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QFilterCondition> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      client_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      client_user_idLessThan(
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      client_user_idBetween(
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      countEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      countGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      countLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'count',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      countBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'count',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      expire_dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      expire_dateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      expire_dateLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expire_date',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      expire_dateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expire_date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
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

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'method',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'method',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'method',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'method',
        value: '',
      ));
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterFilterCondition>
      methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'method',
        value: '',
      ));
    });
  }
}

extension CallApiRateLimitQueryObject
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QFilterCondition> {}

extension CallApiRateLimitQueryLinks
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QFilterCondition> {}

extension CallApiRateLimitQuerySortBy
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QSortBy> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy> sortByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByExpire_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }
}

extension CallApiRateLimitQuerySortThenBy
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QSortThenBy> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy> thenByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'count', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByExpire_dateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QAfterSortBy>
      thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }
}

extension CallApiRateLimitQueryWhereDistinct
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QDistinct> {
  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QDistinct>
      distinctByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id');
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QDistinct>
      distinctByCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'count');
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QDistinct>
      distinctByExpire_date() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expire_date');
    });
  }

  QueryBuilder<CallApiRateLimit, CallApiRateLimit, QDistinct> distinctByMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }
}

extension CallApiRateLimitQueryProperty
    on QueryBuilder<CallApiRateLimit, CallApiRateLimit, QQueryProperty> {
  QueryBuilder<CallApiRateLimit, int, QQueryOperations> isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<CallApiRateLimit, int, QQueryOperations>
      client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<CallApiRateLimit, int, QQueryOperations> countProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'count');
    });
  }

  QueryBuilder<CallApiRateLimit, int, QQueryOperations> expire_dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expire_date');
    });
  }

  QueryBuilder<CallApiRateLimit, String, QQueryOperations> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account_glx.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppAccountGlxCollection on Isar {
  IsarCollection<AppAccountGlx> get appAccountGlxs => this.collection();
}

const AppAccountGlxSchema = CollectionSchema(
  name: r'AppAccountGlx',
  id: -9089408799066456619,
  properties: {
    r'created_at': PropertySchema(
      id: 0,
      name: r'created_at',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 2,
      name: r'id',
      type: IsarType.long,
    ),
    r'meesagee_user_id': PropertySchema(
      id: 3,
      name: r'meesagee_user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _appAccountGlxEstimateSize,
  serialize: _appAccountGlxSerialize,
  deserialize: _appAccountGlxDeserialize,
  deserializeProp: _appAccountGlxDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appAccountGlxGetId,
  getLinks: _appAccountGlxGetLinks,
  attach: _appAccountGlxAttach,
  version: '3.1.0+1',
);

int _appAccountGlxEstimateSize(
  AppAccountGlx object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created_at.length * 3;
  return bytesCount;
}

void _appAccountGlxSerialize(
  AppAccountGlx object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created_at);
  writer.writeLong(offsets[1], object.date);
  writer.writeLong(offsets[2], object.id);
  writer.writeLong(offsets[3], object.meesagee_user_id);
}

AppAccountGlx _appAccountGlxDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppAccountGlx();
  object.created_at = reader.readString(offsets[0]);
  object.date = reader.readLong(offsets[1]);
  object.id = reader.readLong(offsets[2]);
  object.isar_data_id = id;
  object.meesagee_user_id = reader.readLong(offsets[3]);
  return object;
}

P _appAccountGlxDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appAccountGlxGetId(AppAccountGlx object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _appAccountGlxGetLinks(AppAccountGlx object) {
  return [];
}

void _appAccountGlxAttach(
    IsarCollection<dynamic> col, Id id, AppAccountGlx object) {
  object.isar_data_id = id;
}

extension AppAccountGlxQueryWhereSort
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QWhere> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhere> anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppAccountGlxQueryWhere
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QWhereClause> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhereClause>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterWhereClause>
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

extension AppAccountGlxQueryFilter
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QFilterCondition> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created_at',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition> dateEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      idGreaterThan(
    int value, {
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      meesagee_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      meesagee_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      meesagee_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterFilterCondition>
      meesagee_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meesagee_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AppAccountGlxQueryObject
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QFilterCondition> {}

extension AppAccountGlxQueryLinks
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QFilterCondition> {}

extension AppAccountGlxQuerySortBy
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QSortBy> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      sortByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      sortByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountGlxQuerySortThenBy
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QSortThenBy> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      thenByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QAfterSortBy>
      thenByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountGlxQueryWhereDistinct
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QDistinct> {
  QueryBuilder<AppAccountGlx, AppAccountGlx, QDistinct> distinctByCreated_at(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<AppAccountGlx, AppAccountGlx, QDistinct>
      distinctByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meesagee_user_id');
    });
  }
}

extension AppAccountGlxQueryProperty
    on QueryBuilder<AppAccountGlx, AppAccountGlx, QQueryProperty> {
  QueryBuilder<AppAccountGlx, int, QQueryOperations> isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<AppAccountGlx, String, QQueryOperations> created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<AppAccountGlx, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<AppAccountGlx, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppAccountGlx, int, QQueryOperations>
      meesagee_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meesagee_user_id');
    });
  }
}

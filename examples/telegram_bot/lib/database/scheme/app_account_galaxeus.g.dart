// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account_galaxeus.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppAccountGalaxeusCollection on Isar {
  IsarCollection<AppAccountGalaxeus> get appAccountGalaxeus =>
      this.collection();
}

const AppAccountGalaxeusSchema = CollectionSchema(
  name: r'AppAccountGalaxeus',
  id: 5333276717565299312,
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
  estimateSize: _appAccountGalaxeusEstimateSize,
  serialize: _appAccountGalaxeusSerialize,
  deserialize: _appAccountGalaxeusDeserialize,
  deserializeProp: _appAccountGalaxeusDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appAccountGalaxeusGetId,
  getLinks: _appAccountGalaxeusGetLinks,
  attach: _appAccountGalaxeusAttach,
  version: '3.1.0+1',
);

int _appAccountGalaxeusEstimateSize(
  AppAccountGalaxeus object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created_at.length * 3;
  return bytesCount;
}

void _appAccountGalaxeusSerialize(
  AppAccountGalaxeus object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created_at);
  writer.writeLong(offsets[1], object.date);
  writer.writeLong(offsets[2], object.id);
  writer.writeLong(offsets[3], object.meesagee_user_id);
}

AppAccountGalaxeus _appAccountGalaxeusDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppAccountGalaxeus();
  object.created_at = reader.readString(offsets[0]);
  object.date = reader.readLong(offsets[1]);
  object.id = reader.readLong(offsets[2]);
  object.isar_data_id = id;
  object.meesagee_user_id = reader.readLong(offsets[3]);
  return object;
}

P _appAccountGalaxeusDeserializeProp<P>(
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

Id _appAccountGalaxeusGetId(AppAccountGalaxeus object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _appAccountGalaxeusGetLinks(
    AppAccountGalaxeus object) {
  return [];
}

void _appAccountGalaxeusAttach(
    IsarCollection<dynamic> col, Id id, AppAccountGalaxeus object) {
  object.isar_data_id = id;
}

extension AppAccountGalaxeusQueryWhereSort
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QWhere> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppAccountGalaxeusQueryWhere
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QWhereClause> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhereClause>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterWhereClause>
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

extension AppAccountGalaxeusQueryFilter
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QFilterCondition> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
      meesagee_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterFilterCondition>
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

extension AppAccountGalaxeusQueryObject
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QFilterCondition> {}

extension AppAccountGalaxeusQueryLinks
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QFilterCondition> {}

extension AppAccountGalaxeusQuerySortBy
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QSortBy> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      sortByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountGalaxeusQuerySortThenBy
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QSortThenBy> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QAfterSortBy>
      thenByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountGalaxeusQueryWhereDistinct
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QDistinct> {
  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QDistinct>
      distinctByCreated_at({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QDistinct>
      distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QDistinct>
      distinctByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meesagee_user_id');
    });
  }
}

extension AppAccountGalaxeusQueryProperty
    on QueryBuilder<AppAccountGalaxeus, AppAccountGalaxeus, QQueryProperty> {
  QueryBuilder<AppAccountGalaxeus, int, QQueryOperations>
      isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<AppAccountGalaxeus, String, QQueryOperations>
      created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<AppAccountGalaxeus, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<AppAccountGalaxeus, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppAccountGalaxeus, int, QQueryOperations>
      meesagee_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meesagee_user_id');
    });
  }
}

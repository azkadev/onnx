// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account_hexaminate.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppAccountHexaminateCollection on Isar {
  IsarCollection<AppAccountHexaminate> get appAccountHexaminates =>
      this.collection();
}

const AppAccountHexaminateSchema = CollectionSchema(
  name: r'AppAccountHexaminate',
  id: 612235589833911618,
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
  estimateSize: _appAccountHexaminateEstimateSize,
  serialize: _appAccountHexaminateSerialize,
  deserialize: _appAccountHexaminateDeserialize,
  deserializeProp: _appAccountHexaminateDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appAccountHexaminateGetId,
  getLinks: _appAccountHexaminateGetLinks,
  attach: _appAccountHexaminateAttach,
  version: '3.1.0+1',
);

int _appAccountHexaminateEstimateSize(
  AppAccountHexaminate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created_at.length * 3;
  return bytesCount;
}

void _appAccountHexaminateSerialize(
  AppAccountHexaminate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created_at);
  writer.writeLong(offsets[1], object.date);
  writer.writeLong(offsets[2], object.id);
  writer.writeLong(offsets[3], object.meesagee_user_id);
}

AppAccountHexaminate _appAccountHexaminateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppAccountHexaminate();
  object.created_at = reader.readString(offsets[0]);
  object.date = reader.readLong(offsets[1]);
  object.id = reader.readLong(offsets[2]);
  object.isar_data_id = id;
  object.meesagee_user_id = reader.readLong(offsets[3]);
  return object;
}

P _appAccountHexaminateDeserializeProp<P>(
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

Id _appAccountHexaminateGetId(AppAccountHexaminate object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _appAccountHexaminateGetLinks(
    AppAccountHexaminate object) {
  return [];
}

void _appAccountHexaminateAttach(
    IsarCollection<dynamic> col, Id id, AppAccountHexaminate object) {
  object.isar_data_id = id;
}

extension AppAccountHexaminateQueryWhereSort
    on QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QWhere> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppAccountHexaminateQueryWhere
    on QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QWhereClause> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhereClause>
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterWhereClause>
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

extension AppAccountHexaminateQueryFilter on QueryBuilder<AppAccountHexaminate,
    AppAccountHexaminate, QFilterCondition> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atEqualTo(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atGreaterThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atLessThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atBetween(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atStartsWith(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atEndsWith(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
          QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
          QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> isar_data_idGreaterThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> isar_data_idLessThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> isar_data_idBetween(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> meesagee_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> meesagee_user_idGreaterThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> meesagee_user_idLessThan(
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

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate,
      QAfterFilterCondition> meesagee_user_idBetween(
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

extension AppAccountHexaminateQueryObject on QueryBuilder<AppAccountHexaminate,
    AppAccountHexaminate, QFilterCondition> {}

extension AppAccountHexaminateQueryLinks on QueryBuilder<AppAccountHexaminate,
    AppAccountHexaminate, QFilterCondition> {}

extension AppAccountHexaminateQuerySortBy
    on QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QSortBy> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      sortByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountHexaminateQuerySortThenBy
    on QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QSortThenBy> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QAfterSortBy>
      thenByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountHexaminateQueryWhereDistinct
    on QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QDistinct> {
  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QDistinct>
      distinctByCreated_at({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QDistinct>
      distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<AppAccountHexaminate, AppAccountHexaminate, QDistinct>
      distinctByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meesagee_user_id');
    });
  }
}

extension AppAccountHexaminateQueryProperty on QueryBuilder<
    AppAccountHexaminate, AppAccountHexaminate, QQueryProperty> {
  QueryBuilder<AppAccountHexaminate, int, QQueryOperations>
      isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<AppAccountHexaminate, String, QQueryOperations>
      created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<AppAccountHexaminate, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<AppAccountHexaminate, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppAccountHexaminate, int, QQueryOperations>
      meesagee_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meesagee_user_id');
    });
  }
}

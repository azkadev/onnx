// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account_coinlox.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppAccountCoinloxCollection on Isar {
  IsarCollection<AppAccountCoinlox> get appAccountCoinloxs => this.collection();
}

const AppAccountCoinloxSchema = CollectionSchema(
  name: r'AppAccountCoinlox',
  id: 918528678059173292,
  properties: {
    r'balance': PropertySchema(
      id: 0,
      name: r'balance',
      type: IsarType.long,
    ),
    r'created_at': PropertySchema(
      id: 1,
      name: r'created_at',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.long,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.long,
    ),
    r'meesagee_user_id': PropertySchema(
      id: 4,
      name: r'meesagee_user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _appAccountCoinloxEstimateSize,
  serialize: _appAccountCoinloxSerialize,
  deserialize: _appAccountCoinloxDeserialize,
  deserializeProp: _appAccountCoinloxDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appAccountCoinloxGetId,
  getLinks: _appAccountCoinloxGetLinks,
  attach: _appAccountCoinloxAttach,
  version: '3.1.0+1',
);

int _appAccountCoinloxEstimateSize(
  AppAccountCoinlox object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created_at.length * 3;
  return bytesCount;
}

void _appAccountCoinloxSerialize(
  AppAccountCoinlox object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.balance);
  writer.writeString(offsets[1], object.created_at);
  writer.writeLong(offsets[2], object.date);
  writer.writeLong(offsets[3], object.id);
  writer.writeLong(offsets[4], object.meesagee_user_id);
}

AppAccountCoinlox _appAccountCoinloxDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppAccountCoinlox();
  object.balance = reader.readLong(offsets[0]);
  object.created_at = reader.readString(offsets[1]);
  object.date = reader.readLong(offsets[2]);
  object.id = reader.readLong(offsets[3]);
  object.isar_data_id = id;
  object.meesagee_user_id = reader.readLong(offsets[4]);
  return object;
}

P _appAccountCoinloxDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appAccountCoinloxGetId(AppAccountCoinlox object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _appAccountCoinloxGetLinks(
    AppAccountCoinlox object) {
  return [];
}

void _appAccountCoinloxAttach(
    IsarCollection<dynamic> col, Id id, AppAccountCoinlox object) {
  object.isar_data_id = id;
}

extension AppAccountCoinloxQueryWhereSort
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QWhere> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppAccountCoinloxQueryWhere
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QWhereClause> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhereClause>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterWhereClause>
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

extension AppAccountCoinloxQueryFilter
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QFilterCondition> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      balanceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'balance',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      balanceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'balance',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      balanceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'balance',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      balanceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'balance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
      meesagee_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meesagee_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterFilterCondition>
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

extension AppAccountCoinloxQueryObject
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QFilterCondition> {}

extension AppAccountCoinloxQueryLinks
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QFilterCondition> {}

extension AppAccountCoinloxQuerySortBy
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QSortBy> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      sortByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountCoinloxQuerySortThenBy
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QSortThenBy> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QAfterSortBy>
      thenByMeesagee_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meesagee_user_id', Sort.desc);
    });
  }
}

extension AppAccountCoinloxQueryWhereDistinct
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct> {
  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct>
      distinctByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'balance');
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct>
      distinctByCreated_at({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QDistinct>
      distinctByMeesagee_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meesagee_user_id');
    });
  }
}

extension AppAccountCoinloxQueryProperty
    on QueryBuilder<AppAccountCoinlox, AppAccountCoinlox, QQueryProperty> {
  QueryBuilder<AppAccountCoinlox, int, QQueryOperations>
      isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<AppAccountCoinlox, int, QQueryOperations> balanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'balance');
    });
  }

  QueryBuilder<AppAccountCoinlox, String, QQueryOperations>
      created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<AppAccountCoinlox, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<AppAccountCoinlox, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppAccountCoinlox, int, QQueryOperations>
      meesagee_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meesagee_user_id');
    });
  }
}

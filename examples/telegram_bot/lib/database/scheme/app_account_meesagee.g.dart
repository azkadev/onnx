// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_account_meesagee.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppAccountMeesageeCollection on Isar {
  IsarCollection<AppAccountMeesagee> get appAccountMeesagees =>
      this.collection();
}

const AppAccountMeesageeSchema = CollectionSchema(
  name: r'AppAccountMeesagee',
  id: -8960789027522096828,
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
    r'expire_date_verified': PropertySchema(
      id: 2,
      name: r'expire_date_verified',
      type: IsarType.long,
    ),
    r'first_name': PropertySchema(
      id: 3,
      name: r'first_name',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.long,
    ),
    r'is_bot': PropertySchema(
      id: 5,
      name: r'is_bot',
      type: IsarType.bool,
    ),
    r'is_support': PropertySchema(
      id: 6,
      name: r'is_support',
      type: IsarType.bool,
    ),
    r'is_verified': PropertySchema(
      id: 7,
      name: r'is_verified',
      type: IsarType.bool,
    ),
    r'last_name': PropertySchema(
      id: 8,
      name: r'last_name',
      type: IsarType.string,
    ),
    r'owner_user_id': PropertySchema(
      id: 9,
      name: r'owner_user_id',
      type: IsarType.long,
    ),
    r'password': PropertySchema(
      id: 10,
      name: r'password',
      type: IsarType.string,
    ),
    r'phone_number': PropertySchema(
      id: 11,
      name: r'phone_number',
      type: IsarType.long,
    ),
    r'secret_data': PropertySchema(
      id: 12,
      name: r'secret_data',
      type: IsarType.string,
    ),
    r'telegram_user_id': PropertySchema(
      id: 13,
      name: r'telegram_user_id',
      type: IsarType.long,
    ),
    r'username': PropertySchema(
      id: 14,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _appAccountMeesageeEstimateSize,
  serialize: _appAccountMeesageeSerialize,
  deserialize: _appAccountMeesageeDeserialize,
  deserializeProp: _appAccountMeesageeDeserializeProp,
  idName: r'isar_data_id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _appAccountMeesageeGetId,
  getLinks: _appAccountMeesageeGetLinks,
  attach: _appAccountMeesageeAttach,
  version: '3.1.0+1',
);

int _appAccountMeesageeEstimateSize(
  AppAccountMeesagee object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.created_at.length * 3;
  bytesCount += 3 + object.first_name.length * 3;
  bytesCount += 3 + object.last_name.length * 3;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.secret_data.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _appAccountMeesageeSerialize(
  AppAccountMeesagee object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.created_at);
  writer.writeLong(offsets[1], object.date);
  writer.writeLong(offsets[2], object.expire_date_verified);
  writer.writeString(offsets[3], object.first_name);
  writer.writeLong(offsets[4], object.id);
  writer.writeBool(offsets[5], object.is_bot);
  writer.writeBool(offsets[6], object.is_support);
  writer.writeBool(offsets[7], object.is_verified);
  writer.writeString(offsets[8], object.last_name);
  writer.writeLong(offsets[9], object.owner_user_id);
  writer.writeString(offsets[10], object.password);
  writer.writeLong(offsets[11], object.phone_number);
  writer.writeString(offsets[12], object.secret_data);
  writer.writeLong(offsets[13], object.telegram_user_id);
  writer.writeString(offsets[14], object.username);
}

AppAccountMeesagee _appAccountMeesageeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppAccountMeesagee();
  object.created_at = reader.readString(offsets[0]);
  object.date = reader.readLong(offsets[1]);
  object.expire_date_verified = reader.readLong(offsets[2]);
  object.first_name = reader.readString(offsets[3]);
  object.id = reader.readLong(offsets[4]);
  object.is_bot = reader.readBool(offsets[5]);
  object.is_support = reader.readBool(offsets[6]);
  object.is_verified = reader.readBool(offsets[7]);
  object.isar_data_id = id;
  object.last_name = reader.readString(offsets[8]);
  object.owner_user_id = reader.readLong(offsets[9]);
  object.password = reader.readString(offsets[10]);
  object.phone_number = reader.readLong(offsets[11]);
  object.secret_data = reader.readString(offsets[12]);
  object.telegram_user_id = reader.readLong(offsets[13]);
  object.username = reader.readString(offsets[14]);
  return object;
}

P _appAccountMeesageeDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appAccountMeesageeGetId(AppAccountMeesagee object) {
  return object.isar_data_id;
}

List<IsarLinkBase<dynamic>> _appAccountMeesageeGetLinks(
    AppAccountMeesagee object) {
  return [];
}

void _appAccountMeesageeAttach(
    IsarCollection<dynamic> col, Id id, AppAccountMeesagee object) {
  object.isar_data_id = id;
}

extension AppAccountMeesageeQueryWhereSort
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QWhere> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhere>
      anyIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppAccountMeesageeQueryWhere
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QWhereClause> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhereClause>
      isar_data_idEqualTo(Id isar_data_id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isar_data_id,
        upper: isar_data_id,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhereClause>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhereClause>
      isar_data_idGreaterThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isar_data_id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhereClause>
      isar_data_idLessThan(Id isar_data_id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isar_data_id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterWhereClause>
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

extension AppAccountMeesageeQueryFilter
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QFilterCondition> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      created_atContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'created_at',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      created_atMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'created_at',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      created_atIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      created_atIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'created_at',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      expire_date_verifiedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expire_date_verified',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      expire_date_verifiedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expire_date_verified',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      expire_date_verifiedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expire_date_verified',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      expire_date_verifiedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expire_date_verified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'first_name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'first_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'first_name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'first_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      first_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'first_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      is_botEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_bot',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      is_supportEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_support',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      is_verifiedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_verified',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      isar_data_idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isar_data_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
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

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'last_name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'last_name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'last_name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      last_nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'last_name',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      owner_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      owner_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      owner_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'owner_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      owner_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'owner_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      phone_numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone_number',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      phone_numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone_number',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      phone_numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone_number',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      phone_numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone_number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secret_data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secret_data',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secret_data',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secret_data',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      secret_dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secret_data',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      telegram_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telegram_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      telegram_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telegram_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      telegram_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telegram_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      telegram_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telegram_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension AppAccountMeesageeQueryObject
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QFilterCondition> {}

extension AppAccountMeesageeQueryLinks
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QFilterCondition> {}

extension AppAccountMeesageeQuerySortBy
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QSortBy> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByExpire_date_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date_verified', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByExpire_date_verifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date_verified', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByFirst_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByFirst_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_support() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_support', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_supportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_support', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_verified', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByIs_verifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_verified', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByLast_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByLast_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByOwner_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByPhone_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByPhone_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortBySecret_data() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret_data', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortBySecret_dataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret_data', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByTelegram_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegram_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByTelegram_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegram_user_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AppAccountMeesageeQuerySortThenBy
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QSortThenBy> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByCreated_at() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByCreated_atDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByExpire_date_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date_verified', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByExpire_date_verifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expire_date_verified', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByFirst_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByFirst_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'first_name', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_botDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_bot', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_support() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_support', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_supportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_support', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_verified', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIs_verifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_verified', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIsar_data_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByIsar_data_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isar_data_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByLast_name() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByLast_nameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last_name', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByOwner_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'owner_user_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByPhone_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByPhone_numberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone_number', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenBySecret_data() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret_data', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenBySecret_dataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secret_data', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByTelegram_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegram_user_id', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByTelegram_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegram_user_id', Sort.desc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QAfterSortBy>
      thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension AppAccountMeesageeQueryWhereDistinct
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct> {
  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByCreated_at({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByExpire_date_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expire_date_verified');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByFirst_name({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'first_name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByIs_bot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_bot');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByIs_support() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_support');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByIs_verified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_verified');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByLast_name({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'last_name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByOwner_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'owner_user_id');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByPassword({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByPhone_number() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone_number');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctBySecret_data({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secret_data', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByTelegram_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telegram_user_id');
    });
  }

  QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QDistinct>
      distinctByUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension AppAccountMeesageeQueryProperty
    on QueryBuilder<AppAccountMeesagee, AppAccountMeesagee, QQueryProperty> {
  QueryBuilder<AppAccountMeesagee, int, QQueryOperations>
      isar_data_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isar_data_id');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      created_atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations>
      expire_date_verifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expire_date_verified');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      first_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'first_name');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppAccountMeesagee, bool, QQueryOperations> is_botProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_bot');
    });
  }

  QueryBuilder<AppAccountMeesagee, bool, QQueryOperations>
      is_supportProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_support');
    });
  }

  QueryBuilder<AppAccountMeesagee, bool, QQueryOperations>
      is_verifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_verified');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      last_nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'last_name');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations>
      owner_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'owner_user_id');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations>
      phone_numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone_number');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      secret_dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secret_data');
    });
  }

  QueryBuilder<AppAccountMeesagee, int, QQueryOperations>
      telegram_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telegram_user_id');
    });
  }

  QueryBuilder<AppAccountMeesagee, String, QQueryOperations>
      usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}

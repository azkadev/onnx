// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restrict_data_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRestrictDataUserCollection on Isar {
  IsarCollection<RestrictDataUser> get restrictDataUsers => this.collection();
}

const RestrictDataUserSchema = CollectionSchema(
  name: r'RestrictDataUser',
  id: -6100089209375035289,
  properties: {
    r'chat_id': PropertySchema(
      id: 0,
      name: r'chat_id',
      type: IsarType.long,
    ),
    r'is_restrict_force_subscribe_mute': PropertySchema(
      id: 1,
      name: r'is_restrict_force_subscribe_mute',
      type: IsarType.bool,
    ),
    r'is_restrict_secret_data_mute': PropertySchema(
      id: 2,
      name: r'is_restrict_secret_data_mute',
      type: IsarType.bool,
    ),
    r'user_id': PropertySchema(
      id: 3,
      name: r'user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _restrictDataUserEstimateSize,
  serialize: _restrictDataUserSerialize,
  deserialize: _restrictDataUserDeserialize,
  deserializeProp: _restrictDataUserDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _restrictDataUserGetId,
  getLinks: _restrictDataUserGetLinks,
  attach: _restrictDataUserAttach,
  version: '3.1.0+1',
);

int _restrictDataUserEstimateSize(
  RestrictDataUser object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _restrictDataUserSerialize(
  RestrictDataUser object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.chat_id);
  writer.writeBool(offsets[1], object.is_restrict_force_subscribe_mute);
  writer.writeBool(offsets[2], object.is_restrict_secret_data_mute);
  writer.writeLong(offsets[3], object.user_id);
}

RestrictDataUser _restrictDataUserDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RestrictDataUser();
  object.chat_id = reader.readLong(offsets[0]);
  object.id = id;
  object.is_restrict_force_subscribe_mute = reader.readBool(offsets[1]);
  object.is_restrict_secret_data_mute = reader.readBool(offsets[2]);
  object.user_id = reader.readLong(offsets[3]);
  return object;
}

P _restrictDataUserDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _restrictDataUserGetId(RestrictDataUser object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _restrictDataUserGetLinks(RestrictDataUser object) {
  return [];
}

void _restrictDataUserAttach(
    IsarCollection<dynamic> col, Id id, RestrictDataUser object) {
  object.id = id;
}

extension RestrictDataUserQueryWhereSort
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QWhere> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RestrictDataUserQueryWhere
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QWhereClause> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterWhereClause> idBetween(
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

extension RestrictDataUserQueryFilter
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QFilterCondition> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      chat_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      chat_idGreaterThan(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      chat_idLessThan(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      chat_idBetween(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      is_restrict_force_subscribe_muteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_restrict_force_subscribe_mute',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      is_restrict_secret_data_muteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_restrict_secret_data_mute',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
      user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
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

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterFilterCondition>
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

extension RestrictDataUserQueryObject
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QFilterCondition> {}

extension RestrictDataUserQueryLinks
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QFilterCondition> {}

extension RestrictDataUserQuerySortBy
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QSortBy> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByIs_restrict_force_subscribe_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_force_subscribe_mute', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByIs_restrict_force_subscribe_muteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_force_subscribe_mute', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByIs_restrict_secret_data_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_secret_data_mute', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByIs_restrict_secret_data_muteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_secret_data_mute', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      sortByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension RestrictDataUserQuerySortThenBy
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QSortThenBy> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByIs_restrict_force_subscribe_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_force_subscribe_mute', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByIs_restrict_force_subscribe_muteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_force_subscribe_mute', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByIs_restrict_secret_data_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_secret_data_mute', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByIs_restrict_secret_data_muteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_restrict_secret_data_mute', Sort.desc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QAfterSortBy>
      thenByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension RestrictDataUserQueryWhereDistinct
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QDistinct> {
  QueryBuilder<RestrictDataUser, RestrictDataUser, QDistinct>
      distinctByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chat_id');
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QDistinct>
      distinctByIs_restrict_force_subscribe_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_restrict_force_subscribe_mute');
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QDistinct>
      distinctByIs_restrict_secret_data_mute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_restrict_secret_data_mute');
    });
  }

  QueryBuilder<RestrictDataUser, RestrictDataUser, QDistinct>
      distinctByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user_id');
    });
  }
}

extension RestrictDataUserQueryProperty
    on QueryBuilder<RestrictDataUser, RestrictDataUser, QQueryProperty> {
  QueryBuilder<RestrictDataUser, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RestrictDataUser, int, QQueryOperations> chat_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chat_id');
    });
  }

  QueryBuilder<RestrictDataUser, bool, QQueryOperations>
      is_restrict_force_subscribe_muteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_restrict_force_subscribe_mute');
    });
  }

  QueryBuilder<RestrictDataUser, bool, QQueryOperations>
      is_restrict_secret_data_muteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_restrict_secret_data_mute');
    });
  }

  QueryBuilder<RestrictDataUser, int, QQueryOperations> user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user_id');
    });
  }
}

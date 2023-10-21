// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tg_invoke_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTgInvokeDataCollection on Isar {
  IsarCollection<TgInvokeData> get tgInvokeDatas => this.collection();
}

const TgInvokeDataSchema = CollectionSchema(
  name: r'TgInvokeData',
  id: -4892320312174248172,
  properties: {
    r'special_extra': PropertySchema(
      id: 0,
      name: r'special_extra',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.longList,
    )
  },
  estimateSize: _tgInvokeDataEstimateSize,
  serialize: _tgInvokeDataSerialize,
  deserialize: _tgInvokeDataDeserialize,
  deserializeProp: _tgInvokeDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tgInvokeDataGetId,
  getLinks: _tgInvokeDataGetLinks,
  attach: _tgInvokeDataAttach,
  version: '3.1.0+1',
);

int _tgInvokeDataEstimateSize(
  TgInvokeData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.special_extra.length * 3;
  bytesCount += 3 + object.value.length * 8;
  return bytesCount;
}

void _tgInvokeDataSerialize(
  TgInvokeData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.special_extra);
  writer.writeLongList(offsets[1], object.value);
}

TgInvokeData _tgInvokeDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TgInvokeData();
  object.id = id;
  object.special_extra = reader.readString(offsets[0]);
  object.value = reader.readLongList(offsets[1]) ?? [];
  return object;
}

P _tgInvokeDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tgInvokeDataGetId(TgInvokeData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tgInvokeDataGetLinks(TgInvokeData object) {
  return [];
}

void _tgInvokeDataAttach(
    IsarCollection<dynamic> col, Id id, TgInvokeData object) {
  object.id = id;
}

extension TgInvokeDataQueryWhereSort
    on QueryBuilder<TgInvokeData, TgInvokeData, QWhere> {
  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TgInvokeDataQueryWhere
    on QueryBuilder<TgInvokeData, TgInvokeData, QWhereClause> {
  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterWhereClause> idBetween(
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

extension TgInvokeDataQueryFilter
    on QueryBuilder<TgInvokeData, TgInvokeData, QFilterCondition> {
  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'special_extra',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'special_extra',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'special_extra',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'special_extra',
        value: '',
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      special_extraIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'special_extra',
        value: '',
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterFilterCondition>
      valueLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'value',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension TgInvokeDataQueryObject
    on QueryBuilder<TgInvokeData, TgInvokeData, QFilterCondition> {}

extension TgInvokeDataQueryLinks
    on QueryBuilder<TgInvokeData, TgInvokeData, QFilterCondition> {}

extension TgInvokeDataQuerySortBy
    on QueryBuilder<TgInvokeData, TgInvokeData, QSortBy> {
  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy> sortBySpecial_extra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'special_extra', Sort.asc);
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy>
      sortBySpecial_extraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'special_extra', Sort.desc);
    });
  }
}

extension TgInvokeDataQuerySortThenBy
    on QueryBuilder<TgInvokeData, TgInvokeData, QSortThenBy> {
  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy> thenBySpecial_extra() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'special_extra', Sort.asc);
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QAfterSortBy>
      thenBySpecial_extraDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'special_extra', Sort.desc);
    });
  }
}

extension TgInvokeDataQueryWhereDistinct
    on QueryBuilder<TgInvokeData, TgInvokeData, QDistinct> {
  QueryBuilder<TgInvokeData, TgInvokeData, QDistinct> distinctBySpecial_extra(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'special_extra',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TgInvokeData, TgInvokeData, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }
}

extension TgInvokeDataQueryProperty
    on QueryBuilder<TgInvokeData, TgInvokeData, QQueryProperty> {
  QueryBuilder<TgInvokeData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TgInvokeData, String, QQueryOperations> special_extraProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'special_extra');
    });
  }

  QueryBuilder<TgInvokeData, List<int>, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }
}

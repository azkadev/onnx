// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_transaction_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemTransactionDataCollection on Isar {
  IsarCollection<ItemTransactionData> get itemTransactionDatas =>
      this.collection();
}

const ItemTransactionDataSchema = CollectionSchema(
  name: r'ItemTransactionData',
  id: 16407809452081824,
  properties: {
    r'client_user_id': PropertySchema(
      id: 0,
      name: r'client_user_id',
      type: IsarType.long,
    ),
    r'item_unique_id': PropertySchema(
      id: 1,
      name: r'item_unique_id',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 2,
      name: r'price',
      type: IsarType.long,
    ),
    r'review_msg': PropertySchema(
      id: 3,
      name: r'review_msg',
      type: IsarType.object,
      target: r'ItemTransactionDataReviewMsg',
    ),
    r'user_id': PropertySchema(
      id: 4,
      name: r'user_id',
      type: IsarType.long,
    )
  },
  estimateSize: _itemTransactionDataEstimateSize,
  serialize: _itemTransactionDataSerialize,
  deserialize: _itemTransactionDataDeserialize,
  deserializeProp: _itemTransactionDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ItemTransactionDataReviewMsg': ItemTransactionDataReviewMsgSchema
  },
  getId: _itemTransactionDataGetId,
  getLinks: _itemTransactionDataGetLinks,
  attach: _itemTransactionDataAttach,
  version: '3.1.0+1',
);

int _itemTransactionDataEstimateSize(
  ItemTransactionData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.item_unique_id.length * 3;
  bytesCount += 3 +
      ItemTransactionDataReviewMsgSchema.estimateSize(object.review_msg,
          allOffsets[ItemTransactionDataReviewMsg]!, allOffsets);
  return bytesCount;
}

void _itemTransactionDataSerialize(
  ItemTransactionData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.client_user_id);
  writer.writeString(offsets[1], object.item_unique_id);
  writer.writeLong(offsets[2], object.price);
  writer.writeObject<ItemTransactionDataReviewMsg>(
    offsets[3],
    allOffsets,
    ItemTransactionDataReviewMsgSchema.serialize,
    object.review_msg,
  );
  writer.writeLong(offsets[4], object.user_id);
}

ItemTransactionData _itemTransactionDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemTransactionData();
  object.client_user_id = reader.readLong(offsets[0]);
  object.id = id;
  object.item_unique_id = reader.readString(offsets[1]);
  object.price = reader.readLong(offsets[2]);
  object.review_msg = reader.readObjectOrNull<ItemTransactionDataReviewMsg>(
        offsets[3],
        ItemTransactionDataReviewMsgSchema.deserialize,
        allOffsets,
      ) ??
      ItemTransactionDataReviewMsg();
  object.user_id = reader.readLong(offsets[4]);
  return object;
}

P _itemTransactionDataDeserializeProp<P>(
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
      return (reader.readObjectOrNull<ItemTransactionDataReviewMsg>(
            offset,
            ItemTransactionDataReviewMsgSchema.deserialize,
            allOffsets,
          ) ??
          ItemTransactionDataReviewMsg()) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemTransactionDataGetId(ItemTransactionData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemTransactionDataGetLinks(
    ItemTransactionData object) {
  return [];
}

void _itemTransactionDataAttach(
    IsarCollection<dynamic> col, Id id, ItemTransactionData object) {
  object.id = id;
}

extension ItemTransactionDataQueryWhereSort
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QWhere> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemTransactionDataQueryWhere
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QWhereClause> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhereClause>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterWhereClause>
      idBetween(
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

extension ItemTransactionDataQueryFilter on QueryBuilder<ItemTransactionData,
    ItemTransactionData, QFilterCondition> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      client_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'item_unique_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'item_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'item_unique_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item_unique_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      item_unique_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'item_unique_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      priceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      priceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      priceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      priceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
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

extension ItemTransactionDataQueryObject on QueryBuilder<ItemTransactionData,
    ItemTransactionData, QFilterCondition> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterFilterCondition>
      review_msg(FilterQuery<ItemTransactionDataReviewMsg> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'review_msg');
    });
  }
}

extension ItemTransactionDataQueryLinks on QueryBuilder<ItemTransactionData,
    ItemTransactionData, QFilterCondition> {}

extension ItemTransactionDataQuerySortBy
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QSortBy> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByItem_unique_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_unique_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByItem_unique_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_unique_id', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      sortByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension ItemTransactionDataQuerySortThenBy
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QSortThenBy> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByItem_unique_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_unique_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByItem_unique_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item_unique_id', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.asc);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QAfterSortBy>
      thenByUser_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'user_id', Sort.desc);
    });
  }
}

extension ItemTransactionDataQueryWhereDistinct
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QDistinct> {
  QueryBuilder<ItemTransactionData, ItemTransactionData, QDistinct>
      distinctByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id');
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QDistinct>
      distinctByItem_unique_id({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'item_unique_id',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionData, QDistinct>
      distinctByUser_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'user_id');
    });
  }
}

extension ItemTransactionDataQueryProperty
    on QueryBuilder<ItemTransactionData, ItemTransactionData, QQueryProperty> {
  QueryBuilder<ItemTransactionData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ItemTransactionData, int, QQueryOperations>
      client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<ItemTransactionData, String, QQueryOperations>
      item_unique_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'item_unique_id');
    });
  }

  QueryBuilder<ItemTransactionData, int, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<ItemTransactionData, ItemTransactionDataReviewMsg,
      QQueryOperations> review_msgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'review_msg');
    });
  }

  QueryBuilder<ItemTransactionData, int, QQueryOperations> user_idProperty() {
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

const ItemTransactionDataReviewMsgSchema = Schema(
  name: r'ItemTransactionDataReviewMsg',
  id: 2590748298592920044,
  properties: {
    r'acces_msg': PropertySchema(
      id: 0,
      name: r'acces_msg',
      type: IsarType.string,
    ),
    r'can_allow_sending_without_reply': PropertySchema(
      id: 1,
      name: r'can_allow_sending_without_reply',
      type: IsarType.bool,
    ),
    r'can_deep_link': PropertySchema(
      id: 2,
      name: r'can_deep_link',
      type: IsarType.bool,
    ),
    r'can_disable_web_page_preview': PropertySchema(
      id: 3,
      name: r'can_disable_web_page_preview',
      type: IsarType.bool,
    ),
    r'can_reply_to_message_id': PropertySchema(
      id: 4,
      name: r'can_reply_to_message_id',
      type: IsarType.bool,
    ),
    r'can_response_callback_data': PropertySchema(
      id: 5,
      name: r'can_response_callback_data',
      type: IsarType.bool,
    ),
    r'can_send_chat_action': PropertySchema(
      id: 6,
      name: r'can_send_chat_action',
      type: IsarType.bool,
    ),
    r'date': PropertySchema(
      id: 7,
      name: r'date',
      type: IsarType.long,
    ),
    r'file_unique_id': PropertySchema(
      id: 8,
      name: r'file_unique_id',
      type: IsarType.string,
    ),
    r'from_platform': PropertySchema(
      id: 9,
      name: r'from_platform',
      type: IsarType.string,
    ),
    r'from_user_id': PropertySchema(
      id: 10,
      name: r'from_user_id',
      type: IsarType.long,
    ),
    r'request_api': PropertySchema(
      id: 11,
      name: r'request_api',
      type: IsarType.string,
    ),
    r'text': PropertySchema(
      id: 12,
      name: r'text',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 13,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _itemTransactionDataReviewMsgEstimateSize,
  serialize: _itemTransactionDataReviewMsgSerialize,
  deserialize: _itemTransactionDataReviewMsgDeserialize,
  deserializeProp: _itemTransactionDataReviewMsgDeserializeProp,
);

int _itemTransactionDataReviewMsgEstimateSize(
  ItemTransactionDataReviewMsg object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.acces_msg.length * 3;
  bytesCount += 3 + object.file_unique_id.length * 3;
  bytesCount += 3 + object.from_platform.length * 3;
  bytesCount += 3 + object.request_api.length * 3;
  bytesCount += 3 + object.text.length * 3;
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _itemTransactionDataReviewMsgSerialize(
  ItemTransactionDataReviewMsg object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.acces_msg);
  writer.writeBool(offsets[1], object.can_allow_sending_without_reply);
  writer.writeBool(offsets[2], object.can_deep_link);
  writer.writeBool(offsets[3], object.can_disable_web_page_preview);
  writer.writeBool(offsets[4], object.can_reply_to_message_id);
  writer.writeBool(offsets[5], object.can_response_callback_data);
  writer.writeBool(offsets[6], object.can_send_chat_action);
  writer.writeLong(offsets[7], object.date);
  writer.writeString(offsets[8], object.file_unique_id);
  writer.writeString(offsets[9], object.from_platform);
  writer.writeLong(offsets[10], object.from_user_id);
  writer.writeString(offsets[11], object.request_api);
  writer.writeString(offsets[12], object.text);
  writer.writeString(offsets[13], object.type);
}

ItemTransactionDataReviewMsg _itemTransactionDataReviewMsgDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemTransactionDataReviewMsg();
  object.acces_msg = reader.readString(offsets[0]);
  object.can_allow_sending_without_reply = reader.readBool(offsets[1]);
  object.can_deep_link = reader.readBool(offsets[2]);
  object.can_disable_web_page_preview = reader.readBool(offsets[3]);
  object.can_reply_to_message_id = reader.readBool(offsets[4]);
  object.can_response_callback_data = reader.readBool(offsets[5]);
  object.can_send_chat_action = reader.readBool(offsets[6]);
  object.date = reader.readLong(offsets[7]);
  object.file_unique_id = reader.readString(offsets[8]);
  object.from_platform = reader.readString(offsets[9]);
  object.from_user_id = reader.readLong(offsets[10]);
  object.request_api = reader.readString(offsets[11]);
  object.text = reader.readString(offsets[12]);
  object.type = reader.readString(offsets[13]);
  return object;
}

P _itemTransactionDataReviewMsgDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ItemTransactionDataReviewMsgQueryFilter on QueryBuilder<
    ItemTransactionDataReviewMsg,
    ItemTransactionDataReviewMsg,
    QFilterCondition> {
  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acces_msg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      acces_msgContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acces_msg',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      acces_msgMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acces_msg',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acces_msg',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> acces_msgIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acces_msg',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      can_allow_sending_without_replyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_allow_sending_without_reply',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> can_deep_linkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_deep_link',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> can_disable_web_page_previewEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_disable_web_page_preview',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> can_reply_to_message_idEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_reply_to_message_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> can_response_callback_dataEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_response_callback_data',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> can_send_chat_actionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'can_send_chat_action',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> dateEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
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

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
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

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
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

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'file_unique_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      file_unique_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'file_unique_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      file_unique_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'file_unique_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'file_unique_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> file_unique_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'file_unique_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from_platform',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      from_platformContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'from_platform',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      from_platformMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'from_platform',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_platform',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_platformIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'from_platform',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_user_idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_user_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_user_idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from_user_id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> from_user_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'request_api',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      request_apiContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'request_api',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      request_apiMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'request_api',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'request_api',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> request_apiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'request_api',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemTransactionDataReviewMsg, ItemTransactionDataReviewMsg,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension ItemTransactionDataReviewMsgQueryObject on QueryBuilder<
    ItemTransactionDataReviewMsg,
    ItemTransactionDataReviewMsg,
    QFilterCondition> {}

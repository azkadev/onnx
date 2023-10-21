// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_data_wa.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChatDataWaCollection on Isar {
  IsarCollection<ChatDataWa> get chatDataWas => this.collection();
}

const ChatDataWaSchema = CollectionSchema(
  name: r'ChatDataWa',
  id: 8203830178163254005,
  properties: {
    r'chat_id': PropertySchema(
      id: 0,
      name: r'chat_id',
      type: IsarType.string,
    ),
    r'client_user_id': PropertySchema(
      id: 1,
      name: r'client_user_id',
      type: IsarType.string,
    ),
    r'data': PropertySchema(
      id: 2,
      name: r'data',
      type: IsarType.longList,
    ),
    r'room_chat_id': PropertySchema(
      id: 3,
      name: r'room_chat_id',
      type: IsarType.string,
    )
  },
  estimateSize: _chatDataWaEstimateSize,
  serialize: _chatDataWaSerialize,
  deserialize: _chatDataWaDeserialize,
  deserializeProp: _chatDataWaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _chatDataWaGetId,
  getLinks: _chatDataWaGetLinks,
  attach: _chatDataWaAttach,
  version: '3.1.0+1',
);

int _chatDataWaEstimateSize(
  ChatDataWa object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.chat_id.length * 3;
  bytesCount += 3 + object.client_user_id.length * 3;
  bytesCount += 3 + object.data.length * 8;
  bytesCount += 3 + object.room_chat_id.length * 3;
  return bytesCount;
}

void _chatDataWaSerialize(
  ChatDataWa object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.chat_id);
  writer.writeString(offsets[1], object.client_user_id);
  writer.writeLongList(offsets[2], object.data);
  writer.writeString(offsets[3], object.room_chat_id);
}

ChatDataWa _chatDataWaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChatDataWa();
  object.chat_id = reader.readString(offsets[0]);
  object.client_user_id = reader.readString(offsets[1]);
  object.data = reader.readLongList(offsets[2]) ?? [];
  object.id = id;
  object.room_chat_id = reader.readString(offsets[3]);
  return object;
}

P _chatDataWaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLongList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _chatDataWaGetId(ChatDataWa object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _chatDataWaGetLinks(ChatDataWa object) {
  return [];
}

void _chatDataWaAttach(IsarCollection<dynamic> col, Id id, ChatDataWa object) {
  object.id = id;
}

extension ChatDataWaQueryWhereSort
    on QueryBuilder<ChatDataWa, ChatDataWa, QWhere> {
  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChatDataWaQueryWhere
    on QueryBuilder<ChatDataWa, ChatDataWa, QWhereClause> {
  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterWhereClause> idBetween(
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

extension ChatDataWaQueryFilter
    on QueryBuilder<ChatDataWa, ChatDataWa, QFilterCondition> {
  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      chat_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chat_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chat_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> chat_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chat_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      chat_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chat_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'client_user_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'client_user_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'client_user_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'client_user_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      client_user_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'client_user_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataElementGreaterThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataElementLessThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataElementBetween(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> dataLengthEqualTo(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> dataIsEmpty() {
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> dataIsNotEmpty() {
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataLengthLessThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      dataLengthGreaterThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> dataLengthBetween(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'room_chat_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'room_chat_id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'room_chat_id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'room_chat_id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterFilterCondition>
      room_chat_idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'room_chat_id',
        value: '',
      ));
    });
  }
}

extension ChatDataWaQueryObject
    on QueryBuilder<ChatDataWa, ChatDataWa, QFilterCondition> {}

extension ChatDataWaQueryLinks
    on QueryBuilder<ChatDataWa, ChatDataWa, QFilterCondition> {}

extension ChatDataWaQuerySortBy
    on QueryBuilder<ChatDataWa, ChatDataWa, QSortBy> {
  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> sortByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> sortByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> sortByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy>
      sortByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> sortByRoom_chat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_chat_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> sortByRoom_chat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_chat_id', Sort.desc);
    });
  }
}

extension ChatDataWaQuerySortThenBy
    on QueryBuilder<ChatDataWa, ChatDataWa, QSortThenBy> {
  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByChat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByChat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chat_id', Sort.desc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByClient_user_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy>
      thenByClient_user_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'client_user_id', Sort.desc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByRoom_chat_id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_chat_id', Sort.asc);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QAfterSortBy> thenByRoom_chat_idDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'room_chat_id', Sort.desc);
    });
  }
}

extension ChatDataWaQueryWhereDistinct
    on QueryBuilder<ChatDataWa, ChatDataWa, QDistinct> {
  QueryBuilder<ChatDataWa, ChatDataWa, QDistinct> distinctByChat_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chat_id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QDistinct> distinctByClient_user_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'client_user_id',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QDistinct> distinctByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data');
    });
  }

  QueryBuilder<ChatDataWa, ChatDataWa, QDistinct> distinctByRoom_chat_id(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'room_chat_id', caseSensitive: caseSensitive);
    });
  }
}

extension ChatDataWaQueryProperty
    on QueryBuilder<ChatDataWa, ChatDataWa, QQueryProperty> {
  QueryBuilder<ChatDataWa, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChatDataWa, String, QQueryOperations> chat_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chat_id');
    });
  }

  QueryBuilder<ChatDataWa, String, QQueryOperations> client_user_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'client_user_id');
    });
  }

  QueryBuilder<ChatDataWa, List<int>, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }

  QueryBuilder<ChatDataWa, String, QQueryOperations> room_chat_idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'room_chat_id');
    });
  }
}

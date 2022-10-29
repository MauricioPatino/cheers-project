// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beers.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetBeersCollection on Isar {
  IsarCollection<Beers> get beers => this.collection();
}

const BeersSchema = CollectionSchema(
  name: r'Beers',
  id: 5578632710359926244,
  properties: {
    r'drink': PropertySchema(
      id: 0,
      name: r'drink',
      type: IsarType.string,
    )
  },
  estimateSize: _beersEstimateSize,
  serialize: _beersSerialize,
  deserialize: _beersDeserialize,
  deserializeProp: _beersDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _beersGetId,
  getLinks: _beersGetLinks,
  attach: _beersAttach,
  version: '3.0.2',
);

int _beersEstimateSize(
  Beers object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.drink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _beersSerialize(
  Beers object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.drink);
}

Beers _beersDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Beers();
  object.drink = reader.readStringOrNull(offsets[0]);
  object.id = id;
  return object;
}

P _beersDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _beersGetId(Beers object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _beersGetLinks(Beers object) {
  return [];
}

void _beersAttach(IsarCollection<dynamic> col, Id id, Beers object) {
  object.id = id;
}

extension BeersQueryWhereSort on QueryBuilder<Beers, Beers, QWhere> {
  QueryBuilder<Beers, Beers, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BeersQueryWhere on QueryBuilder<Beers, Beers, QWhereClause> {
  QueryBuilder<Beers, Beers, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Beers, Beers, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Beers, Beers, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Beers, Beers, QAfterWhereClause> idBetween(
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

extension BeersQueryFilter on QueryBuilder<Beers, Beers, QFilterCondition> {
  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drink',
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drink',
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drink',
        value: '',
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> drinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drink',
        value: '',
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Beers, Beers, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Beers, Beers, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Beers, Beers, QAfterFilterCondition> idBetween(
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
}

extension BeersQueryObject on QueryBuilder<Beers, Beers, QFilterCondition> {}

extension BeersQueryLinks on QueryBuilder<Beers, Beers, QFilterCondition> {}

extension BeersQuerySortBy on QueryBuilder<Beers, Beers, QSortBy> {
  QueryBuilder<Beers, Beers, QAfterSortBy> sortByDrink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drink', Sort.asc);
    });
  }

  QueryBuilder<Beers, Beers, QAfterSortBy> sortByDrinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drink', Sort.desc);
    });
  }
}

extension BeersQuerySortThenBy on QueryBuilder<Beers, Beers, QSortThenBy> {
  QueryBuilder<Beers, Beers, QAfterSortBy> thenByDrink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drink', Sort.asc);
    });
  }

  QueryBuilder<Beers, Beers, QAfterSortBy> thenByDrinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drink', Sort.desc);
    });
  }

  QueryBuilder<Beers, Beers, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Beers, Beers, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension BeersQueryWhereDistinct on QueryBuilder<Beers, Beers, QDistinct> {
  QueryBuilder<Beers, Beers, QDistinct> distinctByDrink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drink', caseSensitive: caseSensitive);
    });
  }
}

extension BeersQueryProperty on QueryBuilder<Beers, Beers, QQueryProperty> {
  QueryBuilder<Beers, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Beers, String?, QQueryOperations> drinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drink');
    });
  }
}

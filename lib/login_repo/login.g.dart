// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoginCollection on Isar {
  IsarCollection<Login> get logins => this.collection();
}

const LoginSchema = CollectionSchema(
  name: r'Login',
  id: 7934634443166946965,
  properties: {
    r'loginCreationDate': PropertySchema(
      id: 0,
      name: r'loginCreationDate',
      type: IsarType.dateTime,
    ),
    r'loginLastEdited': PropertySchema(
      id: 1,
      name: r'loginLastEdited',
      type: IsarType.dateTime,
    ),
    r'loginPassword': PropertySchema(
      id: 2,
      name: r'loginPassword',
      type: IsarType.string,
    ),
    r'loginSite': PropertySchema(
      id: 3,
      name: r'loginSite',
      type: IsarType.string,
    ),
    r'loginUsername': PropertySchema(
      id: 4,
      name: r'loginUsername',
      type: IsarType.string,
    )
  },
  estimateSize: _loginEstimateSize,
  serialize: _loginSerialize,
  deserialize: _loginDeserialize,
  deserializeProp: _loginDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _loginGetId,
  getLinks: _loginGetLinks,
  attach: _loginAttach,
  version: '3.1.0+1',
);

int _loginEstimateSize(
  Login object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.loginPassword;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.loginSite;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.loginUsername;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _loginSerialize(
  Login object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.loginCreationDate);
  writer.writeDateTime(offsets[1], object.loginLastEdited);
  writer.writeString(offsets[2], object.loginPassword);
  writer.writeString(offsets[3], object.loginSite);
  writer.writeString(offsets[4], object.loginUsername);
}

Login _loginDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Login();
  object.id = id;
  object.loginCreationDate = reader.readDateTimeOrNull(offsets[0]);
  object.loginLastEdited = reader.readDateTimeOrNull(offsets[1]);
  object.loginPassword = reader.readStringOrNull(offsets[2]);
  object.loginSite = reader.readStringOrNull(offsets[3]);
  object.loginUsername = reader.readStringOrNull(offsets[4]);
  return object;
}

P _loginDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loginGetId(Login object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loginGetLinks(Login object) {
  return [];
}

void _loginAttach(IsarCollection<dynamic> col, Id id, Login object) {
  object.id = id;
}

extension LoginQueryWhereSort on QueryBuilder<Login, Login, QWhere> {
  QueryBuilder<Login, Login, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoginQueryWhere on QueryBuilder<Login, Login, QWhereClause> {
  QueryBuilder<Login, Login, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Login, Login, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Login, Login, QAfterWhereClause> idBetween(
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

extension LoginQueryFilter on QueryBuilder<Login, Login, QFilterCondition> {
  QueryBuilder<Login, Login, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Login, Login, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Login, Login, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Login, Login, QAfterFilterCondition> loginCreationDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginCreationDate',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition>
      loginCreationDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginCreationDate',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginCreationDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginCreationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition>
      loginCreationDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginCreationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginCreationDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginCreationDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginCreationDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginCreationDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginLastEdited',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginLastEdited',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginLastEdited',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginLastEdited',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginLastEdited',
        value: value,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginLastEditedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginLastEdited',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginPassword',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginPassword',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginPassword',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginPassword',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginPassword',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginPasswordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginPassword',
        value: '',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginSite',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginSite',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginSite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginSite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginSite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginSite',
        value: '',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginSiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginSite',
        value: '',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loginUsername',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loginUsername',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loginUsername',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loginUsername',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loginUsername',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loginUsername',
        value: '',
      ));
    });
  }

  QueryBuilder<Login, Login, QAfterFilterCondition> loginUsernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loginUsername',
        value: '',
      ));
    });
  }
}

extension LoginQueryObject on QueryBuilder<Login, Login, QFilterCondition> {}

extension LoginQueryLinks on QueryBuilder<Login, Login, QFilterCondition> {}

extension LoginQuerySortBy on QueryBuilder<Login, Login, QSortBy> {
  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCreationDate', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCreationDate', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginLastEdited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginLastEdited', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginLastEditedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginLastEdited', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginPassword', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginPassword', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginSite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginSite', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginSiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginSite', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginUsername', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> sortByLoginUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginUsername', Sort.desc);
    });
  }
}

extension LoginQuerySortThenBy on QueryBuilder<Login, Login, QSortThenBy> {
  QueryBuilder<Login, Login, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCreationDate', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginCreationDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginCreationDate', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginLastEdited() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginLastEdited', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginLastEditedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginLastEdited', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginPassword', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginPassword', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginSite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginSite', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginSiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginSite', Sort.desc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginUsername', Sort.asc);
    });
  }

  QueryBuilder<Login, Login, QAfterSortBy> thenByLoginUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loginUsername', Sort.desc);
    });
  }
}

extension LoginQueryWhereDistinct on QueryBuilder<Login, Login, QDistinct> {
  QueryBuilder<Login, Login, QDistinct> distinctByLoginCreationDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginCreationDate');
    });
  }

  QueryBuilder<Login, Login, QDistinct> distinctByLoginLastEdited() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginLastEdited');
    });
  }

  QueryBuilder<Login, Login, QDistinct> distinctByLoginPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginPassword',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Login, Login, QDistinct> distinctByLoginSite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginSite', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Login, Login, QDistinct> distinctByLoginUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loginUsername',
          caseSensitive: caseSensitive);
    });
  }
}

extension LoginQueryProperty on QueryBuilder<Login, Login, QQueryProperty> {
  QueryBuilder<Login, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Login, DateTime?, QQueryOperations> loginCreationDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginCreationDate');
    });
  }

  QueryBuilder<Login, DateTime?, QQueryOperations> loginLastEditedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginLastEdited');
    });
  }

  QueryBuilder<Login, String?, QQueryOperations> loginPasswordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginPassword');
    });
  }

  QueryBuilder<Login, String?, QQueryOperations> loginSiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginSite');
    });
  }

  QueryBuilder<Login, String?, QQueryOperations> loginUsernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loginUsername');
    });
  }
}

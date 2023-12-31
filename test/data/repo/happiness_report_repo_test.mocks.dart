// Mocks generated by Mockito 5.3.2 from annotations
// in happiness_app/test/data/repo/happiness_report_repo_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:happiness_app/data/datasources/datasource.dart' as _i3;
import 'package:happiness_app/domain/models/model.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeModel_0 extends _i1.SmartFake implements _i2.Model {
  _FakeModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Datasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatasource extends _i1.Mock implements _i3.Datasource {
  MockDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i2.Model>> fetchAll(
    String? modelName, {
    List<String>? fields,
    List<dynamic>? domain,
    int? limit,
    int? offset,
    String? order,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchAll,
          [modelName],
          {
            #fields: fields,
            #domain: domain,
            #limit: limit,
            #offset: offset,
            #order: order,
          },
        ),
        returnValue: _i4.Future<List<_i2.Model>>.value(<_i2.Model>[]),
      ) as _i4.Future<List<_i2.Model>>);
  @override
  _i4.Future<_i2.Model> fetch(
    String? modelName,
    int? modelId, {
    List<String>? fields,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [
            modelName,
            modelId,
          ],
          {#fields: fields},
        ),
        returnValue: _i4.Future<_i2.Model>.value(_FakeModel_0(
          this,
          Invocation.method(
            #fetch,
            [
              modelName,
              modelId,
            ],
            {#fields: fields},
          ),
        )),
      ) as _i4.Future<_i2.Model>);
  @override
  _i4.Future<_i2.Model> create(
    String? modelName,
    _i2.Model? modelInstance,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #create,
          [
            modelName,
            modelInstance,
          ],
        ),
        returnValue: _i4.Future<_i2.Model>.value(_FakeModel_0(
          this,
          Invocation.method(
            #create,
            [
              modelName,
              modelInstance,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Model>);
  @override
  _i4.Future<_i2.Model> update(
    String? modelName,
    _i2.Model? updatedModelInstance,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [
            modelName,
            updatedModelInstance,
          ],
        ),
        returnValue: _i4.Future<_i2.Model>.value(_FakeModel_0(
          this,
          Invocation.method(
            #update,
            [
              modelName,
              updatedModelInstance,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Model>);
  @override
  _i4.Future<bool> delete(
    String? modelName,
    int? modelId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [
            modelName,
            modelId,
          ],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
}

// Mocks generated by Mockito 5.3.2 from annotations
// in happiness_app/test/presentation/presenter/settings_presenter_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:happiness_app/domain/models/happiness_settings_model.dart'
    as _i2;
import 'package:happiness_app/domain/repositories/happiness_settings_repo.dart'
    as _i3;
import 'package:happiness_app/presentation/views/pages/settings_page_view.dart'
    as _i5;
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

class _FakeHappinessSettingsModel_0 extends _i1.SmartFake
    implements _i2.HappinessSettingsModel {
  _FakeHappinessSettingsModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [HappinessSettingsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockHappinessSettingsRepository extends _i1.Mock
    implements _i3.HappinessSettingsRepository {
  MockHappinessSettingsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.HappinessSettingsModel> getForEmployee(int? employeeId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getForEmployee,
          [employeeId],
        ),
        returnValue: _i4.Future<_i2.HappinessSettingsModel>.value(
            _FakeHappinessSettingsModel_0(
          this,
          Invocation.method(
            #getForEmployee,
            [employeeId],
          ),
        )),
      ) as _i4.Future<_i2.HappinessSettingsModel>);
  @override
  _i4.Future<_i2.HappinessSettingsModel> getMySettings() => (super.noSuchMethod(
        Invocation.method(
          #getMySettings,
          [],
        ),
        returnValue: _i4.Future<_i2.HappinessSettingsModel>.value(
            _FakeHappinessSettingsModel_0(
          this,
          Invocation.method(
            #getMySettings,
            [],
          ),
        )),
      ) as _i4.Future<_i2.HappinessSettingsModel>);
  @override
  _i4.Future<_i2.HappinessSettingsModel> update(
          _i2.HappinessSettingsModel? dailyIntrospection) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [dailyIntrospection],
        ),
        returnValue: _i4.Future<_i2.HappinessSettingsModel>.value(
            _FakeHappinessSettingsModel_0(
          this,
          Invocation.method(
            #update,
            [dailyIntrospection],
          ),
        )),
      ) as _i4.Future<_i2.HappinessSettingsModel>);
}

/// A class which mocks [SettingsPageView].
///
/// See the documentation for Mockito's code generation for more information.
class MockSettingsPageView extends _i1.Mock implements _i5.SettingsPageView {
  MockSettingsPageView() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void notifySettingsImported(_i2.HappinessSettingsModel? settings) =>
      super.noSuchMethod(
        Invocation.method(
          #notifySettingsImported,
          [settings],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void notifySettingsNotFetched() => super.noSuchMethod(
        Invocation.method(
          #notifySettingsNotFetched,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void setInProgress(bool? inProgress) => super.noSuchMethod(
        Invocation.method(
          #setInProgress,
          [inProgress],
        ),
        returnValueForMissingStub: null,
      );
}

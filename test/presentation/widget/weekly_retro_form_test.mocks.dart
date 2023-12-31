// Mocks generated by Mockito 5.3.2 from annotations
// in happiness_app/test/presentation/widget/weekly_retro_form_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:happiness_app/domain/models/happiness_report_model.dart' as _i4;
import 'package:happiness_app/domain/repositories/happiness_report_repo.dart'
    as _i5;
import 'package:happiness_app/presentation/presenters/weekly_retro_presenter.dart'
    as _i3;
import 'package:happiness_app/presentation/state_management/user_details_state.dart'
    as _i2;
import 'package:happiness_app/presentation/views/pages/weekly_retro_page_view.dart'
    as _i6;
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

class _FakeUserDetailsState_0 extends _i1.SmartFake
    implements _i2.UserDetailsState {
  _FakeUserDetailsState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [WeeklyRetrospectionPresenter].
///
/// See the documentation for Mockito's code generation for more information.
class MockWeeklyRetrospectionPresenter extends _i1.Mock
    implements _i3.WeeklyRetrospectionPresenter {
  MockWeeklyRetrospectionPresenter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.UserDetailsState get userDetails => (super.noSuchMethod(
        Invocation.getter(#userDetails),
        returnValue: _FakeUserDetailsState_0(
          this,
          Invocation.getter(#userDetails),
        ),
      ) as _i2.UserDetailsState);
  @override
  set currentWeekReport(_i4.HappinessReportModel? _currentWeekReport) =>
      super.noSuchMethod(
        Invocation.setter(
          #currentWeekReport,
          _currentWeekReport,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get repositoriesAttached => (super.noSuchMethod(
        Invocation.getter(#repositoriesAttached),
        returnValue: false,
      ) as bool);
  @override
  set repositoriesAttached(bool? _repositoriesAttached) => super.noSuchMethod(
        Invocation.setter(
          #repositoriesAttached,
          _repositoriesAttached,
        ),
        returnValueForMissingStub: null,
      );
  @override
  void attachRepositories(
          _i5.HappinessReportRepository? happinessReportRepository) =>
      super.noSuchMethod(
        Invocation.method(
          #attachRepositories,
          [happinessReportRepository],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void attach(_i6.WeeklyRetrospectionPageView? view) => super.noSuchMethod(
        Invocation.method(
          #attach,
          [view],
        ),
        returnValueForMissingStub: null,
      );
  @override
  void detach() => super.noSuchMethod(
        Invocation.method(
          #detach,
          [],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<void> fetchReport(
    int? weekNumber,
    int? year,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchReport,
          [
            weekNumber,
            year,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
  @override
  _i7.Future<void> saveChanges(
    int? weeklyRating,
    String? feedback,
    String? insight,
    int? weekNumber,
    int? year,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveChanges,
          [
            weeklyRating,
            feedback,
            insight,
            weekNumber,
            year,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

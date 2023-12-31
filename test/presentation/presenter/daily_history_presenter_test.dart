// ignore_for_file: lines_longer_than_80_chars, always_put_required_named_parameters_first, cascade_invocations

import 'package:flutter_test/flutter_test.dart';
import 'package:happiness_app/data/exceptions/repo_exception.dart';
import 'package:happiness_app/domain/models/happiness_report_model.dart';
import 'package:happiness_app/domain/repositories/happiness_report_repo.dart';
import 'package:happiness_app/presentation/presenters/daily_history_presenter.dart';
import 'package:happiness_app/presentation/views/pages/daily_history_page_view.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'daily_history_presenter_test.mocks.dart';


@GenerateMocks([HappinessReportRepository, DailyIntrospectionHistoryPageView])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  /// DailyIntrospectionHistoryPresenter tests

  group('Daily Introspection History Presenter tests', ()
  {
    test('DailyIntrospectionHistoryPresenter constructor test', () {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      presenter.attachRepositories(repo);

      expect(presenter, isA<DailyIntrospectionHistoryPresenter>());
      expect(presenter.repositoriesAttached, true);
    });

    test('DailyIntrospectionHistoryPresenter attach and detach view test', () {
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      expect(() async => presenter.attach(view), returnsNormally);
      expect(() async => presenter.detach(), returnsNormally);
    });

    test('DailyIntrospectionHistoryPresenter fetchReports failed test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      when(repo.getAllDailyReports()).thenThrow(RepositoryException('Not working'));

      await presenter.fetchReports(fetchDaily: true);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllDailyReports()).called(1);
      verify(view.notifyFetchFailed(any)).called(1);
      verifyNever(view.notifyNoReportsFound());
      verifyNever(view.notifyReportsFetched(any, true));
    });

    test('DailyIntrospectionHistoryPresenter fetchReports weekly failed test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      when(repo.getAllWeeklyReports()).thenThrow(RepositoryException('Not working'));

      await presenter.fetchReports(fetchDaily: false);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllWeeklyReports()).called(1);
      verify(view.notifyFetchFailed(any)).called(1);
      verifyNever(view.notifyNoReportsFound());
      verifyNever(view.notifyReportsFetched(any, true));
    });

    test('DailyIntrospectionHistoryPresenter fetchReports empty list test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      when(repo.getAllDailyReports()).thenAnswer((realInvocation) async => []);

      await presenter.fetchReports(fetchDaily: true);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllDailyReports()).called(1);
      verify(view.notifyNoReportsFound()).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyReportsFetched(any, true));
    });

    test('DailyIntrospectionHistoryPresenter fetchReports weekly empty list test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      when(repo.getAllWeeklyReports()).thenAnswer((realInvocation) async => []);

      await presenter.fetchReports(fetchDaily: false);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllWeeklyReports()).called(1);
      verify(view.notifyNoReportsFound()).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyReportsFetched(any, true));
    });

    test('DailyIntrospectionHistoryPresenter fetchReports success test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      final introspection1 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);
      final introspection2 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);
      final introspection3 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);

      introspection1.date = '01-01-2023';
      introspection2.date = '01-02-2023';
      introspection3.date = '01-03-2023';

      when(repo.getAllDailyReports()).thenAnswer((realInvocation) async => [
        introspection1, introspection2, introspection3
      ],);

      await presenter.fetchReports(fetchDaily: true);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllDailyReports()).called(1);
      verify(view.notifyReportsFetched(any, false)).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyNoReportsFound());
    });

    test('DailyIntrospectionHistoryPresenter fetchReports weekly success test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);

      final introspection1 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);
      final introspection2 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);
      final introspection3 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);

      introspection1.date = '01-01-2023';
      introspection2.date = '01-02-2023';
      introspection3.date = '01-03-2023';

      when(repo.getAllWeeklyReports()).thenAnswer((realInvocation) async => [
        introspection1, introspection2, introspection3
      ],);

      await presenter.fetchReports(fetchDaily: false);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getAllWeeklyReports()).called(1);
      verify(view.notifyReportsFetched(any, false)).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyNoReportsFound());
    });

    test('DailyIntrospectionHistoryPresenter fetchReports per page success test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);


      final introspection1 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);
      final introspection2 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);
      final introspection3 = HappinessReportModel.newDailyReport(happinessLevel: 0, sadnessLevel: 0, angerLevel: 0, fearLevel: 0, careForSelf: '', careForOthers: '', insight: '', employeeId: 0);

      introspection1.date = '01-01-2023';
      introspection2.date = '01-02-2023';
      introspection3.date = '01-03-2023';

      when(repo.getDailyReports(4, 0)).thenAnswer((realInvocation) async => [
        introspection1, introspection2, introspection3
      ],);

      await presenter.fetchReports(fetchDaily: true, pageLimit: 3, currentPageIndex: 0);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getDailyReports(4, 0)).called(1);
      verify(view.notifyReportsFetched(any, any)).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyNoReportsFound());
    });

    test('DailyIntrospectionHistoryPresenter fetchReports per page weekly success test', () async {
      final repo = MockHappinessReportRepository();
      final presenter = DailyIntrospectionHistoryPresenter();
      final view = MockDailyIntrospectionHistoryPageView();

      presenter.attachRepositories(repo);
      presenter.attach(view);


      final introspection1 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);
      final introspection2 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);
      final introspection3 = HappinessReportModel.newWeeklyReport(happinessLevel: 0, insight: '', employeeId: 0);

      introspection1.date = '01-01-2023';
      introspection2.date = '01-02-2023';
      introspection3.date = '01-03-2023';

      when(repo.getWeeklyReports(4, 0)).thenAnswer((realInvocation) async => [
        introspection1, introspection2, introspection3
      ],);

      await presenter.fetchReports(fetchDaily: false, pageLimit: 3, currentPageIndex: 0);

      verify(view.setInProgress(true)).called(1);
      verify(view.setInProgress(false)).called(1);
      verify(repo.getWeeklyReports(4, 0)).called(1);
      verify(view.notifyReportsFetched(any, any)).called(1);
      verifyNever(view.notifyFetchFailed(any));
      verifyNever(view.notifyNoReportsFound());
    });
  });
}

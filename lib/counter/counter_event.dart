part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}


// @freezed
// class CounterEventdummy with _$CounterEventdummy {
//   const factory CounterEventdummy.increment() = counterEventdummy;
//   const factory CounterEventdummy.decrement() = counterEventdummy;
// }

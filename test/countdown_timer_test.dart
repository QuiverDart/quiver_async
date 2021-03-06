// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library quiver.async.countdown_timer_test;

import 'package:quiver_async/async.dart';
import 'package:quiver_async/testing/async.dart';
import 'package:quiver_time/testing/time.dart';
import 'package:quiver_time/time_unit.dart';
import 'package:test/test.dart';

main() {
  group('CountdownTimer', () {
    test('should countdown', () {
      new FakeAsync().run((FakeAsync async) {
        var clock = async.getClock(new DateTime.fromMillisecondsSinceEpoch(0));
        var stopwatch = new FakeStopwatch(
            () => 1000 * clock.now().millisecondsSinceEpoch, 1000000);

        var timings = new CountdownTimer(const Duration(milliseconds: 500),
                const Duration(milliseconds: 100),
                stopwatch: stopwatch)
            .map((c) => c.remaining.inMilliseconds);

        List<int> result;
        timings.toList().then((list) {
          result = list;
        });

        async.elapse(aMillisecond * 500);
        expect(result, [400, 300, 200, 100, 0]);
      });
    });
  });
}

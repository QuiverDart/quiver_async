// Copyright 2015 Google Inc. All Rights Reserved.
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

import 'countdown_timer_test.dart' as countdown_timer_test;
import 'create_timer_test.dart' as create_timer_test;
import 'future_group_test.dart' as future_group_test;
import 'future_stream_test.dart' as future_stream_test;
import 'iteration_test.dart' as iteration_test;
import 'metronome_test.dart' as metronome_test;
import 'stream_router_test.dart' as stream_router_test;

main() {
  countdown_timer_test.main();
  create_timer_test.main();
  future_group_test.main();
  future_stream_test.main();
  iteration_test.main();
  metronome_test.main();
  stream_router_test.main();
}

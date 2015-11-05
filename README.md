Quiver Async
============

Utilities for working with Futures, Streams and async computations.

[![Build Status](https://travis-ci.org/QuiverDart/quiver_async.svg?branch=master)](https://travis-ci.org/QuiverDart/quiver_async)
[![Coverage Status](https://img.shields.io/coveralls/QuiverDart/quiver_async.svg)](https://coveralls.io/r/QuiverDart/quiver_async)

## Documentation

[API Docs](http://www.dartdocs.org/documentation/quiver_async/latest) are available.

## Main Libraries

`FutureGroup` is collection of Futures that signals when all its child futures
have completed. Allows adding new Futures as long as it hasn't completed yet.
Useful when async tasks can spwn new async tasks and you need to wait for all of
them to complete.

`FutureStream` turns a `Future<Stream>` into a `Stream` which emits the same
events as the stream returned from the future.

`StreamRouter` splits a Stream into mulltiple streams based on a set of
predicates.

`CountdownTimer` is a simple countdown timer that fires events in regular
increments.

`doWhileAsync`, `reduceAsync` and `forEachAsync` perform async computations on
the elements of on Iterables, waiting for the computation to complete before
processing the next element.

`CreateTimer` and `CreateTimerPeriodic` are typedefs that are useful for
passing Timer factories to classes and functions, increasing the testability of
code that depends on Timer.

`Metronome` is a self-correcting alternative to `Timer.periodic`. It provides
a simple, tracking periodic stream of `DateTime` events with optional anchor
time.

## Testing Libraries

`FakeAsync` enables testing of units which depend upon timers and microtasks.
It supports fake advancements of time and the microtask queue, which cause fake
timers and microtasks to be processed. A `Clock` is provided from which to read
the current fake time.  Faking synchronous or blocking time advancement is also
supported.

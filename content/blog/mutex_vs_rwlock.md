+++
title = ""
date = 2022-01-01

[taxonomies]
categories = ["Mutex vs RWLock"]
tags = ["rust", "mutex", "rwlock", "locking", "c", "c++"]

[extra]
lang = "en"
toc = true
+++

The difference between `Mutex` and a `RwLock` is that `RwLock<T>` requires more bounds for `T` to
be thread safe; `Mutex` requires `T: Send` to be `Sync` while on the other hand `RwLock` requires
`T: Send + Sync` to be `Sync`. 

To begin with, `Mutex` is a method of locking, to control access to shared resources. At the same time, only one thread
can access data that is protected inside the mutex. If another thread wants to lock a resource and the mutex
is in locked state, the thread hangs until the locked thread releases the mutex; threads using mutex lack read concurrency.

Next, `RwLock` is more complex then a `Mutex` hence, the performence is poor then a mutex. When there are more read 
operations and fewer write operations, read-write locks are efficient and can be used to improve thread read concurrency.

After summing up all of the facts, use `Mutex` when there are more write operations and a `RwLock` when there are more
read operations.

## Resources

* [Mutex](https://doc.rust-lang.org/std/sync/struct.Mutex.html)
* [RwLock](https://doc.rust-lang.org/std/sync/struct.RwLock.html)

# Fastladder ![CI](https://github.com/hoshinotsuyoshi/fastladder/workflows/CI/badge.svg)

Fastladder (http://fastladder.com/) is the best solution for feed-hungry people who want to consume more RSS/Atom feeds, and this is its open-source version.
The open-source Fastladder, so called OpenFL, is an RSS reader to be installed on your PC or server with a capability to handle RSS feeds available within your Intranet.

## Run

Run fastladder web process

```
$ bundle exec rails server
```

Run fastladder crawler process

```
$ bundle exec ruby script/crawler
```

You can run web and crawler processes by [foreman](https://github.com/ddollar/foreman).

```
$ foreman start         # run web and crawler processes
$ foreman start web     # run web process
$ foreman start crawler # run crawler process
```

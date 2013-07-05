=====
Notes
=====

Abstract
========

Some notes on chapters.

Chapter 6
=========

Module reloading::

    $ iex times.exs
    iex(1)> Times.double 4
    8

Change code, and reload (still in the same REPL)::

    iex(2)> r Times
    /Users/seletz/develop/elixir/elixir-getting-started/programming-elixir/times.ex:1: redefining module Times
    {Times,[Times]}

Now, `r` remembers all reloaded modules, and calling
`r` w/o arguments reloads them all::

    iex(3)> r
    /Users/seletz/develop/elixir/elixir-getting-started/programming-elixir/times.ex:1: redefining module Times
    [Times]

.. vim: set ft=rst tw=75 nocin nosi ai sw=4 ts=4 expandtab:

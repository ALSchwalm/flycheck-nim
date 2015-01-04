flycheck-nim - Flycheck for Nim
===============================

[![License GPL 3][badge-license]][license]

Flycheck-nim is a syntax checker definition for flycheck which supports
the [Nim][] programming language using the nim compiler as the backend.

Installation
------------

Obtain [Flycheck][] from [MELPA][] or your favorite source. Then, insure that
`flycheck-nim.el` is in your load-path and add

    (require 'flycheck-nim)

to your `init.el`. Note that the mode being used for nim files must be either
`nim-mode` or `nimrod-mode`.

Options
-------

Flycheck-nim supports several options that allow for more user configurable
checking. These include:

- `flycheck-nim-experimental`: Enables the `--experimental` flag when non-nil
- `flycheck-nim-hints`: Enable or disable compiler hints
- `flycheck-nim-warnings`: Enable or disable compiler warnings
- `flycheck-nim-specific-hints`: Enable or disable specific hints
- `flycheck-nim-specific-warnings`: Enable or disable specific warnings
- `flycheck-nim-args`: Any other compiler option the user chooses

[badge-license]: https://img.shields.io/badge/license-GPL_3-green.svg?dummy
[license]: https://github.com/ALSchwalm/flycheck-nim/blob/master/LICENSE
[Flycheck]: https://github.com/flycheck/flycheck
[Nim]: http://nim-lang.org/
[MELPA]: http://melpa.milkbox.net

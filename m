X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/12/3
Message-ID: <20160712091158.4wlwrde7wbcj6swo@jwilk.net>
Date: Tue, 12 Jul 2016 11:14:53 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Pylint checks not as static as one would think
Content-Type: text/plain; charset=utf-8

* Jakub Wilk <jwilk@...lk.net>, 2014-09-29, 14:32:
>$ cat moo.py
>from _moo import *
>
>$ cat moo.c
>#include <stdio.h>
>#include <signal.h>
>void __attribute__((constructor)) moo() {
>	printf("moo!\n");
>	kill(0, SIGSEGV);
>}
>
>$ gcc -Wall -shared -fPIC moo.c -o _moo.so
>
>$ pylint moo.py
>No config file found, using default configuration
>moo!
>Segmentation fault

This was fixed in Pylint 1.4.0:

|   * Added new options for controlling the loading of C extensions.
|     By default, only C extensions from the stdlib will be loaded
|     into the active Python interpreter for inspection, because they
|     can run arbitrary code on import. The option
|     `--extension-pkg-whitelist` can be used to specify modules
|     or packages that are safe to load.

Beware that by default Pylint reads configuration file from cwd, and 
this configuration file can whitelist malicious extensions. You probably 
want to use --rcfile=/dev/null when cwd is untrusted.

And here's another code execution bug:
https://github.com/PyCQA/pylint/issues/959

-- 
Jakub Wilk

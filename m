X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/10/08/2
Message-ID: <CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>
Date: Sat, 8 Oct 2016 10:15:55 -0300
From: Gustavo Grieco <gustavo.grieco@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: invalid memory accesses parsing object files in libgit2
Content-Type: text/plain; charset=utf-8

Hi,

We recently reported two invalid memory accesses in the last revision
of libgit2:

* Read out-of-bounds in git_oid_nfmt:
https://github.com/libgit2/libgit2/issues/3936

* DoS using a null pointer derreference in git_commit_message:
https://github.com/libgit2/libgit2/issues/3937

The developers are preparing a patch to harden object parsing in libgit2 here:

https://github.com/libgit2/libgit2/pull/3956

Please assign one or more CVE if suitable.

Regards,
Gustavo.

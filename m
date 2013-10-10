X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/10/10/21
Message-ID: <CAEWn2o97wzPEeSmPLcCMnJzWHvgLCVE0yJ8Wf-hsTTRVXrRABw@mail.gmail.com>
Date: Thu, 10 Oct 2013 21:28:29 +0200
From: Naufragium Est <naufragium.est@...il.com>
To: oss-security@...ts.openwall.com
Subject: libtar: missing validation of file names
Content-Type: text/plain; charset=utf-8

is this also CVE-worthy?

https://lists.feep.net:8080/pipermail/libtar/2013-October/000359.html

> The functions tar_extract_glob and tar_extract_all accept a path prefix
> on where to extract files to. However, libtar does not validate the file
> names stored inside a tar file, possibly leading to a file extraction
> outside the prefix path. For example, consider a file name
> "../../etc/passwd". If extract_all is called with prefix "/home/USER/",
> libtar would try to overwrite "/etc/passwd".


not fixed yet:

https://lists.feep.net:8080/pipermail/libtar/2013-October/000362.html

> Once I figure out the right way of handling this, there will probably be
> another libtar release.

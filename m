X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/24/17
Message-ID: <CALx_OUCRut18sUVLMjQJpBCdUWs8vasAzdsBnhccsk7TFhTE=w@mail.gmail.com>
Date: Wed, 24 Sep 2014 09:23:10 -0700
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security@...ts.openwall.com
Cc: chet.ramey@...e.edu
Subject: Re: CVE-2014-6271: remote code execution through bash
Content-Type: text/plain; charset=utf-8

Note that on Linux systems where /bin/sh is symlinked to /bin/bash,
any popen() / system() calls from within languages such as PHP would
be of concern due to the ability to control HTTP_* in the env.

/mz

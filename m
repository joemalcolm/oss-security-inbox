X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/16/4
Message-ID: <c67f0613-d673-96a3-ba51-01610913d706@mozilla.com>
Date: Fri, 16 Mar 2018 10:34:46 -0700
From: Daniel Veditz <dveditz@...illa.com>
To: oss-security@...ts.openwall.com
Subject: libvorbis/libtremor OOB write
Content-Type: text/plain; charset=utf-8

libvorbis and libtremor can write out of bounds when processing
malformed Vorbis audio data.

libvorbis 1.3.6 fixes CVE-2018-5146
https://github.com/xiph/vorbis/releases/tag/v1.3.6

libtremor doesn't have numbered releases but CVE-2018-5147 is fixed in
the git repo at https://git.xiph.org/?p=tremor.git

-Dan Veditz

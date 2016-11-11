X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/11/14
Message-ID: <20161111205756.GC26873@tunkki>
Date: Fri, 11 Nov 2016 22:57:56 +0200
From: Henri Salo <henri@...v.fi>
To: oss-security@...ts.openwall.com
Subject: CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips
Content-Type: text/plain; charset=utf-8

Please assign CVE identifier for LibTIFF tiffcrop heap buffer overflow via
writeBufferToSeparateStrips, thanks.

Reported in: http://bugzilla.maptools.org/show_bug.cgi?id=2592

Fixed per:

2016-11-11 Even Rouault <even.rouault at spatialys.com>

        * tools/tiffcrop.c: fix multiple uint32 overflows in
        writeBufferToSeparateStrips(), writeBufferToContigTiles() and
        writeBufferToSeparateTiles() that could cause heap buffer overflows.
        Reported by Henri Salo from Nixu Corporation.
        Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2592


/cvs/maptools/cvsroot/libtiff/ChangeLog,v  <--  ChangeLog
new revision: 1.1152; previous revision: 1.1151
/cvs/maptools/cvsroot/libtiff/tools/tiffcrop.c,v  <--  tools/tiffcrop.c
new revision: 1.43; previous revision: 1.42

-- 
Henri Salo

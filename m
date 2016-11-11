X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["812" "Friday" "11" "November" "2016" "22:57:56" "+0200" "Henri Salo" "henri@nerv.fi" "<20161111205756.GC26873@tunkki>" "23" "[oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" nil nil nil "11" "2016111120:57:56" "[oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" (number mark "U       henri@nerv.f Nov 11   23/812   " thread-indent "\"[oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15862 invoked by uid 550); 11 Nov 2016 20:58:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15835 invoked from network); 11 Nov 2016 20:58:12 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Fri, 11 Nov 2016 22:57:56 +0200
From: Henri Salo <henri@nerv.fi>
To: oss-security@lists.openwall.com
Message-ID: <20161111205756.GC26873@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via
 writeBufferToSeparateStrips

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

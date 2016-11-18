X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["898" "Friday" "18" "November" "2016" "17:05:24" "+0200" "Henri Salo" "henri@nerv.fi" "<20161118150524.GA16744@tunkki>" "25" "[oss-security] CVE-2016-9297 LibTIFF regression" nil nil nil "11" "2016111815:05:24" "[oss-security] CVE-2016-9297 LibTIFF regression" (number mark "U       henri@nerv.f Nov 18   25/898   " thread-indent "\"[oss-security] CVE-2016-9297 LibTIFF regression\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32184 invoked by uid 550); 18 Nov 2016 15:05:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32158 invoked from network); 18 Nov 2016 15:05:39 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Fri, 18 Nov 2016 17:05:24 +0200
From: Henri Salo <henri@nerv.fi>
To: oss-security@lists.openwall.com
Message-ID: <20161118150524.GA16744@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-9297 LibTIFF regression

CVE-2016-9297 vulnerability reported in http://bugzilla.maptools.org/show_bug.cgi?id=2590 had a
regression, which is fixed in http://bugzilla.maptools.org/show_bug.cgi?id=2593
by Even Rouault.

Fixed per

2016-11-16 Even Rouault <even.rouault at spatialys.com>

        * libtiff/tif_dirread.c: in TIFFFetchNormalTag(), do not dereference
        NULL pointer when values of tags with TIFF_SETGET_C16_ASCII /
TIFF_SETGET_C32_ASCII
        access are 0-byte arrays.
        Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2593 (regression
introduced
        by previous fix done on 2016-11-11 for CVE-2016-9297).
        Reported by Henri Salo.

/cvs/maptools/cvsroot/libtiff/ChangeLog,v  <--  ChangeLog
new revision: 1.1163; previous revision: 1.1162
/cvs/maptools/cvsroot/libtiff/libtiff/tif_dirread.c,v  <-- 
libtiff/tif_dirread.c
new revision: 1.204; previous revision: 1.203

-- 
Henri Salo

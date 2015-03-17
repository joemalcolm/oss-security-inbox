X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3377" "Tuesday" "17" "March" "2015" "08:11:58" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<5508443E.401@oracle.com>" "91" "[oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" nil nil nil "3" "2015031715:11:58" "[oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" (number mark "        alan.coopers Mar 17   91/3377  " thread-indent "\"[oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont\"\n") "<20150317150833.GA2934@also.us.oracle.com>" ("<20150317150833.GA2934@also.us.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20387 invoked by uid 550); 17 Mar 2015 15:12:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20345 invoked from network); 17 Mar 2015 15:12:26 -0000
Message-ID: <5508443E.401@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150125 Thunderbird/17.0.11
MIME-Version: 1.0
References: <20150317150833.GA2934@also.us.oracle.com>
In-Reply-To: <20150317150833.GA2934@also.us.oracle.com>
X-Forwarded-Message-Id: <20150317150833.GA2934@also.us.oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: acsinet22.oracle.com [141.146.126.238]
CC: "X.Org Security Team" <xorg-security@lists.x.org>
Date: Tue, 17 Mar 2015 08:11:58 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues
 in libXfont
To: oss-security@lists.openwall.com




-------- Original Message --------
Subject: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in 
libXfont
Date: Tue, 17 Mar 2015 08:08:33 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
CC: William Robinet <william.robinet@conostix.com>, xorg@lists.x.org, 
xorg-devel@lists.x.org, Ilja Van Sprundel <ivansprundel@ioactive.com>

X.Org Security Advisory:  March 17, 2015
More BDF file parsing issues in libXfont
========================================

Description:
============

Ilja van Sprundel, a security researcher with IOActive, has discovered an
issue in the parsing of BDF font files by libXfont.  Additional testing by
Alan Coopersmith and William Robinet with the American Fuzzy Lop (afl) tool
uncovered two more issues in the parsing of BDF font files.

As libXfont is used by the X server to read font files, and an unprivileged
user with access to the X server can tell the X server to read a given font
file from a path of their choosing, these vulnerabilities have the potential
to allow unprivileged users to run code with the privileges of the X server
(often root access).

The vulnerabilities are:

- CVE-2015-1802: bdfReadProperties: property count needs range check

     The bdf parser reads a count for the number of properties defined in
     a font from the font file, and allocates arrays with entries for each
     property based on that count.  It never checked to see if that count
     was negative, or large enough to overflow when multiplied by the size
     of the structures being allocated, and could thus allocate the wrong
     buffer size, leading to out of bounds writes.

- CVE-2015-1803: bdfReadCharacters: bailout if a char's bitmap cannot be read

     If the bdf parser failed to parse the data for the bitmap for any
     character, it would proceed with an invalid pointer to the bitmap
     data and later crash when trying to read the bitmap from that pointer.

- CVE-2015-1804: bdfReadCharacters: ensure metrics fit into xCharInfo struct

     The bdf parser read metrics values as 32-bit integers, but stored
     them into 16-bit integers.  Overflows could occur in various operations
     leading to out-of-bounds memory access.

Affected Versions
=================

X.Org believes all prior versions of this library contain these flaws,
dating back to its introduction in X11R5.


Fixes
=====

Fixes are available in the patches for these libXfont git commits:
       2deda9906480f9c8ae07b8c2a5510cc7e4c59a8e
       78c2e3d70d29698244f70164428bd2868c0ab34c
       2351c83a77a478b49cba6beb2ad386835e264744

Which are now available from:
       git://anongit.freedesktop.org/git/xorg/lib/libXfont
       http://cgit.freedesktop.org/xorg/lib/libXfont/

Fixes will also be included in the libXfont 1.5.1 & 1.4.9 module releases
from X.Org.

Thanks
======

X.Org thanks Ilja van Sprundel of IOActive, Alan Coopersmith of Oracle, and
William Robinet of Conostix for reporting these issues to our security team
and helping evaluate and test the fixes; and thanks Michal Zalewski and the
American Fuzzy Lop community for providing their fuzz testing tool as an open
source project we can all benefit from at http://lcamtuf.coredump.cx/afl/ .

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org





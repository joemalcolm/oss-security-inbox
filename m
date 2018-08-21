X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2578" "Tuesday" "21" "August" "2018" "17:50:22" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" "<20180821155022.GG25380@timmy.laas.fr>" "78" "[oss-security] X.Org security advisory: August 21, 2018" nil nil nil "8" "2018082115:50:22" "[oss-security] X.Org security advisory: August 21, 2018" (number mark "U       matthieu@her Aug 21   78/2578  " thread-indent "\"[oss-security] X.Org security advisory: August 21, 2018\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19736 invoked by uid 550); 21 Aug 2018 16:04:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32174 invoked from network); 21 Aug 2018 15:50:40 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=3c
	7uFiinmHESV2+IWjeu4r4FeHY=; b=pyazTgu3q23YUbGJT52v/+vFjDl6J5Mx6B
	5/EIdy2YUkMv59R9fcsQO//MSwObkcLuE3PwkGcN1J2txieTQas/KhMQIE8UABJX
	/xjjNOclFFzyh1z/sv8lcGoPUI11LJVSG4YL5FWzCXlfzMAfujUysrnlS70sj1dX
	Gm8AhoLHs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	GBgz4kQLIbLzJ8oUqj+d4Gm36+LNgfZ017u83B00NZR8qmyYDu3BNSB78EkzssDC
	XRDKrhjgxQ4LziC1nR8SCPj9iYVHxEoLyIbSlXdpd6y5DRdoAl6QJRsxwxaVBuwt
	PNcY8i8byOQeRSTEKvfpq+VKh/NtiGfHQOtIqk7gUnM=
Date: Tue, 21 Aug 2018 17:50:22 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <20180821155022.GG25380@timmy.laas.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] X.Org security advisory: August 21, 2018


X.Org security advisory: August 21, 2018

Multiple issues in libX11
=========================

The functions XGetFontPath, XListExtensions and XListFonts from libX11
are vulnerable to three different issues:

Off-by-one writes (CVE-2018-14599).
-----------------------------------

The functions XGetFontPath, XListExtensions, and XListFonts are
vulnerable to an off-by-one override on malicious server responses.

The server replies consist of chunks consisting of a length byte
followed by actual string, which is not NUL-terminated.

While parsing the response, the length byte is overridden with '\0',
thus the memory area can be used as storage of C strings later on. To
be able to NUL-terminate the last string, the buffer is reserved with
an additional byte of space.

For a boundary check, the variable chend (end of ch) was introduced,
pointing at the end of the buffer which ch initially points to.
Unfortunately there is a difference in handling "the end of ch".

While chend points at the first byte that must not be written to,
the for-loop uses chend as the last byte that can be written to.

Therefore, an off-by-one can occur.


Out of boundary write (CVE-2018-14600).
---------------------------------------

The length value is interpreted as signed char on many systems
(depending on default signedness of char), which can lead to an out of
boundary write up to 128 bytes in front of the allocated storage, but
limited to NUL byte(s).

Casting the length value to unsigned char fixes the problem and allows
string values with up to 255 characters.

Crash on invalid reply (CVE-2018-14598).
----------------------------------------

If the server sends a reply in which even the first string would
overflow the transmitted bytes, list[0] (or flist[0]) will be set to
NULL and a count of 0 is returned.

If the resulting list is freed with XFreeExtensionList or
XFreeFontPath later on, the first Xfree call:

    Xfree (list[0]-1)
 turns into
    Xfree (NULL-1)

which will most likely trigger a segmentation fault.

Patches
=======

Patches for these issues have been commited to the libX11 git repository.
libX11 1.6.6 will be released shortly and will include those patches.

https://gitlab.freedesktop.org/xorg/lib/libx11

b469da1430cdcee06e31c6251b83aede072a1ff0  CVE-2018-14599
dbf72805fd9d7b1846fe9a11b46f3994bfc27fea  CVE-2018-14600
e83722768fd5c467ef61fa159e8c6278770b45c2  CVE-2018-14598

Thanks
======

X.Org thanks Tobias Stoeckmann for reporting these issues to our
security team and assisting them in understanding them and evaluating
our fixes.

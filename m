X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1355" "Tuesday" "1" "December" "2020" "16:16:02" "+0100" "Matthieu Herrb" "matthieu@herrb.eu" "<20201201151602.GC10502@herrb.net>" "53" "[oss-security] X.Org server security advisory: December 1, 2020" nil nil nil "12" "2020120115:16:02" "[oss-security] X.Org server security advisory: December 1, 2020" (number mark "U       matthieu@her Dec  1   53/1355  " thread-indent "\"[oss-security] X.Org server security advisory: December 1, 2020\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X.Org server security advisory: December 1, 2020" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22065 invoked by uid 550); 1 Dec 2020 15:18:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20398 invoked from network); 1 Dec 2020 15:16:16 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=8O
	HIBIPofsgcTUNy1MICfZMmvbg=; b=SAtXRRLoP3GxtEvyWml9POSZSwtoL4Ty3z
	ngFYoWYb/chpmKJX748XCTBcmQPzI21poNkcWfdyHbGUJ8vzpD0x/e2ErFYzKhkC
	UpSDdtaKYhaKQ6lIYgG+U6kD0zj5TffVOzHNzZUgPSuHgIPSw8gaChJ/FzY3JY0h
	3pRwwaPdI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	ieHq3rI1S5vV2XtB2iKCLVinEsuHMuvD8rcRoQBw8exafIT5oDvLiodKf6JL9YMp
	Bd5LJ1pTfZqlxF8bCUXs4FrFfoe2wowz1YC+P6wRLZ5HvsPa4Lud4e+BBM666xgX
	+UC4SS28YEJKM45jv/W3NMHKM2+Gallih8rbpyCWoE8=
Date: Tue, 1 Dec 2020 16:16:02 +0100
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <20201201151602.GC10502@herrb.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [oss-security] X.Org server security advisory: December 1, 2020



Multiple input validation failures in X server XKB extension
============================================================

These issues can lead to privileges elevations for authorized clients
on systems where the X server is running privileged.

* CVE-2020-14360 / ZDI CAN 11572 XkbSetMap Out-Of-Bounds Access

Insufficient checks on the lengths of the XkbSetMap request can lead to
out of bounds memory accesses in the X server.

* CVE-2020-25712 / ZDI-CAN-11839 XkbSetDeviceInfo Heap-based Buffer Overflow

Insufficient checks on input of the XkbSetDeviceInfo request can lead
to a buffer overflow on the head in the X server.

Patches
-------

Patches for these issues have been committed to the xorg server git
repository. xorg-server 1.20.10 will be released shortly and will
include these patches.


https://gitlab.freedesktop.org/xorg/xserver.git

commit 446ff2d3177087b8173fa779fa5b77a2a128988b

    Check SetMap request length carefully.
    
    Avoid out of bounds memory accesses on too short request.

    ZDI-CAN 11572 /  CVE-2020-14360


commit 87c64fc5b0db9f62f4e361444f4b60501ebf67b9

    Fix XkbSetDeviceInfo() and SetDeviceIndicators() heap overflows

    ZDI-CAN 11389 / CVE-2020-25712


Thanks
======

These vulnerabilities have been discovered by Jan-Niklas Sohn working
with Trend Micro Zero Day Initiative.


-- 
Matthieu Herrb

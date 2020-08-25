X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1765" "Tuesday" "25" "August" "2020" "17:37:14" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" "<20200825153714.GJ30064@timmy>" "69" "[oss-security] X.Org server security advisory: August 25, 2020" nil nil nil "8" "2020082515:37:14" "[oss-security] X.Org server security advisory: August 25, 2020" (number mark "U       matthieu@her Aug 25   69/1765  " thread-indent "\"[oss-security] X.Org server security advisory: August 25, 2020\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X.Org server security advisory: August 25, 2020" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25954 invoked by uid 550); 25 Aug 2020 15:53:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18290 invoked from network); 25 Aug 2020 15:37:27 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=3B
	BtUXuGe26fuSQieTfZv3pe2KQ=; b=Wp6RBxih/eOJ99VJjP81sJBjJpjKFz/SWt
	xKRRakX3vFnYitf0lnEGDGySrLI8KVLLGBntaHkugQqYuG9RfKMEaLycmTStlgz0
	NKOXh7UGc6mD9BrrKDSGm4uhLcIGHPnMs+YTvczZV532yhuyLXQ0yhnwIQlKklcJ
	BehdokoNA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	gzPmlVPK8Zi9sUciVDYbXOupn6q2RsqjLI/0OUo/v3VmI3mLQjnO71s17MEti2hm
	6pQHNGv9bV/z1bJYE2ywAxdb4D+STd8dpypP6yusW0WI1OlKZuyiQ7BZ1x4juX9Y
	V2drWvY9Pf+9MXDEaEE7ORMYQ4Uh2CpIYtZx3bXgNrw=
Date: Tue, 25 Aug 2020 17:37:14 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <20200825153714.GJ30064@timmy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [oss-security] X.Org server security advisory: August 25, 2020


Multiple input validation failures in X server extensions
=========================================================

All theses issuses  can lead to local privileges elevation
on systems where the X server is running privileged.

* CVE-2020-14345 / ZDI CAN 11428 XkbSetNames Out-Of-Bounds Access

The handler for the XkbSetNames request does not validate the request
length before accessing its contents.

* CVE-2020-14346 / ZDI CAN 11429 XIChangeHierarchy Integer Underflow

An integer underflow exists in the handler for the XIChangeHierarchy
request.

* CVE-2020-14361 / ZDI CAN 11573 XkbSelectEvents Integer Underflow 

An integer underflow exist in the handler for the XkbSelectEvents
request.

* CVE-2020-1436 / ZDI CAN 11574 XRecordRegisterClients Integer Underflow 

An integer underflow exist in the handler for the CreateRegister
request of the X record extension.

Patches
-------

Patches for this issues have been commited to the xorg server git
repository. xorg-server 1.20.9 will be released shortly and will
include these patches.

https://gitlab.freedesktop.org/xorg/xserver.git

commit 11f22a3bf694d7061d552c99898d843bcdaf0cf1

    Correct bounds checking in XkbSetNames()

    CVE-2020-14345 / ZDI 11428

commit 1e3392b07923987c6c9d09cf75b24f397b59bd5e

    Fix XIChangeHierarchy() integer underflow

    CVE-2020-14346 / ZDI-CAN-11429

commit 90304b3c2018a6b8f4a79de86364d2af15cb9ad8

    Fix XkbSelectEvents() integer underflow

    CVE-2020-14361 ZDI-CAN 11573

commit 24acad216aa0fc2ac451c67b2b86db057a032050

    Fix XRecordRegisterClients() Integer underflow

    CVE-2020-14362 ZDI-CAN-11574

Thanks
======

These vulnerabilities have beend discovered by Jan-Niklas Sohn working
with Trend Micro Zero Day Initiative.


-- 
Matthieu Herrb

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1035" "Tuesday" "23" "February" "2016" "13:41:06" "+0000" "Cornea, Alexandru" "alexandru.cornea@intel.com" "<66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>" "33" "[oss-security] CVE Request: Linux kernel USB hub invalid memory access in hub_activate()" "^CC:" nil nil "2" "2016022313:41:06" "[oss-security] CVE Request: Linux kernel USB hub invalid memory access in hub_activate()" (number mark "        alexandru.co Feb 23   33/1035  " thread-indent "\"[oss-security] CVE Request: Linux kernel USB hub invalid memory access in hub_activate()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13320 invoked by uid 550); 23 Feb 2016 15:00:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11717 invoked from network); 23 Feb 2016 13:41:20 -0000
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,489,1449561600"; 
   d="scan'208,217";a="909405379"
Thread-Topic: CVE Request: Linux kernel USB hub invalid memory access in
 hub_activate()
Thread-Index: AdFuOo2iv9J0THnmSU26XXaSc4Gdtg==
Message-ID: <66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5B@IRSMSX106.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWE1N2I0MWQtZDA0Ni00YTYwLTlmZDktNzk1OWYwZmNlYzYxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX0lDIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE1LjkuNi42IiwiVHJ1c3RlZExhYmVsSGFzaCI6IjFSek5LWTg0akdwVjhyYVk4QjhzR0dBV3hmZFhRXC9Yb242QUNHeTZQQXl3PSJ9
x-ctpclassification: CTP_IC
x-originating-ip: [163.33.239.180]
Content-Type: multipart/alternative;
	boundary="_000_66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5BIRSMSX106gercor_"
MIME-Version: 1.0
CC: "Maxim, Costel" <costel.maxim@intel.com>, Alan Stern
	<stern@rowland.harvard.edu>
Date: Tue, 23 Feb 2016 13:41:06 +0000
From: "Cornea, Alexandru" <alexandru.cornea@intel.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel USB hub invalid memory access in
 hub_activate()
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--_000_66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5BIRSMSX106gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

    Quickly plugging in and unplugging a USB hub can lead to a null pointer=
 dereference in kernel (local denial of service) or the USB port to which t=
he hub is connected becomes unusable, for kernel versions 2.6.32 < 4.4.
    The issue occurs when the USB hub gets disconnected before or while the=
 routine for USB hub activation is running - hub_activate() function.

Bug reported on the kernel USB mailing list: http://www.spinics.net/lists/l=
inux-usb/msg132311.html

Issue is fixed in kernel 4.4, by commit: https://git.kernel.org/cgit/linux/=
kernel/git/torvalds/linux.git/commit/?id=3De50293ef9775c5

Could a CVE please be assigned to this issue? (it has not been previously r=
equested anywhere else)

Thanks,
   Alex

---
Regards,

Alexandru Cornea
Security QA Engineer
Intel SSG OTC Romania


--_000_66113B714EAB624BABB47E2DDD1ED3BF6DFC5D5BIRSMSX106gercor_--

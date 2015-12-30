X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Wednesday" "30" "December" "2015" "02:28:26" "+0000" "limingxing" "limingxing@360.cn" "<3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>" "50" "[oss-security] CVE request rtmpdump:  the 6 vulnerabilities have been fixed" "^Date:" nil nil "12" "2015123002:28:26" "[oss-security] CVE request rtmpdump: the 6 vulnerabilities have been fixed" (number mark "        limingxing@3 Dec 30   50/1509  " thread-indent "\"[oss-security] CVE request rtmpdump:  the 6 vulnerabilities have been fixed\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15990 invoked by uid 550); 30 Dec 2015 04:46:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30310 invoked from network); 30 Dec 2015 02:28:44 -0000
Thread-Topic: CVE request rtmpdump:  the 6 vulnerabilities have been fixed
Thread-Index: AdFCqHLtoRIYtcfITw6o6Mf07q5h/g==
Message-ID: <3626D6E697A150459C44C0E5D8D8D00E0DBD28AA@EX02.corp.qihoo.net>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.68.0.200]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Date: Wed, 30 Dec 2015 02:28:26 +0000
From: limingxing <limingxing@360.cn>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request rtmpdump:  the 6 vulnerabilities have been fixed
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Hello,
CVE request rtmpdump:  the 6 vulnerabilities have been fixed by Howard Chu =
a few days ago!
These vulnerabilities affect latest version of ubuntu kylin by the smplayer!

Thank you !


The git(git://git.ffmpeg.org/rtmpdump)log is:

commit fa8646daeb19dfd12c181f7d19de708d623704c0
Author: Howard Chu <hyc@highlandsun.com>
Date:   Wed Dec 23 18:58:50 2015 +0000

    Fix issue 6-7/7 from LMX of Qihoo 360 Codesafe Team
=20=20=20=20
    Additional decode input size checks

commit 07c10ae612bf5c2dbea594dcbd4da85c54dba1e4
Author: Howard Chu <hyc@highlandsun.com>
Date:   Wed Dec 23 18:28:13 2015 +0000

    Fix issue 5/7 from LMX of Qihoo 360 Codesafe Team
=20=20=20=20
    Ignore zero-length packets

commit 7c68ad18f4296911114470bb4caaa673d55c8447
Author: Howard Chu <hyc@highlandsun.com>
Date:   Wed Dec 23 18:10:15 2015 +0000

    Fix issue 4/7 from LMX of Qihoo 360 Codesafe Team
=20=20=20=20
    Potential integer overflow in RTMPPacket_Alloc().
=20=20=20=20

commit f3042b5bb7dcb42eda32ad9dd88029b24a2c282b
Author: Howard Chu <hyc@highlandsun.com>
Date:   Wed Dec 23 17:53:34 2015 +0000

    Fix issue 2/7 from LMX of Qihoo 360 Codesafe Team
=20=20=20=20
    Obsolete RTMPPacket_Free() call left over from original C++ to C rewrite

commit 71fe4f2435beaccca046dad3905840615b76b085
Author: Howard Chu <hyc@highlandsun.com>
Date:   Wed Dec 23 17:51:39 2015 +0000

    Fix issue 1/7 from LMX of Qihoo 360 Codesafe Team
=20=20=20=20
    AMFProp_GetObject must make sure the prop is actually an object=

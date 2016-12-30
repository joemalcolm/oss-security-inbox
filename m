X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1406" "Friday" "30" "December" "2016" "16:33:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2f4f7f26fcb04b228aed45fd4052dcc0@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE request: Nagios: Incomplete fix for CVE-2016-8641" nil nil nil "12" "2016123021:33:24" "[oss-security] Re: CVE request: Nagios: Incomplete fix for CVE-2016-8641" (number mark "U       cve-assign@m Dec 30   36/1406  " thread-indent "\"[oss-security] Re: CVE request: Nagios: Incomplete fix for CVE-2016-8641\"\n") "<e5e71351-83ac-5324-7f70-ad40ef5bf9be@orlitzky.com>" ("<e5e71351-83ac-5324-7f70-ad40ef5bf9be@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19971 invoked by uid 550); 30 Dec 2016 21:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19950 invoked from network); 30 Dec 2016 21:33:36 -0000
From: <cve-assign@mitre.org>
To: <michael@orlitzky.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <e5e71351-83ac-5324-7f70-ad40ef5bf9be@orlitzky.com>
Message-ID: <2f4f7f26fcb04b228aed45fd4052dcc0@imshyb02.MITRE.ORG>
Date: Fri, 30 Dec 2016 16:33:24 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Nagios: Incomplete fix for CVE-2016-8641

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> CVE-2016-8641 describes an attack
> wherein that restricted user replaces the aforementioned path with a
> symlink. The root user (via the init script) will -- the next time
> Nagios is started -- give ownership of the symlink's target to Nagios's
> user

> An identical attack not addressed by CVE-2016-8641 works with hard
> links

Use CVE-2016-10089.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYZtIlAAoJEHb/MwWLVhi2uusP/0aReE472/YzkPBswLATf8cU
0/mhc9HGu4CeDy/nORI3TOoh9XC8NSg9Cbs2r7m83/EkK8D2YZpF5swyb4uLhwL7
5wLLodraBig20Ps53GQSHfKA7/LqXiPxCZH+qdTKiZ12nv2iZm9FwP8Rlp34g4e5
7ltvnFAAXvq2P7WgF5F1+l6obSe9+Vq/Twsj6Nr+8mfeolQKEBfOWJlYThWAv572
EcXN6vDUGOzt/epWh5EM7c4CMkA/lzryylbX0Q1f6MAQ1PwavwMzrUi7iB8oBGsa
xUxgXQsQfjT4QGIJ+xHJ6MFZDmNj3QQQKdzw5sU30qopeHanJkX/dNSBmnk/ZGEW
rF7EUVNpald/KnADGGNsQGo+NkXddKt1OUfSAvNRgk7z/Dbe+0mUGM0jTz5myDi5
W6i/SbDcfPywwovORY3+Y7qltucbvawbfWaTjnoUfEPkyNc22YxaHtEnns8/o3uL
QvqSGMy+j0Ih7+VJBiQ8AobfAn4BpxYUUcaVDnK/sx0CrT9Msy8PdxRjA7ZgXR2w
rANNhtkclladIBn6ciihkr1gHQybm5qpLb0LLpdM02VHrePA5UmarFK+NjzsSPaM
sO0u8+Doed/kdKQnHHYGAr5gg+wuN58+X5Iyi/28QtVDbKYAN1SUgNDYpKJLradR
/+fzONrCZAyHkySd0TjW
=L1tp
-----END PGP SIGNATURE-----

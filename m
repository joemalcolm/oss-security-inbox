X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["359" "Monday" "17" "April" "2017" "16:09:08" "-0700" "Bryan Call" "bcall@apache.org" "<E3256204-9440-4DDA-9E00-A65C5A4DA022@apache.org>" "15" "[oss-security] [ANNOUNCE] HPACK Bomb Attack vulnerability in ATS - CVE-2016-5396" "^Date:" nil nil "4" "2017041723:09:08" "[oss-security] [ANNOUNCE] HPACK Bomb Attack vulnerability in ATS - CVE-2016-5396" (number mark "U       bcall@apache Apr 17   15/359   " thread-indent "\"[oss-security] [ANNOUNCE] HPACK Bomb Attack vulnerability in ATS - CVE-2016-5396\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27997 invoked by uid 550); 17 Apr 2017 23:11:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26166 invoked from network); 17 Apr 2017 23:09:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <E3256204-9440-4DDA-9E00-A65C5A4DA022@apache.org>
X-Mailer: Apple Mail (2.3273)
Date: Mon, 17 Apr 2017 16:09:08 -0700
From: Bryan Call <bcall@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] HPACK Bomb Attack vulnerability in ATS - CVE-2016-5396
To: dev <dev@trafficserver.apache.org>,
 users@trafficserver.apache.org,
 announce@trafficserver.apache.org,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com,
 Masaori Koshiba <masaori@apache.org>

There is a vulnerability in ATS with the HPACK Bomb Attack that can lead to=
 a DoS.  Versions 6.0.0 to 6.2.0 are affected.  Please upgrade to ATS 6.2.1=
 or 7.0.0.

Downloads:
	https://trafficserver.apache.org/downloads

Jira Ticket:
	ttps://issues.apache.org/jira/browse/TS-5019

CVE
	https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2016-5396

-Bryan


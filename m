X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["872" "Tuesday" "28" "August" "2018" "15:39:49" "-0700" "Bryan Call" "bcall@apache.org" "<13C54619-BA67-4F58-A340-DECA0E9848DB@apache.org>" "36" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multiple HTTP smuggling and cache poisoning attacks - CVE-2018-8004" nil nil nil "8" "2018082822:39:49" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multiple HTTP smuggling and cache poisoning attacks - CVE-2018-8004" (number mark "U       bcall@apache Aug 28   36/872   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multiple HTTP smuggling and cache poisoning attacks - CVE-2018-8004\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22072 invoked by uid 550); 29 Aug 2018 07:53:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24045 invoked from network); 28 Aug 2018 22:40:10 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <13C54619-BA67-4F58-A340-DECA0E9848DB@apache.org>
Date: Tue, 28 Aug 2018 15:39:49 -0700
To: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multiple HTTP
 smuggling and cache poisoning attacks - CVE-2018-8004

CVE-2018-8004: Apache Traffic Server vulnerability with multiple HTTP smugg=
ling and cache poisoning attacks

Reported By:
R=C3=A9gis Leroy

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.3

Description:
There are multiple HTTP smuggling and cache poisoning issues when clients m=
aking malicious requests interact with ATS.

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.4 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3192
		https://github.com/apache/trafficserver/pull/3201
		https://github.com/apache/trafficserver/pull/3231
		https://github.com/apache/trafficserver/pull/3251
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8004

-Bryan




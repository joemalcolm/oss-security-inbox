X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["657" "Tuesday" "28" "August" "2018" "15:39:48" "-0700" "Bryan Call" "bcall@apache.org" "<6371D290-EB1B-44E6-97D0-DCBF27ACAFA1@apache.org>" "33" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with method ACLs - CVE-2018-1318 " nil nil nil "8" "2018082822:39:48" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with method ACLs - CVE-2018-1318" (number mark "U       bcall@apache Aug 28   33/657   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with method ACLs - CVE-2018-1318 \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19730 invoked by uid 550); 29 Aug 2018 07:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23997 invoked from network); 28 Aug 2018 22:40:09 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <6371D290-EB1B-44E6-97D0-DCBF27ACAFA1@apache.org>
Date: Tue, 28 Aug 2018 15:39:48 -0700
To: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with method ACLs -
 CVE-2018-1318 

CVE-2018-1318: Apache Traffic Server vulnerability with method ACLs

Reported By:
Leif Hedstrom

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.3

Description:
Adding method ACLs in remap.config can cause a segfault when the user makes=
 a carefully crafted request.=20

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.4 or later versions


References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3195
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D2018-1318

-Bryan




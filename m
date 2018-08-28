X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["719" "Tuesday" "28" "August" "2018" "15:39:51" "-0700" "Bryan Call" "bcall@apache.org" "<B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>" "33" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040" nil nil nil "8" "2018082822:39:51" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040" (number mark "U       bcall@apache Aug 28   33/719   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with header variable access in the ESI plugin - CVE-2018-8040\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17442 invoked by uid 550); 29 Aug 2018 07:53:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24094 invoked from network); 28 Aug 2018 22:40:12 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <B78D2067-1658-4D7F-804C-FC6CE9A99680@apache.org>
Date: Tue, 28 Aug 2018 15:39:51 -0700
To: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with header variable
 access in the ESI plugin - CVE-2018-8040

CVE-2018-8040: Apache Traffic Server vulnerability with header variable acc=
ess in the ESI plugin

Reported By:
Louis Dion-Marcil

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.2

Description:
Pages that are rendered using the ESI plugin can have access to the cookie =
header when the plugin is configure not to allow access.

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.3 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3926
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8040

-Bryan




X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Tuesday" "28" "August" "2018" "15:39:43" "-0700" "Bryan Call" "bcall@apache.org" "<8A23CEFE-CFC4-4A8A-B9C0-997DCEA27A8A@apache.org>" "31" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multi-range requests - CVE-2018-8005 " nil nil nil "8" "2018082822:39:43" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multi-range requests - CVE-2018-8005" (number mark "U       bcall@apache Aug 28   31/747   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multi-range requests - CVE-2018-8005 \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21905 invoked by uid 550); 29 Aug 2018 07:53:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23875 invoked from network); 28 Aug 2018 22:40:02 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <8A23CEFE-CFC4-4A8A-B9C0-997DCEA27A8A@apache.org>
Date: Tue, 28 Aug 2018 15:39:43 -0700
To: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with multi-range
 requests - CVE-2018-8005 

CVE-2018-8005: Apache Traffic Server vulnerability with multi-range requests

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.2
ATS 7.0.0 to 7.1.3

Description:
When the there are multiple ranges in a range request ATS will read the ent=
ire object from cache.  This can cause performance problems with large obje=
cts in cache.

Mitigation:
6.x users should upgrade to 6.2.3 or later versions
7.x users should upgrade to 7.1.4 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/3106
		https://github.com/apache/trafficserver/pull/3124
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D2018-8005

-Bryan




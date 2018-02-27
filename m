X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Tuesday" "27" "February" "2018" "10:31:15" "-0800" "Bryan Call" "bcall@apache.org" "<8E450C60-66C7-4821-9147-DC4E032121A4@apache.org>" "31" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with TLS handshake - CVE-2017-7671" nil nil nil "2" "2018022718:31:15" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with TLS handshake - CVE-2017-7671" (number mark "U       bcall@apache Feb 27   31/697   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with TLS handshake - CVE-2017-7671\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17932 invoked by uid 550); 27 Feb 2018 18:38:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12180 invoked from network); 27 Feb 2018 18:31:31 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <8E450C60-66C7-4821-9147-DC4E032121A4@apache.org>
Date: Tue, 27 Feb 2018 10:31:15 -0800
To: dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 announce@trafficserver.apache.org,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with TLS handshake -
 CVE-2017-7671

CVE-2017-7671: Apache Traffic Server vulnerability with TLS handshake

Vendor:
The Apache Software Foundation

Version Affected:
ATS 5.2.0 to 5.3.2
ATS 6.0.0 to 6.2.0
ATS 7.0.0

Description:
There is a DOS attack vulnerability in ATS with the TLS handshake.  This is=
sue can cause the server to coredump.

Mitigation:
5.x users should upgrade to 7.1.2 or later versions
6.x users should upgrade to 6.2.2 or later versions
7.x users should upgrade to 7.1.2 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/1941
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-7671

-Bryan




X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Tuesday" "28" "August" "2018" "15:39:46" "-0700" "Bryan Call" "bcall@apache.org" "<DE6B4C1E-5C1C-49FB-903D-9013F433AAEB@apache.org>" "30" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with an invalid TLS handshake - CVE-2018-8022" nil nil nil "8" "2018082822:39:46" "[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with an invalid TLS handshake - CVE-2018-8022" (number mark "U       bcall@apache Aug 28   30/550   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with an invalid TLS handshake - CVE-2018-8022\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16073 invoked by uid 550); 29 Aug 2018 07:53:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23939 invoked from network); 28 Aug 2018 22:40:05 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <DE6B4C1E-5C1C-49FB-903D-9013F433AAEB@apache.org>
Date: Tue, 28 Aug 2018 15:39:46 -0700
To: announce@trafficserver.apache.org,
 dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server vulnerability with an invalid TLS
 handshake - CVE-2018-8022

CVE-2018-8022: Apache Traffic Server vulnerability with an invalid TLS hand=
shake

Reported By:
Shigeki Otsu

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.2.2

Description:
An carefully crafted invalid TLS handshake can cause ATS to segfault.

Mitigation:
6.x users should upgrade to 6.2.3 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/2147
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D2018-8022

-Bryan




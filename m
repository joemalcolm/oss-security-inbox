X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["689" "Tuesday" "27" "February" "2018" "09:38:23" "-0800" "Bryan Call" "bcall@apache.org" "<0328E5ED-8D75-4C17-99A6-5D65B3AF4E5E@apache.org>" "32" "[oss-security] [ANNOUNCE] Apache Traffic Server host header and line folding - CVE-2017-5660" nil nil nil "2" "2018022717:38:23" "[oss-security] [ANNOUNCE] Apache Traffic Server host header and line folding - CVE-2017-5660" (number mark "U       bcall@apache Feb 27   32/689   " thread-indent "\"[oss-security] [ANNOUNCE] Apache Traffic Server host header and line folding - CVE-2017-5660\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11766 invoked by uid 550); 27 Feb 2018 17:40:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9523 invoked from network); 27 Feb 2018 17:38:41 -0000
From: Bryan Call <bcall@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <0328E5ED-8D75-4C17-99A6-5D65B3AF4E5E@apache.org>
Date: Tue, 27 Feb 2018 09:38:23 -0800
To: dev <dev@trafficserver.apache.org>,
 users <users@trafficserver.apache.org>,
 announce@trafficserver.apache.org,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.5.20)
Subject: [oss-security] [ANNOUNCE] Apache Traffic Server host header and line folding -
 CVE-2017-5660

CVE-2017-5660: Apache Traffic Server host header and line folding

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.2.0 and prior
ATS 7.0.0 and prior

Description:
There is a vulnerability in ATS with the Host header and line folding.  Thi=
s can have issues when interacting with upstream proxies and the wrong host=
 being used.

Mitigation:
6.2.x users should upgrade to 6.2.2 or later versions
7.x users should upgrade to 7.1.2 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads

	Github Pull Request:
		https://github.com/apache/trafficserver/pull/1657

	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-5660

-Bryan




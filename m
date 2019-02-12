X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1217" "Tuesday" "12" "February" "2019" "15:42:35" "-0800" "Bryan Call" "bcall@apache.org" "<D6664661-1212-4DB1-9238-2D50DF8D0332@apache.org>" "42" "[oss-security] [CVE-2018-11783] Apache Traffic Server vulnerability with sslheader plugin" "^Date:" nil nil "2" "2019021223:42:35" "[oss-security] [CVE-2018-11783] Apache Traffic Server vulnerability with sslheader plugin" (number mark "        bcall@apache Feb 12   42/1217  " thread-indent "\"[oss-security] [CVE-2018-11783] Apache Traffic Server vulnerability with sslheader plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29920 invoked by uid 550); 13 Feb 2019 11:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26448 invoked from network); 12 Feb 2019 23:42:50 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2D3517ED-4572-4FDE-97B3-3D3B3ABFA4CC"
Mime-Version: 1.0 (Mac OS X Mail 12.1 \(3445.101.1\))
Message-Id: <D6664661-1212-4DB1-9238-2D50DF8D0332@apache.org>
X-Mailer: Apple Mail (2.3445.101.1)
Date: Tue, 12 Feb 2019 15:42:35 -0800
From: Bryan Call <bcall@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2018-11783] Apache Traffic Server vulnerability with sslheader
 plugin
To: oss-security@lists.openwall.com

--Apple-Mail=_2D3517ED-4572-4FDE-97B3-3D3B3ABFA4CC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2018-11783: Apache Traffic Server vulnerability with sslheader plugin

Reported By:
Nikhil Marathe

Vendor:
The Apache Software Foundation

Version Affected:
ATS 6.0.0 to 6.2.3
ATS 7.0.0 to 7.1.5
ATS 8.0.0 to 8.0.1

Description:
sslheaders plugin extracts information from the client certificate and sets=
 headers in the request based on the configuration of the plugin.  The plug=
in doesn't strip the headers from the request in some scenarios.

Mitigation:
6.x users should upgrade to 7.1.6, 8.0.2, or later versions
7.x users should upgrade to 7.1.6 or later versions
8.x users should upgrade to 8.0.2 or later versions

References:
	Downloads:
		https://trafficserver.apache.org/downloads <https://trafficserver.apache.=
org/downloads>
	Github Pull Request:
		https://github.com/apache/trafficserver/pull/4701 <https://github.com/apa=
che/trafficserver/pull/4701>
	CVE:
		https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-11783 <https://=
cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-11783>

-Bryan=

--Apple-Mail=_2D3517ED-4572-4FDE-97B3-3D3B3ABFA4CC--

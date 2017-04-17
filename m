X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["375" "Monday" "17" "April" "2017" "16:13:04" "-0700" "Bryan Call" "bcall@apache.org" "<F4BD9382-D7C5-4322-BCDA-F555472B08F9@apache.org>" "15" "[oss-security] [ANNOUNCE] Chunking and content-length vulnerability in ATS - CVE-2017-5659" "^Date:" nil nil "4" "2017041723:13:04" "[oss-security] [ANNOUNCE] Chunking and content-length vulnerability in ATS - CVE-2017-5659" (number mark "U       bcall@apache Apr 17   15/375   " thread-indent "\"[oss-security] [ANNOUNCE] Chunking and content-length vulnerability in ATS - CVE-2017-5659\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22092 invoked by uid 550); 17 Apr 2017 23:38:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7307 invoked from network); 17 Apr 2017 23:13:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <F4BD9382-D7C5-4322-BCDA-F555472B08F9@apache.org>
X-Mailer: Apple Mail (2.3273)
Date: Mon, 17 Apr 2017 16:13:04 -0700
From: Bryan Call <bcall@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] Chunking and content-length vulnerability in ATS -
 CVE-2017-5659
To: dev <dev@trafficserver.apache.org>,
 users@trafficserver.apache.org,
 announce@trafficserver.apache.org,
 security@trafficserver.apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com,
 persia@apache.org

There is a vulnerability in ATS with chunking and content-length that can l=
ead to a DoS attack.  Versions 6.2.0 and prior are affected.  Please upgrad=
e to ATS 6.2.1 or 7.0.0.

Downloads:
	https://trafficserver.apache.org/downloads

Jira Ticket:
	https://issues.apache.org/jira/browse/TS-4819

CVE:
	https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=3D2017-5659


-Bryan

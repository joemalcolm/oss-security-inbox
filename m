X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["679" "Tuesday" "13" "July" "2021" "17:15:27" "+0000" "Stefan Bodewig" "bodewig@apache.org" nil "24" "[oss-security] CVE-2021-36373: Apache Ant TAR archive denial of service vulnerability " nil nil nil "7" nil nil (number mark "U       bodewig@apac Jul 13   24/679   " thread-indent "\"[oss-security] CVE-2021-36373: Apache Ant TAR archive denial of service vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36373: Apache Ant TAR archive denial of service vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24517 invoked by uid 550); 13 Jul 2021 17:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26092 invoked from network); 13 Jul 2021 17:16:00 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b34423ad-6a9c-8ad5-d97b-1aee0e4722b1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jul 2021 17:15:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-36373: Apache Ant TAR archive denial of service
 vulnerability 

Description:

When reading a specially crafted TAR archive an Apache Ant build can be mad=
e to allocate large amounts of memory that finally leads to an out of memor=
y error, even for small inputs. This can be used to disrupt builds using Ap=
ache Ant.


Mitigation:

Apache Ant 1.9.x users should upgrade to 1.9.16 or later.
Apache Ant 1.10.x users should upgrade to 1.10.11 or later.

Credit:

This issue is similar to https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DC=
VE-2021-35517 present in Apache Commons Compress which has been detected by=
 OSS Fuzz.

References:

https://ant.apache.org/security.html
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-35517


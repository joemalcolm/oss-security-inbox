X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Tuesday" "13" "July" "2021" "17:15:51" "+0000" "Stefan Bodewig" "bodewig@apache.org" nil "26" "[oss-security] CVE-2021-36374: Apache Ant ZIP, and ZIP based, archive denial of service vulerability " nil nil nil "7" nil nil (number mark "U       bodewig@apac Jul 13   26/794   " thread-indent "\"[oss-security] CVE-2021-36374: Apache Ant ZIP, and ZIP based, archive denial of service vulerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36374: Apache Ant ZIP, and ZIP based, archive denial of service vulerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26382 invoked by uid 550); 13 Jul 2021 17:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26272 invoked from network); 13 Jul 2021 17:16:23 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ffc7668f-036a-0b0b-c512-2eb652d3e885@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jul 2021 17:15:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-36374: Apache Ant ZIP, and ZIP based, archive denial of
 service vulerability 

Description:

When reading a specially crafted ZIP archive, or a derived formats, an Apac=
he Ant build can be made to allocate large amounts of memory that leads to =
an out of memory error, even for small inputs. This can be used to disrupt =
builds using Apache Ant.

Commonly used derived formats from ZIP archives are for instance JAR files =
and many office files.

Mitigation:

Apache Ant 1.9.x users should upgrade to 1.9.16 or later.
Apache Ant 1.10.x users should upgrade to 1.10.11 or later.

Credit:

This issue is similar to https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DC=
VE-2021-36090 present in Apache Commons Compress which has been detected by=
 OSS Fuzz.

References:

https://ant.apache.org/security.html
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-36090


X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Tuesday" "13" "July" "2021" "04:00:47" "+0000" "Stefan Bodewig" "bodewig@apache.org" nil "23" "[oss-security] CVE-2021-35515: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability " nil nil nil "7" nil nil (number mark "U       bodewig@apac Jul 13   23/493   " thread-indent "\"[oss-security] CVE-2021-35515: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-35515: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7896 invoked by uid 550); 13 Jul 2021 07:28:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32310 invoked from network); 13 Jul 2021 04:01:01 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1ac81e10-674c-00d1-5073-057cbaf17674@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jul 2021 04:00:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-35515: Apache Commons Compress 1.6 to 1.20 denial of
 service vulnerability 

Severity: low

Description:

When reading a specially crafted 7Z archive, the construction of the list o=
f codecs that decompress an entry can result in an infinite loop.  This cou=
ld be used to mount a denial of service attack against services that use Co=
mpress' sevenz package.


Mitigation:

Commons Compress users should upgrade to 1.21 or later.


Credit:

This issue was discovered by OSS Fuzz.

References:

https://commons.apache.org/proper/commons-compress/security-reports.html


X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1146" "Tuesday" "13" "July" "2021" "04:01:04" "+0000" "Stefan Bodewig" "bodewig@apache.org" nil "34" "[oss-security] CVE-2021-35516: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability " nil nil nil "7" nil nil (number mark "U       bodewig@apac Jul 13   34/1146  " thread-indent "\"[oss-security] CVE-2021-35516: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-35516: Apache Commons Compress 1.6 to 1.20 denial of service vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14066 invoked by uid 550); 13 Jul 2021 07:29:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32592 invoked from network); 13 Jul 2021 04:01:27 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e7d04b16-bcc3-c334-9e64-e57824ac1195@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jul 2021 04:01:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-35516: Apache Commons Compress 1.6 to 1.20 denial of
 service vulnerability 

Severity: low

Description:

When reading a specially crafted 7Z archive, Compress can be made to alloca=
te large amounts of memory that finally leads to an out of memory error eve=
n for very small inputs. This could be used to mount a denial of service at=
tack against services that use Compress' sevenz package.


This issue is being tracked as COMPRESS-542

Mitigation:

Commons Compress users should upgrade to 1.21 or later.

With Compress 1.19 we introduced a feature that tries to recover broken 7z =
archives, which makes it far easier to exploit this weakness. As a result w=
e have disabled the recovery code by default and users need to enable it ex=
plicitly. In addition users are able to control the amount of memory SevenZ=
File may use and we strongly recommend using this feature when trying to re=
cover broken archives.


Credit:

This issue was first reported to the project's issue tracker as COMPRESS-54=
2 by Robin Schimpf. Later OSS Fuzz detected ways to exploit this issue whic=
h managed to escape the initial attempt to fix it.

References:

https://commons.apache.org/proper/commons-compress/security-reports.html


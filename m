X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["508" "Tuesday" "13" "July" "2021" "04:01:33" "+0000" "Stefan Bodewig" "bodewig@apache.org" nil "20" "[oss-security] CVE-2021-36090: Apache Commons Compress 1.0 to 1.20 denial of service vulnerability " nil nil nil "7" nil nil (number mark "U       bodewig@apac Jul 13   20/508   " thread-indent "\"[oss-security] CVE-2021-36090: Apache Commons Compress 1.0 to 1.20 denial of service vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36090: Apache Commons Compress 1.0 to 1.20 denial of service vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18283 invoked by uid 550); 13 Jul 2021 07:29:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32741 invoked from network); 13 Jul 2021 04:01:46 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b713094b-a7d1-a7db-4ff9-3a1fe3523d6d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 13 Jul 2021 04:01:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-36090: Apache Commons Compress 1.0 to 1.20 denial of
 service vulnerability 

Description:

When reading a specially crafted ZIP archive, Compress can be made to alloc=
ate large amounts of memory that finally leads to an out of memory error ev=
en for very small inputs. This could be used to mount a denial of service a=
ttack against services that use Compress' zip package.


Mitigation:

Commons Compress users should upgrade to 1.21 or later.

Credit:

This issue was discovered by OSS Fuzz.

References:

https://commons.apache.org/proper/commons-compress/security-reports.html


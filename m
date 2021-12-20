X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["509" "Monday" "20" "December" "2021" "10:03:37" "+0000" "=?UTF-8?B?R8OhYm9yIFN6w6Fkb3Zzemt5?=" "gabor@apache.org" nil "19" "[oss-security] CVE-2021-41561: Apache Parquet-MR potential DoS in case of malicious Parquet file " nil nil nil "12" nil nil (number mark "U       gabor@apache Dec 20   19/509   " thread-indent "\"[oss-security] CVE-2021-41561: Apache Parquet-MR potential DoS in case of malicious Parquet file \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41561: Apache Parquet-MR potential DoS in case of malicious Parquet file " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26448 invoked by uid 550); 20 Dec 2021 14:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32625 invoked from network); 20 Dec 2021 10:03:51 -0000
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?G=C3=A1bor_Sz=C3=A1dovszky?= <gabor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <568519e9-1bcc-671d-5868-d96b3fa6f908@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Dec 2021 10:03:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-41561: Apache Parquet-MR potential DoS in case of
 malicious Parquet file 

Description:

Improper Input Validation vulnerability in Parquet-MR of Apache Parquet all=
ows an attacker to DoS by malicious Parquet files. This issue affects Apach=
e Parquet-MR version 1.9.0 and later versions.

This issue is being tracked as PARQUET-2094

Mitigation:

1.12.x users should upgrade to 1.12.2
1.11.x users should upgrade to 1.11.2
Users of older release lines (<=3D 1.10.x) should upgrade to 1.12.2 or 1.11=
.2

Credit:

This issue was discovered by Sergey Temnikov of the Amazon S3 team.


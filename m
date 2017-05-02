X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["890" "Tuesday" "2" "May" "2017" "13:08:43" "+0000" "Ari Kauppi" "Ari.Kauppi@synopsys.com" "<AEE7726B-5FE6-4972-BEFB-8CED939E875F@synopsys.com>" "31" "[oss-security] CVE-2017-7895 Linux kernel: nfsd: Remote arbitrary memory read" nil nil nil "5" "2017050213:08:43" "[oss-security] CVE-2017-7895 Linux kernel: nfsd: Remote arbitrary memory read" (number mark "U       Ari.Kauppi@s May  2   31/890   " thread-indent "\"[oss-security] CVE-2017-7895 Linux kernel: nfsd: Remote arbitrary memory read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15758 invoked by uid 550); 2 May 2017 13:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29885 invoked from network); 2 May 2017 13:08:57 -0000
From: Ari Kauppi <Ari.Kauppi@synopsys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2017-7895 Linux kernel: nfsd: Remote arbitrary memory read
Thread-Index: AQHSw0U5MXLgkEqj306gv9Uv2FYh7Q==
Date: Tue, 2 May 2017 13:08:43 +0000
Message-ID: <AEE7726B-5FE6-4972-BEFB-8CED939E875F@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.112.3.24]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0607F1A9B06E6F48A366C376D9A3A4FE@internal.synopsys.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] CVE-2017-7895 Linux kernel: nfsd: Remote arbitrary memory read

Hi,

Linux kernel NFSv3 server is vulnerable to a remote arbitrary memory read a=
ttack.

A specifically crafted request can extract chunks of arbitrary memory from =
both
kernel-space and user-space.

The attack vector requires write access to a NFS mount on the target host.

The issue has been verified to be reproducible on multiple baselines. At le=
ast
2.6.32, 3.2, 4.4, 4.8 and 4.10 baselines (and distributions derived from th=
ose)
have been confirmed to be vulnerable. Fixed in 4.11 release. Most probably
this has been introduced about 10 years ago due to fs/nfsd changes for 2.6.=
22.

CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N (7.7 / High)

Upstream patch:
https://git.kernel.org/linus/13bf9fbff0e5e099e2b6f003a0ab8ae145436309

This issue was found by Ari Kauppi from Synopsys Ltd with Synopsys Defensics
fuzzer combined with KASAN.

Thanks,

--
Ari Kauppi / Synopsys Ltd.=

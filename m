X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1429" "Tuesday" "27" "June" "2017" "11:33:20" "+0000" "Ari Kauppi" "Ari.Kauppi@synopsys.com" "<6D896033-5E5F-4F8B-A05E-771F0408BA66@synopsys.com>" "38" "[oss-security] CVE-2017-8797 Linux kernel: nfsd: remote DoS" nil nil nil "6" "2017062711:33:20" "[oss-security] CVE-2017-8797 Linux kernel: nfsd: remote DoS" (number mark "U       Ari.Kauppi@s Jun 27   38/1429  " thread-indent "\"[oss-security] CVE-2017-8797 Linux kernel: nfsd: remote DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20450 invoked by uid 550); 27 Jun 2017 12:43:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17674 invoked from network); 27 Jun 2017 11:33:35 -0000
From: Ari Kauppi <Ari.Kauppi@synopsys.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2017-8797 Linux kernel: nfsd: remote DoS
Thread-Index: AQHS7zkt6fuEkEvhnEG8ymudjtVu1Q==
Date: Tue, 27 Jun 2017 11:33:20 +0000
Message-ID: <6D896033-5E5F-4F8B-A05E-771F0408BA66@synopsys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.112.3.44]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8EBD50BC86489F408237F5CB652DD128@internal.synopsys.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [oss-security] CVE-2017-8797 Linux kernel: nfsd: remote DoS

Hi,

Linux kernel NFSv4 server is vulnerable to a remote DoS attack.

The NFSv4 server in the Linux kernel does not properly validate layout type
when processing NFSv4 pNFS LAYOUTGET operand. The provided input
value is not properly validated and is used for array dereferencing. OOPS
is triggered which leads to DoS of knfsd and eventually to soft-lockup of
whole system.

In addition, on normal processing path there is a C undefined behavior
weakness that can lead to out of bounds array dereferencing.

The attack vector requires that the attack host is within host mask of expo=
rted
NFSv4 mount or source address spoofing is not properly mitigated in the net=
work.
The attack payload fits to single one-way UDP packet. The kernel must be
compiled with CONFIG_NFSD_PNFS enabled, which seems to be the case
with many vendor kernels.

The issue has been verified to be reproducible at least with unpatched v4.4=
, v4.8
and v4.11 baselines.

Upstream patches in mainline: (available in stable releases, too)
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/f=
s/nfsd?h=3Dv4.12-rc7&id=3Db550a32e60a4941994b437a8d662432a486235a5
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/f=
s/nfsd?h=3Dv4.12-rc7&id=3Df961e3f2acae94b727380c0b74e2d3954d0edf79

The issue was found by Jani Tuovila from Synopsys Ltd with Synopsys Defensi=
cs fuzzer.

Thanks,

--
Ari Kauppi / Synopsys Ltd.=

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3680" "Friday" "19" "August" "2016" "09:49:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160819134959.E8FB8332027@smtpvbsrv1.mitre.org>" "92" "[oss-security] Re: MatrixSSL Bignum bugs" "^Cc:" nil nil "8" "2016081913:49:59" "[oss-security] Re: MatrixSSL Bignum bugs" (number mark "        cve-assign@m Aug 19   92/3680  " thread-indent "\"[oss-security] Re: MatrixSSL Bignum bugs\"\n") "<20160808231510.6514ee1c@pc1>" ("<20160808231510.6514ee1c@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5785 invoked by uid 550); 19 Aug 2016 13:50:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5747 invoked from network); 19 Aug 2016 13:50:11 -0000
In-Reply-To: <20160808231510.6514ee1c@pc1>
Message-Id: <20160819134959.E8FB8332027@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 19 Aug 2016 09:49:59 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: MatrixSSL Bignum bugs
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://www.matrixssl.org/blog/releases/matrixssl_3_8_4

>> several issues related to RSA and bignum operations


> If one tries to calculate a modular
> exponentiation with the base zero (0^b mod a, code) it would crash with
> an invalid free operation, potentially leading to memory corruption.
> https://github.com/hannob/bignum-fuzz/blob/master/matrixssl-base-zero.c

>> Testing MatrixSSL's pstm_exptmod with base zero

Use CVE-2016-6885.


> a malicious client could simply send a zero or the key's modulus here. I
> created a patch against openssl that allows to test this. Both values
> crash the MatrixSSL server. However the crash seems not to happen in
> pstm_exptmod(), it hits another bug earlier. In both cases the crash
> happens due to an invalid memory read in the function pstm_reverse(),
> which is not prepared for zero-sized inputs and will underflow the len
> variable.
> https://github.com/hannob/bignum-fuzz/blob/master/openssl-break-rsa-values.diff

>> This patch allows one to send malformed RSA encryptions during the handshake.
>> One can either send zeros or the RSA key modulus. Both trigger a bug in
>> MatrixSSL 3.8.3.

As far as we can tell, here you are reporting a crash issue that is not
identical to the "exponentiation with the base zero" issue.

Use CVE-2016-6886.


> Fortunately this was discovered before the change made it into a
> release.
> https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003104.html

>> I'm considering the below patch

>>> https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003099.html
>>> Committed and pushed now

There is no CVE ID for this "crashes with a floating point error"
behavior that existed in the https://git.lysator.liu.se/nettle/nettle
code as of approximately 2016-07-17 through 2016-07-31. The Nettle
documentation at https://www.lysator.liu.se/~nisse/nettle/ doesn't
specifically recommend that people ship unreleased Nettle code. A CVE
ID isn't, in general, required for each issue noted at any arbitrary
point during development.


> I was able to identify an input value that caused a
> wrong calculation result.
> 
> They now restrict the input to the pstm_exptmod()
> function to a set of bit sizes (512, 1024, 1536, 2048, 3072, 4096). My
> test input had a different bit size

As far as we can tell, a "wrong calculation result" is not always a
vulnerability on its own, and sometimes becomes relevant only when
there is a composite with another issue. However, the set of other
issues is not fully specified and thus we are assigning a CVE ID to
the "wrong calculation result" itself in this specific case.

Use CVE-2016-6887.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtwz9AAoJEHb/MwWLVhi2o/YP/idLfMy+aLG2sgmccQASZZGz
BSri6w0qzXrp3vta6zvU5NtGrFKe6728eteh+s5tzvQOx8cibQhkRf0rhV5+OVWR
dW3zOU/8yy8ns7liFnCCzkT3N64ZX7D6m3x9xfeBd9qAVp57y0OetH54mEX3K3wK
az47xi35WpQsGfXP6MWpxUXXNod5P/hu38TCH/siIImB/gNYgP9tmTBArsp63/M6
wxRLl5/zkMYc727tfY2apoAnu7c3qEl2WDOe12P4/T77Cpjbv1mQhpXT3fUw2dff
vCILkdN/YZM0X4zFL4MIUsTOcRX68YoP83npRCjb9q9OX6fTCeZGjAE1z2Kc0DJr
aRqv++KmjMDWa9T+NJoczsNbxcnvoCJhUpGIsL2czEEb8qbBgllbyIlvlcuh2zYf
6fxMNgPbInINglJt5j+LqxSspk4ZyMF9Ptf0zPuEOwikaLOtFI5C1AVyMiQMwO9q
RwtJnW1X4heT2OeoLQApRS3vXABdViQiPVDCqbKeYd5HaDuT3FtDqGQRfTzbCgaP
ixdotezrAC9HX/UB2WDYwSbDEIJolfnGbplGOfIuPSOsbAmQegj3fFvQg8bM/a8m
nIwmJl9liXlFpdJo4WEL4i0nQqACtP7Y3cB9oZY2S1MR2+locsZJB40p6P4T4tjG
p1ybwtmkWvayRh9TNjg7
=a0WT
-----END PGP SIGNATURE-----

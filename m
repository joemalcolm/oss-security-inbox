X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1557" "Wednesday" "21" "October" "2015" "17:47:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151021214736.CE66B72E052@smtpvbsrv1.mitre.org>" "43" "[oss-security] Re: CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102121:47:36" "[oss-security] Re: CVE Request: BusyBox tar directory traversal" (number mark "        cve-assign@m Oct 21   43/1557  " thread-indent "\"[oss-security] Re: CVE Request: BusyBox tar directory traversal\"\n") "<20151021153633.GA2430@boyd>" ("<20151021153633.GA2430@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11514 invoked by uid 550); 21 Oct 2015 21:47:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11494 invoked from network); 21 Oct 2015 21:47:48 -0000
In-Reply-To: <20151021153633.GA2430@boyd>
Message-Id: <20151021214736.CE66B72E052@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ubuntu.com, vda.linux@googlemail.com
Date: Wed, 21 Oct 2015 17:47:36 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: BusyBox tar directory traversal
To: tyhicks@canonical.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://git.busybox.net/busybox/commit/?id=a116552869db5e7793ae10968eb3c962c69b3d8c
> https://bugs.busybox.net/8411

> an archive which contains:
> symlink/evil.py

> Untarring it puts evil.py in '/tmp'

Use CVE-2011-5325.


>> I forgot to mention that I took a look at BusyBox's protections against
>> directory traversal attacks while extracting files with absolute paths
>> or dot dot ("..") components and it seems to sufficiently protect
>> against those attacks.

OK, so there's no additional CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWKAcCAAoJEL54rhJi8gl5ea0QALBMmvSwaP4IGkA35YlKXba+
Hi/hFNBfegot9cz4+UhvahPo/dO9Tqlbb6xFeD5vqotdiXhuj/4AYnaARqvrgHO0
bvS+S4KZ5vBn1yL5cREGjMdYP8pELnSs4gZzcNTqjFqY1wTjyt8PLs6HkVMKutn7
EmUdyzFrbVO6y8Lnwf9q2XDUvI6Z7ZMdbTVQes2DdwJM+HnB7i2ijdJQfZYF8x59
wuOqbYCp7CAJ15cPNFrUHbre9j3N0HAAt9aMzp075pHEZHs+YQzyW31bfJPrLUAU
tDFemKj8ydkSxSCComGPdXmyShtTdBiMlIufcpfkze9JJq4nv3cSyytXDtctH2kD
O/SNSxQhFK3kjHWixcSMe1ezUaD+ReP27yRdp0yW9ifEgUV6uacv1OlJyg/5s0ou
aH0iK6kSJgBc/pjzW+xTStTypjyiWjA3mBSGLsM1tYDCdrvfyScV65YmSYxxn1pH
bR0K0oIiloH8Ed1UnwFEe4uMA4YXtpHavH1rTMhXWCnE6RjIvrfHwzU4JsUcXMZR
dndrLI1X5RHgsIzypigrrMcR7mdqJzjbOgZbtpeqSQsWjsd/5EKYs3fDpDPBGP+S
gg+8gk9t4u2rPV4uVbtYV7t22GjeYlxSVs4JIgGgIf1wxiyT0d6eBDJveRKcNPaF
aKCQwEhg4PaApMN1HyuJ
=Rm/b
-----END PGP SIGNATURE-----

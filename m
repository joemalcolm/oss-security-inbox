X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Wednesday" "6" "January" "2016" "03:15:46" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160106081546.6A66333E02F@smtpvbsrv1.mitre.org>" "32" "[oss-security] Re: CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed" nil nil nil "1" "2016010608:15:46" "[oss-security] Re: CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed" (number mark "U       cve-assign@m Jan  6   32/1323  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed\"\n") "<2020545490.4983210.1452003849662.JavaMail.zimbra@redhat.com>" ("<2020545490.4983210.1452003849662.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9324 invoked by uid 550); 6 Jan 2016 08:15:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9306 invoked from network); 6 Jan 2016 08:15:58 -0000
From: cve-assign@mitre.org
To: vdronov@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2020545490.4983210.1452003849662.JavaMail.zimbra@redhat.com>
Message-Id: <20160106081546.6A66333E02F@smtpvbsrv1.mitre.org>
Date: Wed,  6 Jan 2016 03:15:46 -0500 (EST)
Subject: [oss-security] Re: CVE request -- linux kernel: nfs: kernel panic occurs at nfs client when nfsv4.2 migration is executed

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1295802
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=18e3b739fdc826481c6a1335ce0c5b19b3d415da

>> NFS: Fix a NULL pointer dereference of migration recovery ops for v4.2 client

Use CVE-2015-8746.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjMxnAAoJEL54rhJi8gl5XlEP/3mgM7uIvnkPzcP00tYANwWd
EjpngZqCRZ/T2UP+5mhlAO3rVWoFPpRyS9ATk1ytIzAuq9PvlkiORZFzSJF/fQNY
p3H4GPRfBFya8I0/Mo/UdHarumk4MrpW4wd3osDW+pJWETqa4HSDgBil63bImifC
dj4A3KAUzHSLvK818hHuQLMQ3GVi4Tws3Yyv4mrnj5bYodWuBwehEdtLMq7M3LJS
D2x8Io1tFAmzS7UZqx8XOBknoG09eTYdsyaONasmH2dkx9XsftuA0afUKwc99KiE
vZ4kvMmSnidKmj0bVAjQthJgLiVvU29Pd9dbI0cZg3y2utiWvr7VmildChssCT7y
YxMHwG7vpzHZ7S7Ebd7+hJ12BxPX4rDXks0fxw4E9U/a4GY7LvF1y+lwQnWVcLQG
kKlq35kINboc2n0ktNvqGEhPmlriZABoQUuCMsrD46XsEDnr5UFkURdjhOAHtJI8
Zy1NsAbOIeO+nfmN4D5rtu+LZF1z3dpG85IoHB1cOXuMD1ViZ0q7rMJkL9Q7QWE3
GMxpj/l7ahY2+/KYotCMMKA8wHB237HcVmd3wNPCIQoSZI+QzX8+DzD8dmWP6b1U
U2194pDrcX78mzrWNM5RMPzcNWw5JuQeAbRcrxTBKpHMoh3vJFCF6sxrgg8uy532
Ue7fi6vMIrYWqtL8wbxZ
=gz1q
-----END PGP SIGNATURE-----

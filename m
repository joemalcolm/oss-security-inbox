X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1527" "Wednesday" "28" "October" "2015" "09:32:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151028133258.10C9E6C0252@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE request: libxslt xsltStylePreCompute() type confusion DoS" nil nil nil "10" "2015102813:32:58" "[oss-security] Re: CVE request: libxslt xsltStylePreCompute() type confusion DoS" (number mark "        cve-assign@m Oct 28   37/1527  " thread-indent "\"[oss-security] Re: CVE request: libxslt xsltStylePreCompute() type confusion DoS\"\n") "<20151027134838.5baf199d@redhat.com>" ("<20151027134838.5baf199d@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1428 invoked by uid 550); 28 Oct 2015 13:33:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1410 invoked from network); 28 Oct 2015 13:33:10 -0000
In-Reply-To: <20151027134838.5baf199d@redhat.com>
Message-Id: <20151028133258.10C9E6C0252@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 28 Oct 2015 09:32:58 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: libxslt xsltStylePreCompute() type confusion DoS
To: scorneli@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.redhat.com/show_bug.cgi?id=1257058
> https://bugzilla.redhat.com/show_bug.cgi?id=1257962
> https://bugzilla.redhat.com/attachment.cgi?id=1086465
> 
> we found that the first parameter "ctxt->myDoc" is a xmlDocPtr, but it
> will be teated as a xmlNodePtr. Obviously, xmlDoc and xmlNode have
> different structure. This is why "xmlDocPtr->children->parent->ns" get
> a invalid value(0xffffffff), this value comes from
> xmlDoc->compression.

Use CVE-2015-7995.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWMM4nAAoJEL54rhJi8gl56jgP/jH24rdlvYqdDtbzqoi8+Asm
3PyBgEJIrEOM0GH2t1C6FtE0KtDDbuVjnisZAcZ9sKAljXJ4PJKt0gwU3bN71BB9
r+OGwONCdDkdJNduiYHUoUGfMo/01W6Wel5XG2E9q1pRVAzKtyjx/y+5hB7xoDZ5
z7zMcTzvaiFiaYliy2jhXGCqhqKZf1lArMw9cM8svjXJZaEXmH8BVKBuY/vZcvKv
VW5sR0HeOl1IzSkU+ZQFgs9sCuEsH45vLnJlMtq4k0scQ0dPkTUf0MhL7hn0TBCH
xjYS8JfVXYGf/4yBqL8fg9tmOi7T2pLFlLE0xVRzPMsR9ch5E0V/0VxM8jkUdtfs
jHuc4XydiAb6biqI8N3/AY0nM8dBBIgZu2UDzid+clMCvA8LABkO2GXZ4R2PRpQF
kMf4yXbLdcfGlGaMkgVP7An2CBJy858ozXJqlIK6K8FVzlcnz7MhbWC95r156zpI
IDseAeg1TFuzreOi8sBDJ9qdvSOR8o4aOrTKqd6SmhHPOkZ5pEgqANtjkfdq4cVk
Ir75375Kgq2N22R8j48FPthdTVpXzKStLN1i/LgnpIwDMyvHCDB46n2hIIcVOVnm
8yr7djvteU/K+y12lCuopqyKiXgM9m4Xlx+I7GLnrcRYzp+0XzwrkrYG5ZwAxFE5
YNJ6E1DCWMTJk7WvaOuL
=KCgJ
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1866" "Tuesday" "26" "January" "2016" "12:49:12" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" "^Cc:" nil nil "1" "2016012617:49:12" "[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function" (number mark "        cve-assign@m Jan 26   52/1866  " thread-indent "\"[oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29908 invoked by uid 550); 26 Jan 2016 17:49:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29888 invoked from network); 26 Jan 2016 17:49:42 -0000
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD56EB@EX02.corp.qihoo.net>
Message-Id: <20160126174912.8D47B73C4C1@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 26 Jan 2016 12:49:12 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Out-of-bounds Read in the libxml2's htmlParseNameComplex() function
To: limingxing@360.cn

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> HTMLparser.c line:2517 :
> 
>        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> 
> "ctxt->input->cur - len"  cause Out-of-bounds Read.
> 
> heap-buffer-overflow
> READ of size 1

Use CVE-2016-2073.


> From: Salvatore Bonaccorso
> 
> While checking upstream bugzilla to see if that was reported I noticed
> 
> https://bugzilla.gnome.org/show_bug.cgi?id=749115
> 
> Does this have the same root cause?

The CVE-2016-2073 PoC is an '&' followed by three characters, one of
which is a 0273 character. The PoC in 749115 has an unexpected
character immediately after a "<!DOCTYPE html" substring. We feel that
the CVE-2016-2073 report can have that unique ID on the basis of (at
least) a different attack methodology. CVE assignment for 749115 is
also possible unless 749115 already has a CVE ID.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWp7B+AAoJEL54rhJi8gl5DrYP/210C002flIvBM/PY66OYkJw
BXYc5DDLMANTpXaXoaHqYGODfRtwQjZF/sFYUgtOxFTYi3UCHxOpRNjhU77OOlQA
7aNSZ+PU/Tl15dt7PEJWdNuK0mD9Lofzg6HhxkJD6F6EQHarH0NHIbdEGV6WKGGR
c2hACkO8WLCQxd+914f5YJBPsd+pKmWADKcmjV3yQMSr+6irHfzp+9UEDX/ma/3b
9yRwy+7Ubse2t5GNq/F4lepT2fF/lTLweNhSJgdzPg59/NGjf9ZBD14d/RmrRCgR
KLlIjavWH8fGOAecBcyz7zVJAadQFOVy4DuCyOrvcVMJ6cCPjfv+oZD1r2COhPHW
9kYlHo5icgJQU8m796+H4pC9a71ckCFZ2EZ7uy8nWS1SG7WmUMJjE5lryt4O9MFt
8mmiJFXZGpX1gfaq2xHLkptGNMoaTkl+id2Vr/j2ATSCXHV3oNs4+IQLThp9vZ0Y
q+fajmn0Yp0sO34/vWmDzoxvNWTuwf+LgPjFNsirG80a1Ivv2XtHaxh8G2xTCZh4
L6gv9PT3ha/UK2RKQxB7atIt/LS2I+DqD72TckY69JygqFg43Q+QAdGQKn1YP2tA
pgs1SmgAtfOCPoph+4BYZAyIvmMzVDfAI4kjJE7AlZqAIwO3mIxaDFEd1OW3u/JY
fYAMTYnQVg9Ld8+b+XPY
=QCuy
-----END PGP SIGNATURE-----

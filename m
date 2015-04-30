X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1198" "Thursday" "30" "April" "2015" "14:07:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150430180752.E03F342E117@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)" nil nil nil "4" "2015043018:07:52" "[oss-security] Re: Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)" (number mark "        cve-assign@m Apr 30   33/1198  " thread-indent "\"[oss-security] Re: Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)\"\n") "<20150430144642.54356798@pc1>" ("<20150430144642.54356798@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25736 invoked by uid 550); 30 Apr 2015 18:08:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25680 invoked from network); 30 Apr 2015 18:08:04 -0000
In-Reply-To: <20150430144642.54356798@pc1>
Message-Id: <20150430180752.E03F342E117@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 30 Apr 2015 14:07:52 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap overflow / invalid read in Libtasn1 before 4.5 (TFPA 005/2015)
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://blog.fuzzing-project.org/9-Heap-overflow-invalid-read-in-Libtasn1-TFPA-0052015.html
> 
> heap overflow happens in the function _asn1_extract_der_octet

> http://git.savannah.gnu.org/gitweb/?p=libtasn1.git;a=commit;h=f979435823a02f842c41d49cd41cc81f25b5d677

> prevent past of boundary access

> https://lists.gnu.org/archive/html/help-libtasn1/2015-04/msg00000.html

> Corrected an invalid memory access in octet string decoding

Use CVE-2015-3622 for this over-read issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVQm7sAAoJEKllVAevmvmscVMIAMeKu9qlLfKaRe/bKDvOi/rW
WpIx9K/DpdgUwUMdmgLqLD8maV5JOkK4oFAcMYvK6G+UppsfespcpKnZ0pcR7O41
On+tIrmlWm6JyucB2sB1V8bdIynwWGbBjqgGDSAjV2cABbzEGj0XhrhpcWpsRSVo
+EGHKsGE2JR5Nn6PhMXpYnEV94l3EGEmlVfMYFAjRq6CUfNa6GMppQNeTpcylxfn
H0HqaYGZIbw2ilT4xlhJmrK6282lkRleCF6U8e2eYkluIFmGE/0GX0MvAuxSIlke
bqBetn8Itj4bLtlqnalg6dCs6Ekn9sAOFtiFUytHNw19k+/cXxhieT7ZK13oPeQ=
=qmH3
-----END PGP SIGNATURE-----

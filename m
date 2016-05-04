X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1610" "Wednesday" "4" "May" "2016" "01:33:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160504053355.82E858BC11B@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode" nil nil nil "5" "2016050405:33:55" "[oss-security] Re: CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode" (number mark "U       cve-assign@m May  4   46/1610  " thread-indent "\"[oss-security] Re: CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode\"\n") "<CACn5sdQe0-qg68k+Zb5XtTk9Q2z1j38akrPxbAQQu_4Qf+g3Lw@mail.gmail.com>" ("<CACn5sdQe0-qg68k+Zb5XtTk9Q2z1j38akrPxbAQQu_4Qf+g3Lw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26039 invoked by uid 550); 4 May 2016 05:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26018 invoked from network); 4 May 2016 05:34:07 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdQe0-qg68k+Zb5XtTk9Q2z1j38akrPxbAQQu_4Qf+g3Lw@mail.gmail.com>
Message-Id: <20160504053355.82E858BC11B@smtpvmsrv1.mitre.org>
Date: Wed,  4 May 2016 01:33:55 -0400 (EDT)
Subject: [oss-security] Re: CVE request: out-of-bounds read parsing an XML in libxml2 using recover mode

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found an out-of-bounds read parsing a specially crafted xml in libxml2
> if recover mode is used.

> xmllint -recover

> AddressSanitizer: heap-buffer-overflow ...
> READ of size 1

> in xmlBufAttrSerializeTxtContent
> at xmlsave.c:2057

Use CVE-2016-4483 for this buffer over-read issue.

(As far as we can tell, xmlsave.c is not specific to the xmllint program, e.g.,

  libxml2_la_SOURCES = SAX.c entities.c encoding.c error.c parserInternals.c  \
  ...
                  xmlwriter.c legacy.c chvalid.c pattern.c xmlsave.c \

in the Makefile.in file.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKYjwAAoJEHb/MwWLVhi2XyQP/0HHmJWg4qK6CZ3MP51QXnpN
moUDMdEST1oGlOSjfQcZ0i/i3yesk0qqfG2V1E+uH0Yu5FS78ud2mc+5/SZnjFzj
RO71qkIUN8vrXSJRJ2CZrySAa6Z3VM5P3NZQHq1pZ/BF2fzwgFATwLb+476+BDOu
tAIFMhWVH4TQ3YtG5dGrgDjCPK2LJCFockvvtjsYElfZQkTDKapk8/JjbZxmMcFY
QPvM4YqCXrJ6i+LCO+LERFW51xZso6o32HqeeizfuT5Q+XTfx1Kd+t/VasVcGp77
k8AqhNJSNFnDFUCmN+fQN093q7GQQG80spKwYSOXfP9ZGb7g/jP5IRv1kbmtdDof
eKKA2gQr7XMiGlqMxEUPFkVXYcX37oH1BMcjS7erw6+zE+EI6seW+6gWxK8Ke/Hg
ycklozYz9ZsvrqS2cfR5kdG5EmNvgatYQ3pivZmjfp3V4W+dwXTxeNh4oiEF3YJv
mhgdi3WqeH0z8ibyU75GVeZh3WHbcB4yNlyqeNOOcosvy6O2DNlA4LDqK7ouriGF
AB0t+sy289WdDKHIPRVwTMlZkNaqtiuR5MUVKeYHH6y+qiqwdv4y69y5opBd+caP
2rAYNJx8e/lbBF6EvXVfQZdgzfLP644tv7+rsJwi5K7J0Nbvn6rkI6/nQIDRKNKe
sNb0SV4CM2Tym0y40PGq
=meeO
-----END PGP SIGNATURE-----

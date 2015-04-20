X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Monday" "20" "April" "2015" "18:57:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150420225721.662EEB2E075@smtpvbsrv1.mitre.org>" "26" "[oss-security] Re: Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo" nil nil nil "4" "2015042022:57:21" "[oss-security] Re: Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo" (number mark "        cve-assign@m Apr 20   26/905   " thread-indent "\"[oss-security] Re: Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo\"\n") "<E1YkFDn-0002ye-1J@xenbits.xen.org>" ("<E1YkFDn-0002ye-1J@xenbits.xen.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1491 invoked by uid 550); 20 Apr 2015 22:57:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1459 invoked from network); 20 Apr 2015 22:57:32 -0000
In-Reply-To: <E1YkFDn-0002ye-1J@xenbits.xen.org>
Message-Id: <20150420225721.662EEB2E075@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 20 Apr 2015 18:57:21 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Xen Security Advisory 132 - Information leak through XEN_DOMCTL_gettscinfo
To: security@xen.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>                     Xen Security Advisory XSA-132
> 
> The handler for XEN_DOMCTL_gettscinfo failed to initialize a padding
> field subsequently copied to guest memory.

Use CVE-2015-3340.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVNYOqAAoJEKllVAevmvmsfcEH/2oqbTU2VAtVzJdjLlmwEol7
OmtA6ZSvHZq3q45UKctDPcXFpoBQ4WIFawtHfLrWfsfEfcw23G0hyb4r0lkkSAXg
kpEpG6IeTMg0jcFhfNFDPqP0YnuKBW6m2gwkzLg6Sna+bhkN1GtsYHw/52UZ1oQA
w4cJXZqYsPg0trd94LGnJhlidB/EnJOCFjY262q//BkcI44pfjhvs1sjdqqGfBxY
6WBXg9L1mEFdtECLSHBuiSgHYjPXr4+CVzjEdSvAuazm+F5OoU5kpLB6WsOpfLM2
+lFxU0kGeh3QxvZbkhvlBxQeSE8NW9naZzj/G+Dn582Z7jLMI6LnJv4vT2t7myo=
=bcN4
-----END PGP SIGNATURE-----

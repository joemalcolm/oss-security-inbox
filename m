X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3040" "Wednesday" "6" "April" "2016" "11:57:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160406155703.E732F33204D@smtpvbsrv1.mitre.org>" "63" "[oss-security] Re: CVE Request - xchat/hexchat doesn't properly verify SSL certificates" nil nil nil "4" "2016040615:57:03" "[oss-security] Re: CVE Request - xchat/hexchat doesn't properly verify SSL certificates" (number mark "U       cve-assign@m Apr  6   63/3040  " thread-indent "\"[oss-security] Re: CVE Request - xchat/hexchat doesn't properly verify SSL certificates\"\n") "<5703B83B.30108@redhat.com>" ("<5703B83B.30108@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26248 invoked by uid 550); 6 Apr 2016 15:57:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26230 invoked from network); 6 Apr 2016 15:57:16 -0000
From: cve-assign@mitre.org
To: anemec@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5703B83B.30108@redhat.com>
Message-Id: <20160406155703.E732F33204D@smtpvbsrv1.mitre.org>
Date: Wed,  6 Apr 2016 11:57:03 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - xchat/hexchat doesn't properly verify SSL certificates

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I noticed that this issue never got a CVE assigned.
> http://seclists.org/oss-sec/2015/q1/342
> 
> Could one be assigned now, or was it deemed not CVE worthy?

Use CVE-2013-7449.

This is an issue that had extensive debate on oss-security, e.g., the
http://www.openwall.com/lists/oss-security/2015/01/29/27 and
http://www.openwall.com/lists/oss-security/2015/01/30/18 posts. Also,
https://github.com/hexchat/hexchat/issues/524 only has an
"enhancement" label and not a "bug" label.
https://github.com/hexchat/hexchat/commit/c9b63f7f9be01692b03fa15275135a4910a7e02d
doesn't directly suggest that the vendor interpreted this as a bug
fix. The vendor's original goal may have been to support the use case
in which people deploying IRC client or server code simply do not want
to bother arranging for any type of verifiable server certificate
(either by using a CA or self signing), these people are not concerned
that a man-in-the-middle attacker may intentionally set up something
to read or modify their traffic, and these people are only concerned
with already-existing observation of over-the-wire cleartext. For
example, client users may have connected via https only because they
don't want their IRC messages to trigger IDS rules on their own local
networks, and therefore automatically send chat snippets to their
local network administrators.

However, XChat and HexChat are general-purpose IRC clients that, based
on their documentation, would appear suitable for any IRC client user
to connect to any SSL IRC server. They didn't advertise that the SSL
behavior was intended only for a
prefer-not-to-accidentally-hit-an-IDS-rule use case. In creating a
patch, the vendor never stated that the old behavior was once the
desired behavior. So, even with the "enhancement" label, this issue
must be interpreted as a vulnerability and must have a CVE ID.

For affected products, also note the mention of XChat-GNOME in the
http://www.openwall.com/lists/oss-security/2015/01/29/24 post.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXBS+qAAoJEL54rhJi8gl5tvAQALd6ceYTkPnzK/zFFs6Th+B4
w2vie2yj2/BcvrfmPut6kIEC8owgdzaK5gWwcVzuDlMC9y5puyrheSD8YXH/4ad2
TJdcA2UYcUl0UIM4ZzXyZmu1EJqgMeJ9FXHW/aIsg0drBin3X71zO7Hiq+BMGvw8
BqcrJQrp0aBKMzOQtoI+FZW2LDn+FcsNaIVxXuU8CrziYMbaIlycQn6dnUGE7qJ1
r7f+1bM5wH0NUY+IVdg4II8hjrPih8O2FmGSEg15OLteaBHPoZYNEK3hX8VCdonu
1inSYxFAF0co+28bGmCJ8CcAjT9NPWbvmxbp0h1rwkZKLic8YAZ/IWW8k/qO0Rkr
TLXHFYpTSKIz/bCwgc6KU8VOWJnt7XzQAGOmQVrylQvbC+5ImyojaXUBZmTEAZzG
rY1mwhVOy1A5fouulr4s1jtRp5+wMf3V7OpV9rBL0xERZ4c14z6zkHinzaUVqeVa
e2ShMgcrr9dl2sRC9cX2sM1/zPQqia+ArGU//NJK92cKvg1v9XGnkjJrKCVva0Y1
9uFe4n18cRK2lD7+XI4pQSxBuoyojGiNgxjldIlCaR/fhfDvV9qhIIdf0K74IICp
eMAWRrmPtlrjqp4J7JO5vIXyRDcRfT/k9lTni9G7FD5ayMVkwU+q4qEf7fTSZpuE
Xy7K17ik/6TMYx7edjmf
=0Fpa
-----END PGP SIGNATURE-----

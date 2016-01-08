X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3094" "Friday" "8" "January" "2016" "14:55:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160108195517.AE8F26C00A6@smtpvmsrv1.mitre.org>" "75" "[oss-security] Re: CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer" nil nil nil "1" "2016010819:55:17" "[oss-security] Re: CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer" (number mark "U       cve-assign@m Jan  8   75/3094  " thread-indent "\"[oss-security] Re: CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer\"\n") "<55BB16DD.2000206@redhat.com>" ("<55BB16DD.2000206@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30201 invoked by uid 550); 8 Jan 2016 19:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30180 invoked from network); 8 Jan 2016 19:55:29 -0000
From: cve-assign@mitre.org
To: huzaifas@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jmm@debian.org
In-Reply-To: <55BB16DD.2000206@redhat.com>
Message-Id: <20160108195517.AE8F26C00A6@smtpvmsrv1.mitre.org>
Date: Fri,  8 Jan 2016 14:55:17 -0500 (EST)
Subject: [oss-security] Re: CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The FreeRADIUS project has reported a flaw that affects the EAP-PWD
> module of the freeradius package versions 3.0 up to 3.0.8. This module
> is not enabled by default, so administrators must have manually enabled
> it for their servers to be vulnerable.
> 
> http://freeradius.org/security.html#eap-pwd-2015

We have revisited this and decided that it needs unique CVE IDs. As
mentioned on that security.html page, "These issues were found by
Jouni Malinen as part of investigating
http://w1.fi/security/2015-4/" - this suggested a possibility that the
CVE IDs listed in
http://www.openwall.com/lists/oss-security/2015/05/31/6 would be
applicable. However, FreeRADIUS apparently has an independent
implementation of EAP-pwd. This led to a somewhat unusual situation in
which most of the vulnerability findings were, at a high level, the
same -- but resulted from a different set of mistakes within a
different codebase. The applicable FreeRADIUS changes can be found in
the "Commits on May 4, 2015" section of:

  https://github.com/FreeRADIUS/freeradius-server/commits/v3.0.x/src/modules/rlm_eap/types/rlm_eap_pwd

and are distinct from the changes in the http://w1.fi/security/2015-4/
patches.

We are associating the three CVE IDs below with the items on the
security.html list, not with the specific FreeRADIUS commits.


>> The EAP-PWD packet length is not checked before the first byte is
>> dereferenced. A zero-length EAP-PWD packet will cause the module to
>> dereference a NULL pointer, and will cause the server to crash.

Use CVE-2015-8762.


>> The commit message payload length is not validated before the packet
>> is decoded. This can result in a read overflow in the server.
>> 
>> The confirm message payload length is not validated before the packet
> is decoded. This can result in a read overflow in the server.

Use CVE-2015-8763 for both of these issues.


>> A strcpy() was used to pack a C string into an EAP-PWD packet. This
>> would result in an over-run of the destination buffer by one byte.

Use CVE-2015-8764.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWkBOHAAoJEL54rhJi8gl5Od0P/1Y8DafilHgNgmQP4D5DfdfB
x9yuBDJt/rr8NnrbXsIjkuQMIB+UolyAcgEB4CDqiwh4SyYeZSbO1rj3zP0/1uS1
TyjLGLLiKHc3B53vEK/m3tAZ1M5GEsp3rIH+McCsbip+WlDpkuKexJ8E0kBleWiH
Mg5UslARv6b7yS5QIoH93MiiZSl+w0V0UtWIkEP1BfCskJhj9DvVd161hyRDcT7m
ZG52NdBYzCUYP4BC58qEPYtGwM1+OMjaHa6MjkpzqvubMwtdzGK15zcljy/yvN6k
oY7euhV55PbPsajuzHihBWWp0oejl5gBEiGX6fqCUS8BIoadaOFI9hKkWEBVKnav
wrE7+f03C2GO/rs46jp1737qtNzIrBklyTblDItLDA1QDqpc5q/Sb9xlLycZ9o8H
v++vSz3ZQILfi72T7BhhdMl5SQlfNuxdDw0BJBA6tC2+1thZWZBpIg/lXajHo9r9
E3qszBo0cmh5MSAEdWOMGEInt9DvHymPTcXEtZYFQph54Xb1YS/YYpItX9w5e7e+
nciRvLRFQwWzC0XJKv9klliStJygxW0g27StoMXncnDchRiIiBV4ypgPJITawi0L
9LWMSpAhS2VYAAJQjchLaUHFAHgmXwsIKEJJ2k7iuUXF6Qytee3k2uRieRQ3Rvx0
XhrlBiLeO/vhmZJ8trch
=16O5
-----END PGP SIGNATURE-----

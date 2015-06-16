X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1611" "Tuesday" "16" "June" "2015" "17:06:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150616210624.7AED26FC01B@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request for polkit" nil nil nil "6" "2015061621:06:24" "[oss-security] Re: CVE request for polkit" (number mark "        cve-assign@m Jun 16   39/1611  " thread-indent "\"[oss-security] Re: CVE request for polkit\"\n") "<1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>" ("<1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29839 invoked by uid 550); 16 Jun 2015 21:06:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29821 invoked from network); 16 Jun 2015 21:06:36 -0000
In-Reply-To: <1433793978.2356598.290097129.7DC53180@webmail.messagingengine.com>
Message-Id: <20150616210624.7AED26FC01B@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, mitr@redhat.com
Date: Tue, 16 Jun 2015 17:06:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for polkit
To: walters@verbum.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>>   https://bugs.freedesktop.org/show_bug.cgi?id=90837
>>   https://bugs.freedesktop.org/show_bug.cgi?id=90832

This can have a single CVE ID, CVE-2015-4625.

> this
> approach passes through the uid of the caller from the setuid binary,
> ensuring that we only look up `AuthenticationAgent`s that were created
> by a matching uid.

With only this change, the original report of "another process can
generate 2^32 authentication sessions and just disconnect immediately.
The counter gets incremented but the cookies never get removed from
the list, until eventually counter wraps and a second cookie is
minted." would still be considered an implementation error, but it
could no longer be considered "exploitable" in the context of the
current polkit security model. In other words, because the two
concerns (90832 and 90837) are not independent vulnerabilities, there
should not be two CVE IDs.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVgI9cAAoJEKllVAevmvmsFuMIAIyxB79JHByD5607hzwv6+gL
IT0YBcbDT1ow3uKIz+S5S91HpxJKCbg5InNzhCac0EpKU2l4HxILIdk0l/wcmnf9
rzr4kSzvRATaQYkj9X5oPIrLYXGSrGdxy6KYe8LMa0/Sis6RLVJve7C3YlCx1yZU
FJMU43g3/sap7ReK40V8FnEDB4e3BH6+fUg5tqF+Q/rvvEEbwap3s2tv6GsP8RM/
cskGx2sgrLRO2fo/3NyIb8kOuJq8xmgVrCnNzzIoqvs9yzQTmMmGDLPfzN276nxB
/NCsNJITO1Unb+TwZknxRJjBv4Ic1CfCC2IFD7vG/MgdO+3Zll+rZlml+5b0Zlg=
=Mb9/
-----END PGP SIGNATURE-----

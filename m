X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10212" "Wednesday" "25" "August" "2021" "12:01:35" "+0000" "Xen.org security team" "security@xen.org" nil "230" "[oss-security] Xen Security Advisory 382 v2 (CVE-2021-28699) - inadequate grant-v2 status frames array bounds check" nil nil nil "8" nil nil (number mark "U       security@xen Aug 25  230/10212 " thread-indent "\"[oss-security] Xen Security Advisory 382 v2 (CVE-2021-28699) - inadequate grant-v2 status frames array bounds check\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Xen Security Advisory 382 v2 (CVE-2021-28699) - inadequate grant-v2 status frames array bounds check" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29883 invoked by uid 550); 25 Aug 2021 12:01:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29717 invoked from network); 25 Aug 2021 12:01:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
	s=20200302mail; h=Date:Message-Id:Subject:CC:From:To:MIME-Version:
	Content-Transfer-Encoding:Content-Type;
	bh=/ygqsxQibXAMTApsIgpDRBToW/55r09ChcsqTbbvviU=; b=CN5HmSYCxsaF20MF+MpudYF9I9
	Q1VGIfyIbDd6pTbxjsgdVm/wgoQuZtsa+ZDE4iubsvObPbfO8wMs/O/H9ETooQU3SlB0NyowH0pjt
	9I0I+jPcIb3czd/dhWoafKBX2k1ZcvFfgjrg5ZTja+ioiHftP+orZ1rXKuvMuwVQsTq4=;
Content-Type: multipart/mixed; boundary="=separator"; charset="utf-8"
Content-Transfer-Encoding: binary
MIME-Version: 1.0
X-Mailer: MIME-tools 5.509 (Entity 5.509)
To: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
 xen-users@lists.xen.org, oss-security@lists.openwall.com
From: Xen.org security team <security@xen.org>
CC: Xen.org security team <security-team-members@xen.org>
Message-Id: <E1mIrb5-00066J-MJ@xenbits.xenproject.org>
Date: Wed, 25 Aug 2021 12:01:35 +0000
Subject: [oss-security] Xen Security Advisory 382 v2 (CVE-2021-28699) - inadequate
 grant-v2 status frames array bounds check

--=separator
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

            Xen Security Advisory CVE-2021-28699 / XSA-382
                               version 2

         inadequate grant-v2 status frames array bounds check

UPDATES IN VERSION 2
====================

Public release.

ISSUE DESCRIPTION
=================

The v2 grant table interface separates grant attributes from grant
status.  That is, when operating in this mode, a guest has two tables.
As a result, guests also need to be able to retrieve the addresses that
the new status tracking table can be accessed through.

For 32-bit guests on x86, translation of requests has to occur because
the interface structure layouts commonly differ between 32- and 64-bit.

The translation of the request to obtain the frame numbers of the
grant status table involves translating the resulting array of frame
numbers.  Since the space used to carry out the translation is limited,
the translation layer tells the core function the capacity of the array
within translation space.  Unfortunately the core function then only
enforces array bounds to be below 8 times the specified value, and would
write past the available space if enough frame numbers needed storing.

IMPACT
======

Malicious or buggy guest kernels may be able to mount a Denial of
Service (DoS) attack affecting the entire system.  Privilege escalation
and information leaks cannot be ruled out.

VULNERABLE SYSTEMS
==================

All Xen versions from 4.10 onwards are affected.  Xen versions 4.9 and
older are not affected.

Only 32-bit x86 guests permitted to use grant table version 2 interfaces
can leverage this vulnerability.  64-bit x86 guests cannot leverage this
vulnerability, but note that HVM and PVH guests are free to alter their
bitness as they see fit.  On Arm, grant table v2 use is explicitly
unsupported.

Only guests permitted to have 8177 or more grant table frames can
leverage this vulnerability.

MITIGATION
==========

The problem can be avoided by not increasing too much the number of
grants Xen would allow guests to establish.  The limit is controlled by
the "gnttab_max_frames" Xen command line option and the
"max_grant_frames" xl domain configuration setting.

- From Xen 4.14 onwards it is also possible to alter the system wide upper
bound of the number of grants Xen would allow guests to establish by
writing to the /params/gnttab_max_frames hypervisor file system node.
Note however that changing the value this way will only affect guests
yet to be created on the respective host.

Suppressing use of grant table v2 interfaces for 32-bit x86 guests will
also avoid this vulnerability.

CREDITS
=======

This issue was discovered by Jan Beulich of SUSE.

RESOLUTION
==========

Applying the attached patch resolves this issue.

Note that patches for released versions are generally prepared to
apply to the stable branches, and may not apply cleanly to the most
recent release tarball.  Downstreams are encouraged to update to the
tip of the stable branch before applying these patches.

xsa382.patch           xen-unstable - Xen 4.11.x

$ sha256sum xsa382*
1254d62c8ec2c6b45c117d1483af9a71f5de0e4142c9451dd5a75ee334219542  xsa382.meta
9e500ba2bfe36bebf27262afcb9be7b02f950aed4a7b6c1738606d5ed538c2b8  xsa382.patch
$

DEPLOYMENT DURING EMBARGO
=========================

Deployment of the patches and/or grant-frames-limiting mitigation
described above (or others which are substantially similar) is permitted
during the embargo, even on public-facing systems with untrusted guest
users and administrators.

HOWEVER, care has to be taken to avoid restricting guests too much, as
them suddenly being unable to establish grants they used to be able to
establish may lead to re-discovery of the issue.

AND: Deployment of the grant table v2 disabling mitigation described
above is NOT permitted during the embargo on public-facing systems with
untrusted guest users and administrators.  This is because such a
configuration change is recognizable by the affected guests.

AND: Distribution of updated software is prohibited (except to other
members of the predisclosure list).

Predisclosure list members who wish to deploy significantly different
patches and/or mitigations, please contact the Xen Project Security
Team.

(Note: this during-embargo deployment notice is retained in
post-embargo publicly released Xen Project advisories, even though it
is then no longer applicable.  This is to enable the community to have
oversight of the Xen Project Security Team's decisionmaking.)

For more information about permissible uses of embargoed information,
consult the Xen Project community's agreed Security Policy:
  http://www.xenproject.org/security-policy.html
-----BEGIN PGP SIGNATURE-----

iQFABAEBCAAqFiEEI+MiLBRfRHX6gGCng/4UyVfoK9kFAmEmMPYMHHBncEB4ZW4u
b3JnAAoJEIP+FMlX6CvZwnkIALnDReUPP6qoQzBWHf9s93UPwM6YVdHl/ao1Nh9l
IyMGtTKjJjtYR9at0tIJDmVecFZzsBtLhQlKWe5DvNP84ZQ99EGDjzsqYKGdJMZK
QIfyUz74UKN5PwEzxeT2C3Q9tOIq2NA41Vax19MjAXSbvAi3jp/0CSj7i6h+bK5f
WoBX9Av8Ie2ykF3Fe5i7yNl9gMpCyqEl3dijWwjezLIxlxzdBrjbKni+yBvmLBS9
XdS++bu9LwAbQXeDc5oB0b6mvy+7oHzEJfvCH+tA6o6V6bls94sF8owi5H52rn1n
23HzFQwbwqX9wmW5OKSS/NBzI9vJwzRCyOEVQw+eaZQGiHw=
=kWGv
-----END PGP SIGNATURE-----

--=separator
Content-Type: application/octet-stream; name="xsa382.meta"
Content-Disposition: attachment; filename="xsa382.meta"
Content-Transfer-Encoding: base64

ewogICJYU0EiOiAzODIsCiAgIlN1cHBvcnRlZFZlcnNpb25zIjogWwogICAg
Im1hc3RlciIsCiAgICAiNC4xNSIsCiAgICAiNC4xNCIsCiAgICAiNC4xMyIs
CiAgICAiNC4xMiIsCiAgICAiNC4xMSIKICBdLAogICJUcmVlcyI6IFsKICAg
ICJ4ZW4iCiAgXSwKICAiUmVjaXBlcyI6IHsKICAgICI0LjExIjogewogICAg
ICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewogICAgICAgICAgIlN0
YWJsZVJlZiI6ICJlZjMyYzdhZmEyNzMxYjc1ODIyNmQ2ZTEwYTFlNDg5YjFh
MTVmYzQxIiwKICAgICAgICAgICJQcmVyZXFzIjogWwogICAgICAgICAgICAz
NzgsCiAgICAgICAgICAgIDM3OSwKICAgICAgICAgICAgMzgwCiAgICAgICAg
ICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAgICAgICAgICJ4c2Ez
ODIucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQogICAgICB9CiAgICB9
LAogICAgIjQuMTIiOiB7CiAgICAgICJSZWNpcGVzIjogewogICAgICAgICJ4
ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjogImVhMjBlZWU5N2U5ZTA4
NjExMjdhODA3MGNjN2I5YWUzNTU3YjA5ZmIiLAogICAgICAgICAgIlByZXJl
cXMiOiBbCiAgICAgICAgICAgIDM3OCwKICAgICAgICAgICAgMzc5LAogICAg
ICAgICAgICAzODAKICAgICAgICAgIF0sCiAgICAgICAgICAiUGF0Y2hlcyI6
IFsKICAgICAgICAgICAgInhzYTM4Mi5wYXRjaCIKICAgICAgICAgIF0KICAg
ICAgICB9CiAgICAgIH0KICAgIH0sCiAgICAiNC4xMyI6IHsKICAgICAgIlJl
Y2lwZXMiOiB7CiAgICAgICAgInhlbiI6IHsKICAgICAgICAgICJTdGFibGVS
ZWYiOiAiMzJkNTgwOTAyYjk1OTAwMGQ3OWQ1MWRmZjAzYTM1NjA2NTNjNGZj
YiIsCiAgICAgICAgICAiUHJlcmVxcyI6IFsKICAgICAgICAgICAgMzc4LAog
ICAgICAgICAgICAzNzksCiAgICAgICAgICAgIDM4MAogICAgICAgICAgXSwK
ICAgICAgICAgICJQYXRjaGVzIjogWwogICAgICAgICAgICAieHNhMzgyLnBh
dGNoIgogICAgICAgICAgXQogICAgICAgIH0KICAgICAgfQogICAgfSwKICAg
ICI0LjE0IjogewogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjog
ewogICAgICAgICAgIlN0YWJsZVJlZiI6ICI0OTI5OWM0ODEzYjc4NDdkMjlk
ZjA3YmY3OTBmNTQ4OTA2MGYyYTljIiwKICAgICAgICAgICJQcmVyZXFzIjog
WwogICAgICAgICAgICAzNzgsCiAgICAgICAgICAgIDM3OSwKICAgICAgICAg
ICAgMzgwCiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAg
ICAgICAgICAgICJ4c2EzODIucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAg
fQogICAgICB9CiAgICB9LAogICAgIjQuMTUiOiB7CiAgICAgICJSZWNpcGVz
IjogewogICAgICAgICJ4ZW4iOiB7CiAgICAgICAgICAiU3RhYmxlUmVmIjog
ImRiYTc3NDg5NmY3ZGQ3NDc3M2MxNGQ1Mzc2NDNiN2Q3NDc3ZmVmY2QiLAog
ICAgICAgICAgIlByZXJlcXMiOiBbCiAgICAgICAgICAgIDM3OCwKICAgICAg
ICAgICAgMzc5LAogICAgICAgICAgICAzODAKICAgICAgICAgIF0sCiAgICAg
ICAgICAiUGF0Y2hlcyI6IFsKICAgICAgICAgICAgInhzYTM4Mi5wYXRjaCIK
ICAgICAgICAgIF0KICAgICAgICB9CiAgICAgIH0KICAgIH0sCiAgICAibWFz
dGVyIjogewogICAgICAiUmVjaXBlcyI6IHsKICAgICAgICAieGVuIjogewog
ICAgICAgICAgIlN0YWJsZVJlZiI6ICIyNWRhOTQ1NWYxYmI4YTZkMzMwMzk1
NzVhN2IyOGJkZmM0ZTNmY2ZlIiwKICAgICAgICAgICJQcmVyZXFzIjogWwog
ICAgICAgICAgICAzNzgsCiAgICAgICAgICAgIDM3OSwKICAgICAgICAgICAg
MzgwCiAgICAgICAgICBdLAogICAgICAgICAgIlBhdGNoZXMiOiBbCiAgICAg
ICAgICAgICJ4c2EzODIucGF0Y2giCiAgICAgICAgICBdCiAgICAgICAgfQog
ICAgICB9CiAgICB9CiAgfQp9

--=separator
Content-Type: application/octet-stream; name="xsa382.patch"
Content-Disposition: attachment; filename="xsa382.patch"
Content-Transfer-Encoding: base64

RnJvbTogSmFuIEJldWxpY2ggPGpiZXVsaWNoQHN1c2UuY29tPgpTdWJqZWN0
OiBnbnR0YWI6IGZpeCBhcnJheSBjYXBhY2l0eSBjaGVjayBpbiBnbnR0YWJf
Z2V0X3N0YXR1c19mcmFtZXMoKQoKVGhlIG51bWJlciBvZiBncmFudCBmcmFt
ZXMgaXMgb2Ygbm8gaW50ZXJlc3QgaGVyZTsgY29udmVydGluZyB0aGUgcGFz
c2VkCmluIG9wLm5yX2ZyYW1lcyB0aGlzIHdheSBtZWFucyB3ZSBhbGxvdyBm
b3IgOCB0aW1lcyBhcyBtYW55IEdGTnMgdG8gYmUKd3JpdHRlbiBhcyBhY3R1
YWxseSBmaXQgaW4gdGhlIGFycmF5LiBXZSB3b3VsZCBjb3JydXB0IHhsYXQg
YXJlYXMgb2YKaGlnaGVyIHZDUFUtcyAoYWZ0ZXIgaGF2aW5nIGZhdWx0ZWQg
bWFueSB0aW1lcyB3aGlsZSB0cnlpbmcgdG8gd3JpdGUgdG8KdGhlIGd1YXJk
IHBhZ2VzIGJldHdlZW4gYW55IHR3byBhcmVhcykgZm9yIDMyLWJpdCBQViBn
dWVzdHMuIEZvciBIVk0KZ3Vlc3RzIHdlJ2Qgc2ltcGx5IGNyYXNoIGFzIHNv
b24gYXMgd2UgaGl0IHRoZSBmaXJzdCBndWFyZCBwYWdlLCBhcwphY2Nlc3Nl
cyB0byB0aGUgeGxhdCBhcmVhIGFyZSBzaW1wbHkgbWVtY3B5KCkgdGhlcmUu
CgpUaGlzIGlzIENWRS0yMDIxLTI4Njk5IC8gWFNBLTM4Mi4KCkZpeGVzOiAx
OGIxYmU1ZTMyNGIgKCJnbnR0YWI6IG1ha2UgcmVzb3VyY2UgbGltaXRzIHBl
ciBkb21haW4iKQpTaWduZWQtb2ZmLWJ5OiBKYW4gQmV1bGljaCA8amJldWxp
Y2hAc3VzZS5jb20+CgotLS0gYS94ZW4vY29tbW9uL2dyYW50X3RhYmxlLmMK
KysrIGIveGVuL2NvbW1vbi9ncmFudF90YWJsZS5jCkBAIC0zMjQzLDEyICsz
MjQzLDExIEBAIGdudHRhYl9nZXRfc3RhdHVzX2ZyYW1lcyhYRU5fR1VFU1Rf
SEFOREwKICAgICAgICAgZ290byB1bmxvY2s7CiAgICAgfQogCi0gICAgaWYg
KCB1bmxpa2VseShsaW1pdF9tYXggPCBncmFudF90b19zdGF0dXNfZnJhbWVz
KG9wLm5yX2ZyYW1lcykpICkKKyAgICBpZiAoIHVubGlrZWx5KGxpbWl0X21h
eCA8IG9wLm5yX2ZyYW1lcykgKQogICAgIHsKICAgICAgICAgZ2RwcmludGso
WEVOTE9HX1dBUk5JTkcsCi0gICAgICAgICAgICAgICAgICJncmFudF90b19z
dGF0dXNfZnJhbWVzKCV1KSBmb3IgZCVkIGlzIHRvbyBsYXJnZSAoJXUsJXUp
XG4iLAotICAgICAgICAgICAgICAgICBvcC5ucl9mcmFtZXMsIGQtPmRvbWFp
bl9pZCwKLSAgICAgICAgICAgICAgICAgZ3JhbnRfdG9fc3RhdHVzX2ZyYW1l
cyhvcC5ucl9mcmFtZXMpLCBsaW1pdF9tYXgpOworICAgICAgICAgICAgICAg
ICAibnJfc3RhdHVzX2ZyYW1lcyBmb3IgJXBkIGlzIHRvbyBsYXJnZSAoJXUs
JXUpXG4iLAorICAgICAgICAgICAgICAgICBkLCBvcC5ucl9mcmFtZXMsIGxp
bWl0X21heCk7CiAgICAgICAgIG9wLnN0YXR1cyA9IEdOVFNUX2dlbmVyYWxf
ZXJyb3I7CiAgICAgICAgIGdvdG8gdW5sb2NrOwogICAgIH0K

--=separator--

Received: (qmail 8159 invoked by uid 550); 7 Jan 2026 18:33:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8124 invoked from network); 7 Jan 2026 18:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767810820; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=PrQ+YUDsGlmGORNhzKE3WezLbJbSnMgp25iE7k5VKXw=;
	b=HyxLNm12u0G4szvrG+H91y35O/G3OXEYNzi9C4dVp73m9OMVuAd76hg4PUZ5LbmG078Glk
	IMz+Pp8OFUnjDCz4ETN9juEq+Y6fFSPe52EiXHzWpS/FRbY6iAjwLzrihCY6XFSJBy5czq
	J7cnm2pCmanRiRwafnJHnZImXuwOoiY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767810820;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=PrQ+YUDsGlmGORNhzKE3WezLbJbSnMgp25iE7k5VKXw=;
	b=Hwsos2WHzY7iualAmdwuNIoMW+bYrHYj8Y9ceJ/RwdSuboUXv5X1o8GDVVSQZn0OE7EDfC
	kkCCvD300FmZKQCw==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=HyxLNm12;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Hwsos2WH
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1767810820; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=PrQ+YUDsGlmGORNhzKE3WezLbJbSnMgp25iE7k5VKXw=;
	b=HyxLNm12u0G4szvrG+H91y35O/G3OXEYNzi9C4dVp73m9OMVuAd76hg4PUZ5LbmG078Glk
	IMz+Pp8OFUnjDCz4ETN9juEq+Y6fFSPe52EiXHzWpS/FRbY6iAjwLzrihCY6XFSJBy5czq
	J7cnm2pCmanRiRwafnJHnZImXuwOoiY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1767810820;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=PrQ+YUDsGlmGORNhzKE3WezLbJbSnMgp25iE7k5VKXw=;
	b=Hwsos2WHzY7iualAmdwuNIoMW+bYrHYj8Y9ceJ/RwdSuboUXv5X1o8GDVVSQZn0OE7EDfC
	kkCCvD300FmZKQCw==
Date: Wed, 7 Jan 2026 19:33:39 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aV6nAz_-z4Mvhfvd@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="06RTrssQy4V2y/ZY"
Content-Disposition: inline
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.61
Subject: [oss-security] TLP: Polkit Authentication Bypass in Profiles Daemon in Version
 1.9.0 (CVE-2025-67859)

--06RTrssQy4V2y/ZY
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 7 Jan 2026 19:33:39 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: TLP: Polkit Authentication Bypass in Profiles Daemon in Version
 1.9.0 (CVE-2025-67859)

Hello list,

please find below a report about a Polkit authentication bypass and
other issues in TLP [1]. We also offer a rendered version of this report
on our blog [2].

Summary: TLP is a utility for saving laptop battery power when running
Linux. In version 1.9.0 of TLP a profiles daemon has been added to the
project, which provides a D-Bus interface for controlling different power
profiles. An unsafe use of the Polkit authentication API in this daemon
allows local users to bypass authorization and gain arbitrary control over
power profiles and log level settings of TLP. While looking into the new
daemon we also found a few other security issues in the area of local
Denial-of-Service.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

TLP [1] is a utility for saving laptop battery power when running Linux
(note: the TLP acronym has no special meaning [3]). In version 1.9.0 of
TLP a profiles daemon similar to GNOME's power profiles daemon [4] has
been added to the project, providing a D-Bus API for controlling some of
TLP's settings.

Our SUSE TLP package maintainer asked us for a review [5] of the changes
contained in the new TLP release, leading us to discover issues in the
Polkit authentication logic used in TLP's profiles daemon, which allow a
complete authentication bypass. While looking into the daemon we also
found some additional security problems in the area of local
Denial-of-Service (DoS).

We reported the issues to upstream in December and performed coordinated
disclosure. TLP release 1.9.1 [6] contains fixes for the issues
described below. This report is based on TLP 1.9.0 [7].

The next section provides a quick overview of the TLP power daemon.
Section 3 discusses the security issues we discovered in detail. Section
4 looks into the CVEs we assigned. Section 5 provides a summary of the
coordinated disclosure process we followed for these findings.

2) Overview of the TLP Daemon
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

The new TLP power daemon is implemented in a Python script of moderate
size [8]. The daemon runs with full root privileges and accepts D-Bus
client connections from arbitrary users. For authorization of clients a
Polkit policy [9] defines a couple of actions which are checked in the
daemon's `_check_polkit_auth() function` [10].  Some of these actions
are allowed for local users in an active session without providing
further credentials, others require admin credentials.

3) Security Issues
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1 Polkit Authorization Check can be Bypassed
----------------------------------------------

The `check_polkit_auth()` function [10] relies on Polkit's
"unix-process" subject in an unsafe way. The function obtains the
caller's PID and passes this information to the Polkit daemon for
authorization, which is inherently subject to a race condition: at the
time the Polkit daemon looks up the provided PID, the process can
already have been replaced by a different one with higher privileges
than the D-Bus client actually has.

As a result of this, the Polkit authorization check in the TLP power
daemon can be bypassed by local users, allowing them to arbitrarily
control the power profile in use as well as the daemon's log settings.

This is a well-known issue when using the "unix-process" Polkit subject
which was assigned CVE-2013-4288 [11] in the past. For this reason the
subject has been marked as deprecated in Polkit. The "unix-process"
subject is seeing new use [12] these days, however, when combined with
the use of Linux PID file descriptors, which are not affected by the
race condition.

### Upstream Bugfix

We suggested to upstream to switch to Polkit's D-Bus "system bus name"
subject instead, which is a robust way to authenticate D-Bus clients
based on the UNIX domain socket the client uses to connect to the bus.
This is what upstream did in commit 08aa9cd [13].

3.2 Predictable Cookie Values in HoldProfile Method Allow to Release Holds
--------------------------------------------------------------------------

The D-Bus methods "HoldProfile" and "ReleaseProfile" can be used by
locally logged-in users without admin authentication and allow to
establish a "profile hold", preventing the profile from being
automatically switched until it is released again.

The "HoldProfile" method returns a cookie value to the caller which
needs to be presented to the "ReleaseProfile" method again to release
it. This cookie value is a simple integer which starts counting at zero
and is incremented [14] for each call to "HoldProfile". This makes the
cookie value predictable and allows other, unrelated users or
applications to release an active profile hold by trying to guess the
cookie value in use.

### Upstream Bugfix

We suggested to upstream to make the cookie value unpredictable by
generating a random number. This is what upstream did in commit a88002e
[15].

3.3 Non-Integer `cookie` Parameter in "ReleaseProfile" Method Leads to Unha=
ndled Exception
---------------------------------------------------------------------------=
---------------

As described in the previous section, the "ReleaseProfile" D-Bus method
[16] expects an integer `cookie` parameter as input.  The Python D-Bus
framework used to implement the method allows clients to pass
non-integer types as `cookie`, however, which causes an exception to be
thrown in the daemon. This does not lead to the daemon exiting, however,
since the framework catches the exception.

The issue can be reproduced via the following command line:

    user$ dbus-send --system --dest=3Dorg.freedesktop.UPower.PowerProfiles \
          --type=3Dmethod_call --print-reply /org/freedesktop/UPower/PowerP=
rofiles \
          org.freedesktop.UPower.PowerProfiles.ReleaseProfile string:test
    Error org.freedesktop.DBus.Python.ValueError: Traceback (most recent ca=
ll
    last):
      File "/usr/lib/python3.13/site-packages/dbus/service.py", line 712, in
    _message_cb
        retval =3D candidate_method(self, *args, **keywords)
      File "/usr/sbin/tlp-pd", line 223, in ReleaseProfile
        cookie =3D int(cookie)
    ValueError: invalid literal for int() with base 10: dbus.String('test')

### Upstream Bugfix

While this is not strictly a security issue, we still suggested to make
the daemon more robust by actively catching type mismatch issues for the
`cookie` input parameter. Upstream followed this suggestion and
implemented it in the same commit [15] as above which introduces
unpredictable cookie values.

3.4 Unlimited Number of Profile Holds Provides DoS Attack Surface
-----------------------------------------------------------------

The profile hold mechanism described in section 3.2 allows local users
in an active session to create an unlimited number of profile holds
without admin authentication.  This can lead to resource exhaustion in
the TLP power daemon, since an integer is entered into a Python
dictionary along with arbitrary strings `reason` and `application_id`
which are also supplied by the client. This API thus offers
Denial-of-Service attack surface.

We found a similar issue [17] in GNOME's power profile daemon [4] some
years ago, but GNOME upstream disagreed with our analysis at the time,
which is why SUSE distributions are applying a custom patch [18] to
limit the number parallel profile holds.

### Upstream Bugfix

We asked upstream whether there are any valid use cases for supporting a
large number of profile holds in parallel, and it turns out that the
typical use case is only to support a single profile hold at any given
time. Thus upstream agreed to restrict the number of profile holds to a
maximum of 16, which is implemented in commit 6a637c9 [19].

4) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We assigned CVE-2025-67859 to track issue 3.1 (Polkit authentication
bypass). Issues 3.2 (predictable cookie values) and 3.4 (unlimited
number of profile holds) would formally also justify CVE assignments;
their severity is low, however, and we agreed with upstream to focus on
the main aspect of the Polkit authentication bypass.

5) Coordinated Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We reached out to the upstream author on December 16 with details about
the issues and offered coordinated disclosure. Upstream confirmed the
issues and accepted coordinated disclosure. We discussed patches and
further details over the course of the following two weeks. Due to the
approaching Christmas holiday season we decided to set the general
publication date to January 7.

We want to express our thanks to the TLP upstream author for the smooth
cooperation in handling these issues.

6) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-12-16: We reached out to the upstream developer by email providing a d=
etailed report and offered coordinated disclosure.
2025-12-17: We received a reply discussing details of the report. Coordinat=
ed disclosure was established with a preliminary publication date set to 20=
26-01-27.
2025-12-20: We received a set of patches from upstream for review. 2026-01-=
07 was suggested as new publication date.
2025-12-23: We provided positive feedback on the patches and agreed to the =
new publication date. We also pointed out the additional problem of the unl=
imited number of profile holds (issue 3.4).
2025-12-25: We received a follow-up patch from upstream limiting the number=
 of profile holds.
2025-12-29: We reviewed the follow-up patch and provided positive feedback =
to upstream.
2025-01-07: Upstream published bugfix release 1.9.1 [6] as planned.
2025-01-07: Publication of this report.

[1]: https://linrunner.de/tlp
[2]: https://security.opensuse.org/2026/01/07/tlp-polkit-authentication-byp=
ass.html
[3]: https://linrunner.de/tlp/faq/misc.html#what-does-tlp-stand-for
[4]: https://gitlab.gnome.org/Infrastructure/Mirrors/lorry-mirrors/gitlab_f=
reedesktop_org/hadess/power-profiles-daemon
[5]: https://bugzilla.suse.com/show_bug.cgi?id=3D1254768
[6]: https://github.com/linrunner/TLP/releases/tag/1.9.1
[7]: https://linrunner.de/tlp/news.html#tlp-1-9-released
[8]: https://github.com/linrunner/TLP/blob/1.9.0/tlp-pd.in
[9]: https://github.com/linrunner/TLP/blob/main/tlp-pd.policy
[10]: https://github.com/linrunner/TLP/blob/1.9.0/tlp-pd.in#L675
[11]: https://nvd.nist.gov/vuln/detail/CVE-2013-4288
[12]: https://github.com/polkit-org/polkit/commit/9295e289cdb1b6cf2747ecf07=
054230e15edb385
[13]: https://github.com/linrunner/TLP/commit/08aa9cdb135b3563b2fb6eb4e0ecb=
638df5e7c09
[14]: https://github.com/linrunner/TLP/blob/1.9.0/tlp-pd.in#L187
[15]: https://github.com/linrunner/TLP/commit/a88002ef26f58a2caec88d09a3f70=
e8b5b2f8585
[16]: https://github.com/linrunner/TLP/blob/1.9.0/tlp-pd.in#L223
[17]: https://gitlab.freedesktop.org/upower/power-profiles-daemon/-/issues/=
47#note_1088794
[18]: https://build.opensuse.org/projects/GNOME:Next/packages/power-profile=
s-daemon/files/hold-profile-hardening.patch?expand=3D1
[19]: https://github.com/linrunner/TLP/commit/6a637c9b32fbcbe5080ccd4af0d3d=
3ec388959c3
[20]: https://github.com/linrunner/TLP.git

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--06RTrssQy4V2y/ZY
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmlepwMACgkQFMQFyXGS
NVMkOw//bxwI0k8zkePUJL3D4imhIGsUrFjh2SshAqwvC86Ra5Sy9LTejgV4xZK9
VMMdxgcw46Mai+BBjW8SKlt8R8+h9u2OBZZ32/Eg6Di0opQGsdN1Hw2PB3hBlo9n
brfq423oLwGAtINc/2K43g3s7dwG3DHQBmb2xqbJs55Hl7DFxtG1+wasATXQlu7m
OU8ibMo0WNn2OFZTy2Dl0uPivDgQdL8INPi/7tjqZIrGIiy9Azx9u1mDjaCToz/C
wTLZ0pMIkidontcY3oJg6ukWO0Uy2HkxW2fJL10+k01SNd4WjqTR1hqjUgMl4S39
dia1rdDy3zgjtZFqYkR+1Jscw0VUFyTS6dOjvjfMkwl6SrlmcsK5Kq7Iy16lzrFP
9VLOYFz9qNimwbNfBmLtzsy3ovL/089/PTNpWe2Kdh+UH3nNeW3r2TKs2KTrI3D1
1JtYbzNmL4VJJz7qPoaWe916+JRByby9n0tV5lnJ4lnRO61GMmRTJ+4a9I2Vi7me
aejzhJXg/M2DhOD+N006C4OZz54P9VLqVbiXYb+A8BamwSeGstjjhn0Rfeo9WF2B
JjL8GtCcfq+s3xbR6zoNrJh2CLfVd7nTi7d1yZhCxktKBKv1LHlQZAQK2tdXnq54
knclWtbBauhoxsVKaQm0LRAUtV/Ubu6boHreRc9Gm6Ib7Gevnww=
=Mv0o
-----END PGP SIGNATURE-----

--06RTrssQy4V2y/ZY--

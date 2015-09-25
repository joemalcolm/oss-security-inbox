X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4917" "Friday" "25" "September" "2015" "16:04:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>" "97" "[oss-security] Re: CVE request for wget" nil nil nil "9" "2015092520:04:13" "[oss-security] Re: CVE request for wget" (number mark "U       cve-assign@m Sep 25   97/4917  " thread-indent "\"[oss-security] Re: CVE request for wget\"\n") "<CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>" ("<CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7865 invoked by uid 550); 25 Sep 2015 20:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7833 invoked from network); 25 Sep 2015 20:04:26 -0000
In-Reply-To: <CACC5Q1dz1GhKVD+0P6Ox7Gom8A0wzFv8FzQ6fbE0twehUOhawA@mail.gmail.com>
Message-Id: <20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 25 Sep 2015 16:04:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for wget
To: austinenglish@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://mailman.boum.org/pipermail/tails-dev/2015-August/009370.html
> https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00020.html
> http://git.savannah.gnu.org/cgit/wget.git/commit/?id=075d7556964f5a871a73c22ac4b69f5361295099

We really don't understand what set of expectations led to this
becoming a CVE request for a vulnerability in wget. We know that a
design goal of Tails is to prevent Internet servers from discovering
the IP address of a machine running Tails. Possibly it's a design
requirement of Tails that a developer needs to "torify" every piece of
Internet client software before it can be shipped with the Tails
distribution, and that a failure of a torify step is, by definition, a
Tails vulnerability. (torify is explained on the
https://trac.torproject.org/projects/tor/wiki/doc/TorifyHOWTO page.)
If that's true, then a CVE ID can be provided for the Tails product.

One of the things that happened is that the upstream wget developer
made a change that we would categorize as a
functionality/usability-versus-privacy tradeoff. Specifically,
upstream decided it was better to omit the automatic fallback from
passive to active. As far as we can tell, upstream hasn't announced
this as a "wget vulnerability" -- they just reconsidered the tradeoff.
A reconsidered tradeoff is generally outside the scope of CVE. We
believe that reasonable behavior for wget on Tails is very different
from reasonable behavior for the standard upstream distribution.

Also, references such as
https://bugzilla.suse.com/show_bug.cgi?id=944858#c4 suggest that
there's a concern even without Tor: "An second information leak
scenario is leaking of an internal IP address (e.g. from a private
range) to an external entity when connecting through NAT."

So, some of the options for sets of expectations are:

1. No piece of Internet client software may support any protocol
feature in which the end-client machine's IP address is sent as part
of application data. If any such feature is supported, it is a
vulnerability because someone might try to use that protocol feature
in conjunction with NAT, or Tor, or another type of proxy, and privacy
would be compromised. This would, for example, mean that every FTP
client must either completely rip out support for active mode, or at
least warn the user that it is unsupported and require explicit user
confirmation before proceeding.

2. Internet client software developers are responsible for providing a
privacy-friendly configuration setting in which the end-client
machine's IP address is never sent as part of application data. In the
wget case, maybe this would be a wgetrc line of "passive_ftp = always"
or "active_ftp = off" (i.e., active mode would never be used, either
first or as a fallback).

3. Internet client software developers have a much wider range of
reasonable behavior, although wrong documentation needs to be avoided.
Specifically, NAT users aren't entitled to expect that their IP
address (in a case such as FTP) will remain secret unless a developer
chooses to explicitly document NAT privacy behavior. Tor users aren't
entitled to expect that all of the necessary torify steps have been
done in the upstream distribution. The torify steps are the
responsibility of Tor-oriented products such as the Tor Browser Bundle
(and possibly Tails, if torifying everything is their policy).

(As one of the references mentioned, missing torify steps for wget
aren't a new concept; see the
https://lists.torproject.org/pipermail/tor-talk/2012-April/024040.html
post from 2012.)

Currently, for CVE assignment, options 1 and 2 are more or less false,
and option 3 is more or less true.

If an upstream developer makes a decision to do privacy hardening to
avoid address disclosure, that's great, but regardless of the decision,
there typically won't be a CVE ID assigned to that upstream product.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWBabRAAoJEL54rhJi8gl5PngP/3vNxfQYa3M50eLYPNsMzreo
LN48gBIzf96DwffplTex2BgJRHpXKEdvQvetvjmc3TWb77Dl8J9F9pOfwCKAapCI
7wMoyR2f/WpaDs0RI4NIeGjh4UorLlN5NaRdIOfdvxfGD4rLSJY4wz12AvGvaUh9
Ynk8JlBbx++CSsEF6WCfOYFPSKDzF2c7hYrR2IR7+QPiKo7YSDp7Jy/gp2FuyI4p
GH6T6SrbDHuw9YqtNACzp+TCRGJxuqAeXVhGqNdViiLZurhTl0hHkl4TsRIHwDPn
SmaMnLLx3YbTwkpC1vH9aGTVeKCbXjt7RPDTy1v2dZSUMiljJXca892NkfJOqvXx
piy0afjD9aXNhW1C1nkVlPC0zrCwa4cxxhm1M/T9k+18L1weYixl/pQnlZYAa+OH
Lc5/YQPcpAqHQkk1Kyksl+qFjgmeXkUToPd1jgss6YVuuBnHku3gZjwTn5msM3i/
wN7FRBAB8CQvMCW/7Gkr0uYBfdlTo9o7tuvB5whdTzr2xyXpey0ns7axNX1FaY7b
ut8HonGQryLBZexBdskOLVr0H+ihRjCd7AX/ijUUo5o8mNSAG/s0Y3Uh2W8MGrir
n9p9k/r+aH82u+yoeJuTUT2QpWfJO4nYB6m84d8gl51gQlX2+FrXaRcFXkJkwrUY
g66Lp4JhmaTWTiVpf1yX
=RjXG
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3472" "Friday" "2" "October" "2015" "17:43:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151002214340.090C66C000A@smtpvmsrv1.mitre.org>" "81" "[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)" nil nil nil "10" "2015100221:43:40" "[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)" (number mark "        cve-assign@m Oct  2   81/3472  " thread-indent "\"[oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)\"\n") "<201510021858.31300@pali>" ("<201510021858.31300@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17439 invoked by uid 550); 2 Oct 2015 21:44:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16323 invoked from network); 2 Oct 2015 21:43:51 -0000
In-Reply-To: <201510021858.31300@pali>
Message-Id: <20151002214340.090C66C000A@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri,  2 Oct 2015 17:43:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: DoS attack through Email-Address perl module v1.907 (CVE id request)
To: pali.rohar@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Standard usage of Email::Address module is to parse From/To/Cc headers
> from emails. And standard is also to use that module without setting
> $COMMENT_NEST_LEVEL variable... So because I was thinking about this
> standard usage in other applications I think that one CVE ID could be
> enough.

Thanks for your additional notes. We have decided to choose the option
of a single CVE, although this option is unattractive for some
reasons. Use CVE-2015-7686 for the CWE-407 ("Algorithmic Complexity")
issue in versions 1.908 and earlier. In other words, we consider 1.908
to be an affected version because there are realistic cases in which
COMMENT_NEST_LEVEL must be 2 for usability reasons. There is no CVE ID
corresponding to the behavior change between 1.907 and 1.908.

Looking at the first example from our previous reply:

  jsmit@online.microsoft.com (Jan Smith (MSFT))

has a name field of "Jan Smith" in level 2 but a name field of "jsmit"
in level 1. However,

  jsmit@online.microsoft.com (Jan Smith)

has a name field of "Jan Smith" in both level 2 and level 1. The
documentation for the name instance method says:

  This method tries very hard to determine the name belonging to the
  address. First the "phrase" is checked. If that doesn't work out
  the "comment" is looked into.

The comment field of "(Jan Smith (MSFT))" is a real-life example and
doesn't seem inherently complicated, so we feel that the documented
"tries very hard" behavior is no longer provided if level 1 is used.
As an example, Email::Address->parse might be used only on the "From"
line to support an application that really, really wants to print:

   Dear Jan Smith,
      Thank you for opening a ticket.

instead of

   Dear jsmit,
      Thank you for opening a ticket.

It is, of course, not the CVE project's role to offer advice on
whether to update. In practice, though, if there were a CVE stating
"before 1.908" as the affected versions, then (because 1.908 exists)
many people would update to resolve the CVE. It would fix a
denial-of-service problem for anyone who is actually attacked, but
potentially add a usability problem for a much larger population.

Finally, if anyone is planning to actually fix the CWE-407 issue, note
that the problem might occur only with a list of addresses, as shown
in the address-line attachment in the original CVE request. None of
the four addresses by itself requires much CPU time.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWDvnQAAoJEL54rhJi8gl5HWkP/jTvpIsmvuIp/asS5pTJOXZD
kT5jvSVR76xGWyww4gD85oGzaYgg0mW4JMNmqgRWeK8KeSvhaBo3Q5eKzxL+XjLC
Ykjn9Ho9u+cbG6MBkGFeMW0SOYuN0nqIun7gxAPeYwE44fS2wSRFLDYQydgJahS7
Zqk4FCxSt+aPl4dDsxEaMn2LVr3JbzaRSqbihuzsoKLzjJObC0vAaQDSQgYED6F7
essACn02BiQbfwA7aBP1a8gOpV0J30IdmOsomBsBfqxVwma5GqFSfAnlzMYPM9Ys
/8qV+CZZrkXz42y58YwqolpS8THUtaIsvV2SttmZSGNXuNS0hWqP2tvquV5apvBv
4Wpu4Jx6ouw/3YYncQ5cm+pBjOmK7qYMUVeDlxREZnSxIPQOQ6Jq9womX6OGdEwL
KZV5w3B1U1+82Si6U8Dh0SiJhcumElsg5dvMVAaILDkzA13uEzipci59+oU1G0w2
pdaArJUZ8MvXFPRXGRB2D7GsG3NA0fBT1kttS9jIcsMkaZlHAJDeT9GnhDzWZcIi
SBdR2xi38nOEGHh1uGl7LSNmwrtY+mdkW3o1bEIr9/Ar7ji6c385RnzcTsgza2B3
NP4D5OjARqf4Txh7vpUu1OSohDlJpYjeDTvhu+1wMJaO5aaQf8JKS4owC+JQOJL8
TpZM2oVjUrN/Zbgnmgni
=EqLL
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2540" "Sunday" "1" "May" "2016" "10:02:15" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160501140215.AED64332069@smtpvbsrv1.mitre.org>" "62" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" nil nil nil "5" "2016050114:02:15" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" (number mark "U       cve-assign@m May  1   62/2540  " thread-indent "\"[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation\"\n") "<20160501054304.GA31390@eldamar.local>" ("<20160501054304.GA31390@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13849 invoked by uid 550); 1 May 2016 14:02:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13823 invoked from network); 1 May 2016 14:02:27 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160501054304.GA31390@eldamar.local>
Message-Id: <20160501140215.AED64332069@smtpvbsrv1.mitre.org>
Date: Sun,  1 May 2016 10:02:15 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Due to a programming error, libpam-sshauth returned PAM_SUCCESS where
> it should fail with PAM_AUTH_ERR. This was fixed in Debian in the last
> upload to unstable with the attached patch.
> 
> https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/114

We can assign a CVE ID because it appears that something definitely is
wrong from the Debian perspective, either the code itself or
documentation/lack-of-documentation about how the code was supposed to
be used.

Use CVE-2016-4422.

However, we don't completely understand the issue:

> Introduced with:
> https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/93/src/pam_sshauth.c

Here, the commit message for revision 93 was "Succeed for system
accounts."

We don't know why introducing the undocumented behavior of "Is it a
system user? Fail" would be better than simply not checking
"pwent->pw_uid < UID_MIN" at all. Also, is there any risk that, with
this libpam-sshauth update, a system's PAM configuration might
suddenly provide no way for root to login via SSH?

Is it possible that the original motivation for revision 93 was that
the PAM_SUCCESS from pam_sm_authenticate was supposed to be specially
handled elsewhere in the "pwent->pw_uid < UID_MIN" case?

Although not directly applicable to libpam-sshauth, the examples
section of the
http://www.linux-pam.org/Linux-PAM-html/sag-pam_succeed_if.html man
page shows that a set of rules is sometimes designed with UID_MIN
special cases.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXJgu2AAoJEHb/MwWLVhi2N9QP/ipqCwQfw26d7T8QCUYXXdu9
laDy1/2z/rzShOZ/nKrGNQHk/3opoik7FWDpYPDJbr367uZ8XF2I8KsiUAGAYiBb
3O3scUEvSPgUkj+5x/goeAXiLV5/q8QUg0OHigP0Gfpwv1CKAs6LAlQjt0Qaqxal
A7eghcxIrOLQPnHNEC7DEegEZy/2A+fldzfGYimgHYylznUYnNSPl5iixxH2bj0+
v51pm0dF1SQUXDjkw0TDqu2TVXOAfOcJp/tC6LVDvFLLxHldkK+MvwkG1x3jI+77
U9MbskBP2TYzswJLwkx8shQWg1KKIpbNCjUOF7/58a8uTyGo2YbX24J0jWBRNoMR
OyIrCUm3Ew7sAutg5y/13zaPwGMbKePXJDXxNrINNeASa8zlCsNdC1Q+oKXisYQw
48xPMceP2/0zuRqhBfiXqyOvRXEJWwCglOVC1dvxN1EhDN6Or5GP+alpDH9u2ynM
iLqEsYI6IJ234tJIDWCPjVGB6BngaqBZ+bOPQz0qn6sgu85WFJ++uttfAjKYaKsm
w0UZe6B/hP6dtkIvkfgi3tz61onRXUsalOXgYLdb8hKBWght7rzFgXjGzsbTFn+D
WaKFixcCZCOwSLyEStYJRlM8WNIEZuygzX6tpXaqutt6L6Wi+EqjIZwrWqeT7ZL/
1xxVfqFG6QX6ImFB4QNg
=5EIr
-----END PGP SIGNATURE-----

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4108" "Tuesday" "3" "May" "2016" "11:51:24" "-0700" "Vagrant Cascadian" "vagrant@debian.org" "<87k2jb0yc3.fsf@aikidev.net>" "105" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" "^Cc:" nil nil "5" "2016050318:51:24" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" (number mark "U       vagrant@debi May  3  105/4108  " thread-indent "\"[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation\"\n") "<20160503145713.GA9004@eldamar.local>" ("<20160501054304.GA31390@eldamar.local>" "<20160501140215.AED64332069@smtpvbsrv1.mitre.org>" "<20160503145713.GA9004@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1802 invoked by uid 550); 3 May 2016 18:59:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30156 invoked from network); 3 May 2016 18:51:40 -0000
In-Reply-To: <20160503145713.GA9004@eldamar.local>
References: <20160501054304.GA31390@eldamar.local> <20160501140215.AED64332069@smtpvbsrv1.mitre.org> <20160503145713.GA9004@eldamar.local>
User-Agent: Notmuch/0.18.2 (http://notmuchmail.org) Emacs/24.4.1 (x86_64-pc-linux-gnu)
X-Hashcash: 1:20:160503:cve-assign@mitre.org::6y3ma5gtyLqBnTAP:000000000000000000000000000000000000000001NFk
X-Hashcash: 1:20:160503:oss-security@lists.openwall.com::6mDyhf42Jk1P9qIG:0000000000000000000000000000003De8
X-Hashcash: 1:20:160503:carnil@debian.org::bMMrsXn4bwcxEk82:000000000000000000000000000000000000000000005SPu
Message-ID: <87k2jb0yc3.fsf@aikidev.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: oss-security@lists.openwall.com, sbalneav@ltsp.org
Date: Tue, 03 May 2016 11:51:24 -0700
From: Vagrant Cascadian <vagrant@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation
To: Salvatore Bonaccorso <carnil@debian.org>, cve-assign@mitre.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On 2016-05-03, Salvatore Bonaccorso wrote:
> On Sun, May 01, 2016 at 10:02:15AM -0400, cve-assign@mitre.org wrote:
>> > Due to a programming error, libpam-sshauth returned PAM_SUCCESS where
>> > it should fail with PAM_AUTH_ERR. This was fixed in Debian in the last
>> > upload to unstable with the attached patch.
>> >=20
>> > https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revisi=
on/114
>>=20
>> We can assign a CVE ID because it appears that something definitely is
>> wrong from the Debian perspective, either the code itself or
>> documentation/lack-of-documentation about how the code was supposed to
>> be used.
>>=20
>> Use CVE-2016-4422.
>
> Thanks for assigning the CVE identifier.
>
>>=20
>> However, we don't completely understand the issue:
>>=20
>> > Introduced with:
>> > https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revisi=
on/93/src/pam_sshauth.c
>>=20
>> Here, the commit message for revision 93 was "Succeed for system
>> accounts."
>>=20
>> We don't know why introducing the undocumented behavior of "Is it a
>> system user? Fail" would be better than simply not checking
>> "pwent->pw_uid < UID_MIN" at all. Also, is there any risk that, with
>> this libpam-sshauth update, a system's PAM configuration might
>> suddenly provide no way for root to login via SSH?
>>=20
>> Is it possible that the original motivation for revision 93 was that
>> the PAM_SUCCESS from pam_sm_authenticate was supposed to be specially
>> handled elsewhere in the "pwent->pw_uid < UID_MIN" case?
>>=20
>> Although not directly applicable to libpam-sshauth, the examples
>> section of the
>> http://www.linux-pam.org/Linux-PAM-html/sag-pam_succeed_if.html man
>> page shows that a set of rules is sometimes designed with UID_MIN
>> special cases.
>
> It might be right that revision 93 cannot be considred the introducing
> revision for the problem. By following the example as given in the
> README.
>
> https://sources.debian.net/src/libpam-sshauth/0.3.1-1/README/#L75
>
> $ cat /etc/pam.d/testservice=20
> auth    required        pam_sshauth.so host=3D127.0.0.1 nostrict # or whe=
rever
> auth    required        pam_exec.so expose_authtok /usr/bin/ltsp-session
> session required        pam_exec.so /usr/bin/ltsp-session
> $ pamtester -v testservice root authenticate open_session close_session
> pamtester: invoking pam_start(testservice, root, ...)
> pamtester: performing operation - authenticate
> Password: <anypassword>
> pamtester: successfully authenticated
> pamtester: performing operation - open_session
> pamtester: successfully opened a session
> pamtester: performing operation - close_session
> pamtester: session has successfully been closed.
>
> I want though to add the Debian maintainer for libpam-sshauth to more
> accurately answer the raised questions, Vagrant Cascadian
> <vagrant@debian.org>.=20

Also bringing the primary upstream developer, Scott Balneaves
<sbalneav@ltsp.org> into the conversation, who has better understanding
of the code.

For this issue, I've largely just discovered it and made some small
effort to backport the patch.


live well,
  vagrant

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXKPMtAAoJELeLgtSBS5G2jMwQAJU/cRv3/r4qmAiQtxMymxJb
OsCMdBLIAyA+CQ7d2vWfQSi10qs/UrisE7xvYCeGDeQExf/IURwgClFj/DQojtWT
QSCQO8Jb37c0up0nA6dgwJs0WcU7TnH4XaXa9D7LbKQgin02l5xX7zQymFarieak
4apN5ArwjfltKIztkKJrbEr83MPFWi+uqYf+MuNokoIVfve8fCWvOsGPWVQ9Jf6d
odwcQI9TDuEbORe9H5wPCHN4wbbAtiEzfk9CkYhR9xuG3Clz/XK3ixlLHCcLaP5X
4tt90xhCYL1dMc81V/XJQc4GVotlM5igkoLHFn9OIANSJTd/1lr4F88Rk7SfjwQ3
/qrxUef6konR+JMVibxxh6x04tihJiGc8I3TaCyID5KA6daur4qBk5UfV/7w6czV
+70h9LpdTAJFd20lawsTY/8Wq+FVYsaBzupEFOlLG6uAXAkoWUlb8IvBeaazceVy
I9wuMiSNEFbbzdHNIIkKSq/tr1RiJ8ntUCWLdEhA8eCeYmPmNvzlc1lp28q+pErf
7RTwBsgu1Xk/zejD/aoSUwk2H0etrA/dNgtbOZryWJ5QYKYz4WKqrlOquqQXdxdf
9Mw3ahmwn7LjGEdjc0+b8QDPof9KxQWPxIkagV2v9sYQ436QfNZySHn/pH+sNiIK
K71h7B5y5yc6BDb26UYr
=kkgN
-----END PGP SIGNATURE-----
--=-=-=--

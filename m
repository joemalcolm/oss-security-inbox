X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4957" "Friday" "4" "September" "2015" "02:42:20" "+0800" "Kuang-che Wu" "kcwu@csie.org" "<20150903184220.GB99086@kcwu.csie.org>" "111" "Re: [oss-security] CVE request: screen stack overflow (deep recursion)" nil nil nil "9" "2015090318:42:20" "[oss-security] CVE request: screen stack overflow (deep recursion)" (number mark "        kcwu@csie.or Sep  4  111/4957  " thread-indent "\"Re: [oss-security] CVE request: screen stack overflow (deep recursion)\"\n") "<20150903111634.GA2642@openwall.com>" ("<87vbbusojr.fsf@mid.deneb.enyo.de>" "<20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org>" "<2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>" "<20150903063629.GA29383@openwall.com>" "<20150903111634.GA2642@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15533 invoked by uid 550); 3 Sep 2015 19:20:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11766 invoked from network); 3 Sep 2015 18:42:36 -0000
Message-ID: <20150903184220.GB99086@kcwu.csie.org>
References: <87vbbusojr.fsf@mid.deneb.enyo.de>
 <20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org>
 <2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>
 <20150903063629.GA29383@openwall.com>
 <20150903111634.GA2642@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline
In-Reply-To: <20150903111634.GA2642@openwall.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Fri, 4 Sep 2015 02:42:20 +0800
From: Kuang-che Wu <kcwu@csie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: screen stack overflow (deep
 recursion)
To: oss-security@lists.openwall.com

--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 03, 2015 at 02:16:34PM +0300, Solar Designer wrote:
> On Thu, Sep 03, 2015 at 09:36:29AM +0300, Solar Designer wrote:
> > On Thu, Sep 03, 2015 at 05:25:11AM +0000, Fiedler Roman wrote:
> > > What about "tail -f /var/log/syslog", Apache or other kind of logs for
> > > debugging? [Yes, that's often how logs are running over the screen in=
 videos
> > > when talking about IT-security]. It's convenient and I'm using screen
> > > exactly to avoid any injection of commands via TIOCSTI into my curren=
t TTY
> > > when a context switch is needed before starting tail, e.g. when worki=
ng with
> > > LXC containers.
> >=20
> > "tail -f" on a log file is indeed very common, but it is bad practice
> > (akin to other very common bad practices like a sysadmin going into a
> > user's homedir as root).  A safer alternative in terms of terminal
> > escapes is the "F" keypress in "less -nU" (or in "less -nUEX" to more
> > closely resemble "tail -f").  Unfortunately, I am not aware of a
> > command-line option that would do this (that is, assume that "F" was
> > pressed right away) - perhaps one should be added, if it's not already
> > in there.
>=20
> Dmitry V. Levin pointed out to me off-list that less already provides a
> way to specify its normally interactive commands on the command line.
> The man page says:
>=20
>        +cmd   Causes the specified cmd to be executed each time a new fil=
e  is
>               examined.  For example, +G causes less to initially display=
 each
>               file starting at the end rather than the beginning.
>=20
> and indeed e.g. "less -nUEX +F" works as desired.
>=20

Reading log is just one example that termainal control sequence
exposure. It's diffcult to remember do everything with | less.
Untrusted text output is hidden everywhere unexpectedly.

1. If for some reason, you need to run untrusted code. No matter you use
what kind of container, sandbox, VM, or even dedicated physical machine, you
probably still use terminal to interact with it.=20

2. Even with trusted code, I have verified following mentioned programs
would output terminal control code as-is unescaped. (on ubuntu)

a. If you need to deal with untrusted data using trusted programs.
- use gcc to compile untrusted code, it will show lines for warnings
- git log, git diff on untrusted code. If the output is short, git won't
  invoke pager.
- use zipnote(1) to read comments in zip file.

b. If there is an untrusted user on your machine, he may=20
create files with malicious name.
$ touch $(echo -e '\e[1;33mhello\e[m\e[10000000T')
- du(1) and locate(1) would output that name as-is.
- If you, as root, want to check other users' crontab.=20
  "crontab -l -u user" wound not escape control code, too.
- If the user can use lp(1) to send print job to printer,
$ echo test | lp -t '^[[1;33mhello^[[m^[[10000000T' -H hold
-t to set job name, and hold the print job.
Administrator may use lpq(1) to list print job.

c. I haven't tried, but I guess ping, dig, nslookup, whois, ftp, etc.
may not escape output.

BTW, here are summary what I found when fuzzing terminal emulaters.
- libteken: assertion fail, which lead to FreeBSD kernel panic. [1][2][3]
- mosh: assertion fail [4], lead to mosh-server DoS.
- tmux: double free, or invalid argument to free/malloc/realloc [5]
  I guess there are no RCE with glibc's malloc heap protection, no sure.
- screen: stack overflow[6], and many others
- rxvt-unicode: out of bound read [7], and many others


[1] https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D202326
[2] https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D202540
[3] https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=3D202612
[4] https://github.com/mobile-shell/mosh/issues/667
[5] https://github.com/tmux/tmux/commit/3219e0314e3d1d39a57db330faa5693ce02=
64244
[6] https://savannah.gnu.org/bugs/?45713
[7] http://lists.schmorp.de/pipermail/rxvt-unicode/2015q3/002155.html

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJV6JSMAAoJEG1XW8ld0mmX0ZgP/0wELZCRw7pvGWturtn3gpgD
yfzV/oDTP/n9U3OeVt/ZJ0pVfZoG/Qi9Dt7hIk2UArQAGQG4htEOAOOUdGnR/kxE
JLIzkx3MWWhZdPvaacPIUNXh0Ob20RWLmo7wbnG00hEA2esYZF4rTg7vTzXHzMnQ
0v0PoIFhpXdi5aTg1+wXK8VY0E0Z8XB3l6Bu/PEJWusJP4sWZz/QrX8RgoirOAXx
d6ZTQcgpD/famQN69zEn/YolB5Xsp97pOUOytCJO3gcGCFdmYbrepsYLqGsOe2Mi
ehKwmn9ZcFiq1uVAEUvgksjGRIkLLTosFtwDiRqTDhAR//alB4NNaaZqf/pkkFem
Ib2495QXoKE3aruYlEKVqhXG8RYLZ7W2abIBQuUe0qUpelYnb6twOdYHvE9ltyGE
alnln9fOHwma4aD95dIcqWLf8BD9KDxmoLFsPAEBLavWvE0ve79N2zMyGyqh6QBr
gQobJerpXe30mBoUCOL/ggPayzd/9+mjqZ09InYFHWT5NxyfvF2MNBq25nDmld5i
mnnnwSSahET65CqXdEMUCK5iGN+/2xOmrlTufaAnr2rRPVhe8QMPFo60jpso15A4
tvwZuoJB9x5bpXN++aaL7qeScdDBasn+3i2653mFA3RYsvaKcZAeDDmjUO14h4Ie
cNXHizBr3LyUBoml+uMA
=rpf0
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--

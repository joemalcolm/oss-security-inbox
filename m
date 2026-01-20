Received: (qmail 18179 invoked by uid 550); 20 Jan 2026 15:33:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13810 invoked from network); 20 Jan 2026 14:00:17 -0000
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=ed2303; h=Content-Type:MIME-Version:Message-ID:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=HrLd1dDOYE+YvlouA5kuZxIZiOXHAMD05Pt8LYQnAqE=;
	t=1768917605; x=1770127205; b=Z3mdnlYW4E6OnSfSynXFg+wKR83s9WFCQu9nyTjCfcQRqyG
	uCG5eDLs31DB+LhaLilnYsBtzLrzUhCg4TVEWBg==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=josefsson.org; s=rsa2303; h=Content-Type:MIME-Version:Message-ID:Date:
	Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=HrLd1dDOYE+YvlouA5kuZxIZiOXHAMD05Pt8LYQnAqE=;
	t=1768917605; x=1770127205; b=ibq57EJr6NUorGXpqItjjwlvFR9AQwhpzkHoSlLaIaZwa5C
	cHniLjVe4dBR1l3gX5cYNKRugsx7inzpaMkCFKgWXsH4CjDtrlInKppXw5nDt3baIgWdX1HiR1vBR
	UAbmT47KVzXU/1qAEjiODrFQFJTnKacLXjz7rLJ9Zln3ee0JiDyqQL9nmBO/UlzcVCHt5KUxqqZNC
	ErzPWtq0/R+t9RK6XCdKUhw2Pthy94scSNEB3Nfy5rB/QM8zd3JqsAzqQHuu0Lct7AHjiBaietYY1
	lfCFaAgfBtOJ7TSDGX3oO2elMSiwNhJBubRALZpLpKJJd9W6/jzjbDsnMmTi3yFT4utNTlMDJM5fl
	BuWoGdn7FVgn921a5POBbXQGdyRgDNUX7vVVIG9t+hfXozHf505265c9TungZ6jUGnd2E05jYStj7
	GF74m/xjQi5QEcLL3pmsE87l;
From: Simon Josefsson <simon@josefsson.org>
To: oss-security@lists.openwall.com
OpenPGP: id=B1D2BD1375BECB784CF4F8C4D73CF638C53C06BE;
 url=https://josefsson.org/key-20190320.txt
X-Hashcash: 1:23:260120:oss-security@lists.openwall.com::3gJpEAyC9ZGG8LQb:8WsE
Date: Tue, 20 Jan 2026 15:00:07 +0100
Message-ID: <87h5sg9yfs.fsf@josefsson.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] GNU InetUtils Security Advisory: remote authentication by-pass in
 telnetd

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

If you are tired of modern age vulnerabilities, and remember the good
old times on bugtraq, I hope you will appreciate this one.  If someone
can allocated a CVE, we will add it in future release notes.

/Simon

# GNU InetUtils Security Advisory: remote authentication by-pass in telnetd

The telnetd server invokes /usr/bin/login (normally running as root)
passing the value of the USER environment variable received from the
client as the last parameter.

If the client supply a carefully crafted USER environment value being
the string "-f root", and passes the telnet(1) -a or --login parameter
to send this USER environment to the server, the client will be
automatically logged in as root bypassing normal authentication
processes.

This happens because the telnetd server do not sanitize the USER
environment variable before passing it on to login(1), and login(1)
uses the -f parameter to by-pass normal authentication.

Severity: High

Vulnerable versions: GNU InetUtils since version 1.9.3 up to and
including version 2.7.

## Example

On a Trisquel GNU/Linux 11 aramo laptop:

root@kaka:~ sudo apt-get install inetutils-telnetd telnet
root@kaka:~ sudo sed -i 's/#<off># telnet/telnet/' /etc/inetd.conf=20
root@kaka:~ sudo /etc/init.d/inetutils-inetd start
root@kaka:~ USER=3D'-f root' telnet -a localhost
...
root@kaka:~#=20

## History

The bug was introduced in the following commit made on 2015 March 19:

https://codeberg.org/inetutils/inetutils/commit/fa3245ac8c288b87139a0da8249=
d0a408c4dfb87

Based on mailing list discussions:

https://lists.gnu.org/archive/html/bug-inetutils/2014-12/msg00012.html
https://lists.gnu.org/archive/html/bug-inetutils/2015-03/msg00001.html

It was included in the v1.9.3 release made on 2015 May 12.

## Recommendation

Do not run a telnetd server at all.  Restrict network access to the
telnet port to trusted clients.

Apply the patch or upgrade to a newer release which incorporate the
patch.

## Workaround

Disable telnetd server or make the InetUtils telnetd use a custom
login(1) tool that does not permit use of the '-f' parameter.

## Further research

The template for invoking login(1) is in telnetd/telnetd.c:

```
/* Template command line for invoking login program.  */
char *login_invocation =3D
#ifdef SOLARIS10
  /* TODO: `-s telnet' or `-s ktelnet'.
   *       `-u' takes the Kerberos principal name
   *       of the authenticating, remote user.
   */
  PATH_LOGIN " -p -h %h %?T{-t %T} -d %L %?u{-u %u}{%U}"
#elif defined SOLARIS
  /* At least for SunOS 5.8.  */
  PATH_LOGIN " -h %h %?T{%T} %?u{-- %u}{%U}"
#else /* !SOLARIS */
  PATH_LOGIN " -p -h %h %?u{-f %u}{%U}"
#endif
  ;
```

The variable expansion happens in telnetd/utility.c:

```
/* Expand a variable referenced by its short one-symbol name.
   Input: exp->cp points to the variable name.
   FIXME: not implemented */
char *
_var_short_name (struct line_expander *exp)
{
  char *q;
  char timebuf[64];
  time_t t;
  switch (*exp->cp++)
    {
    case 'a':
#ifdef AUTHENTICATION
      if (auth_level >=3D 0 && autologin =3D=3D AUTH_VALID)
	return xstrdup ("ok");
#endif
      return NULL;
    case 'd':
      time (&t);
      strftime (timebuf, sizeof (timebuf),
		"%l:%M%p on %A, %d %B %Y", localtime (&t));
      return xstrdup (timebuf);
    case 'h':
      return xstrdup (remote_hostname);
    case 'l':
      return xstrdup (local_hostname);
    case 'L':
      return xstrdup (line);
    case 't':
      q =3D strchr (line + 1, '/');
      if (q)
	q++;
      else
	q =3D line;
      return xstrdup (q);
    case 'T':
      return terminaltype ? xstrdup (terminaltype) : NULL;
    case 'u':
      return user_name ? xstrdup (user_name) : NULL;
    case 'U':
      return getenv ("USER") ? xstrdup (getenv ("USER")) : xstrdup ("");
    default:
      exp->state =3D EXP_STATE_ERROR;
      return NULL;
    }
}
```

Thus there is potential for similar vulnerabilities for other
variables.

On non-GNU/Linux systems, only the remote hostname field is of
interest.  The `remote_hostname` variable is populated in the function
`telnetd_setup` from telnetd/telnetd.c by calling getnameinfo() or
gethostbyaddr() depending on platform.  This API is generally not
considered to return trusted data, thus relying on it to not return a
value such as 'foo -f root' is not advisable.

## Patch

We chose to sanitize all variables for expansion.  The following two
patches are what we suggest:

https://codeberg.org/inetutils/inetutils/commit/fd702c02497b2f398e739e3119b=
ed0b23dd7aa7b
https://codeberg.org/inetutils/inetutils/commit/ccba9f748aa8d50a38d7748e2e6=
0362edd6a32cc

## Credits

This vulnerability was found and reported by Kyu Neushwaistein aka
Carlos Cortes Alvarez on 2026-01-19.

Initial patch by Paul Eggert on 2026-01-20.  Simon Josefsson improved
the patch to also cover similar concerns with other expansions.

This advisory was drafted by Simon Josefsson on 2026-01-20.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQNoBAEWCgMQFiEEo8ychwudMQq61M8vUXIrCP5HRaIFAmlvimcUHHNpbW9uQGpv
c2Vmc3Nvbi5vcmfCHCYAmDMEXJLOtBYJKwYBBAHaRw8BAQdACIcrZIvhrxDBkK9f
V+QlTmXxo2naObDuGtw58YaxlOu0JVNpbW9uIEpvc2Vmc3NvbiA8c2ltb25Aam9z
ZWZzc29uLm9yZz6IlgQTFggAPgIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgBYh
BLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XQkBQkNZGbwAAoJENc89jjFPAa+BtIA
/iR73CfBurG9y8pASh3cbGOMHpDZfMAtosu6jbpO69GHAP4p7l57d+iVty2VQMsx
+3TCSAvZkpr4P/FuTzZ8JZe8BrgzBFySz4EWCSsGAQQB2kcPAQEHQOxTCIOaeXAx
I2hIX4HK9bQTpNVei708oNr1Klm8qCGKiPUEGBYIACYCGwIWIQSx0r0Tdb7LeEz0
+MTXPPY4xTwGvgUCZ9F0SgUJDWRmSQCBdiAEGRYIAB0WIQSjzJyHC50xCrrUzy9R
cisI/kdFogUCXJLPgQAKCRBRcisI/kdFoqdMAQCgH45aseZgIrwKOvUOA9QfsmeE
8GZHYNuFHmM9FEQS6AD6A4x5aYvoY6lo98pgtw2HPDhmcCXFItjXCrV4A0GmJA4J
ENc89jjFPAa+wUUBAO64fbZek6FPlRK0DrlWsrjCXuLi6PUxyzCAY6lG2nhUAQC6
qobB9mkZlZ0qihy1x4JRtflqFcqqT9n7iUZkCDIiDbg4BFySz2oSCisGAQQBl1UB
BQEBB0AxlRumDW6nZY7A+VCfek9VpEx6PJmdJyYPt3lNHMd6HAMBCAeIfgQYFggA
JgIbDBYhBLHSvRN1vst4TPT4xNc89jjFPAa+BQJn0XTSBQkNZGboAAoJENc89jjF
PAa+0M0BAPPRq73kLnHYNDMniVBOzUdi2XeF32idjEWWfjvyIJUOAP4wZ+ALxIeh
is3Uw2BzGZE6ttXQ2Q+DeCJO3TPpIqaXDAAKCRBRcisI/kdForC7AQDeP1rJHJBe
XKTO7Up/aepxs1poC30Vskra9CNTAAXS1wEA30G25WuoDCd+53xqo+mpwVaUzyVC
JL+VWV5bpt92dQ4=
=UsRQ
-----END PGP SIGNATURE-----
--=-=-=--

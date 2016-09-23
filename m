X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3211" "Friday" "23" "September" "2016" "14:35:41" "+0200" "Thomas Deutschmann" "whissi@gentoo.org" "<9cfba660-64cf-c287-2be2-2545c46afac3@gentoo.org>" "93" "[oss-security] CVEs for vulnerabilities listed in MySQL 5.6.33 release note" nil nil nil "9" "2016092312:35:41" "[oss-security] CVEs for vulnerabilities listed in MySQL 5.6.33 release note" (number mark "U       whissi@gento Sep 23   93/3211  " thread-indent "\"[oss-security] CVEs for vulnerabilities listed in MySQL 5.6.33 release note\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10239 invoked by uid 550); 23 Sep 2016 12:42:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7809 invoked from network); 23 Sep 2016 12:36:11 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Thomas Deutschmann <whissi@gentoo.org>
Message-ID: <9cfba660-64cf-c287-2be2-2545c46afac3@gentoo.org>
Date: Fri, 23 Sep 2016 14:35:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lvdD2JdGUfXwoNxCLtDbc2g7sVh3Wkd9C"
Subject: [oss-security] CVEs for vulnerabilities listed in MySQL 5.6.33 release note

--lvdD2JdGUfXwoNxCLtDbc2g7sVh3Wkd9C
Content-Type: multipart/mixed; boundary="2LPWeOopMFJKN3tch6Np1nLu5gbnAN40r";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <9cfba660-64cf-c287-2be2-2545c46afac3@gentoo.org>
Subject: CVEs for vulnerabilities listed in MySQL 5.6.33 release note

--2LPWeOopMFJKN3tch6Np1nLu5gbnAN40r
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

the MySQL 5.6.33 changelog [1] lists multiple fixed vulnerabilities but
I can't find CVEs for all of these problems. Am I missing something? If
not, could you please assign CVEs which would help tracking the status
of these problems in MariaDB and Percona-Server (see Percona's latest
release notes for their 5.6.32-based fork [2] which seems to address
vulnerabilities listed in 5.6.33):

> For mysqld_safe, the argument to --malloc-lib now must be one of the
>  directories /usr/lib, /usr/lib64, /usr/lib/i386-linux-gnu, or=20
> /usr/lib/x86_64-linux-gnu. In addition, the --mysqld and=20
> --mysqld-version options can be used only on the command line and not
> in an option file. (Bug #24464380)

This one seems to be related to CVE-2016-6662 but one could argue this
deserve its one CVE.


> It was possible to write log files ending with .ini or .cnf that=20
> later could be parsed as option files. The general query log and
> slow query log can no longer be written to a file ending with .ini
> or .cnf. (Bug #24388753)

This is CVE-2016-6662.


> Privilege escalation was possible by exploiting the way REPAIR TABLE
> used temporary files. (Bug #24388746)

This one seems to be without a CVE (I guess this isn't CVE-2016-6663).


Thanks!



See also:
=3D=3D=3D=3D=3D=3D=3D=3D=3D
[1] https://dev.mysql.com/doc/relnotes/mysql/5.6/en/news-5-6-33.html

[2]
https://www.percona.com/blog/2016/09/21/percona-server-5-6-32-78-1-is-now-a=
vailable/


--=20
Regards,
Thomas



--2LPWeOopMFJKN3tch6Np1nLu5gbnAN40r--

--lvdD2JdGUfXwoNxCLtDbc2g7sVh3Wkd9C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJX5SGhXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/IFJ8P/RG47twiC4yekUWMMFCgHPRX
vKXNyELpr9taHWYSTTt51g/l6cPPkjuIc7KCNpCZQxm7ATJGewojRRFOF3NlBB5Z
6mXN0IgCcBXzloZiEQJ3pWjmPd1Xo3a1KbUP3Qa3AScRhKdDzrN5UMoBMRnruFHn
FEjvdFNGBQhi8ZZNRiOzPRoj0IwLbjF2YXyclPpP35hI6L0VmbLxOEBvDnn2XoKk
2wsly2c5N3qOjpkUJpgU+hwpmNR8PmN1GXhAQYQqCYjb7t8EKhUY4fD7VDCEUw02
a+tmX+BrO1uQw3/gwE5SZFl9tu+Yv8xPvp9G3Lu5lPnt1iRxy6aAQ2WO4UH7H8ZD
cR1m8E2s4VDhZkaVfGeqf1Rt0SCerVuQKsKYxnBx3w/w2GXBjPxlRwKNfXfzOtsm
qQfNd3JEFnR4rFcJnzjUvum41W65e6L4hXshr+WwPUMnfJn+eFHWY0VAq628/C5c
nVidk9y+lyjyTlT8UxBtdXl5JI/pVJK48neWOswEb7h7SNBdS9j6KVicHse+LX+B
OKsVfY8yP8wmX9j3hV42RrMk6omRh0/aB3i+BE8zLpSyYWX6r/TsNBbgJ1DZ0zgS
zf+elKt9+Uy/htAizQvuK0TVQfEt0dTw9lbEbGMO9ctcY1VKCjDbZOXdAdoJlQMh
0W7DL7J1RTilP/GPutrb
=xvR8
-----END PGP SIGNATURE-----

--lvdD2JdGUfXwoNxCLtDbc2g7sVh3Wkd9C--

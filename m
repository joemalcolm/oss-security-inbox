X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2296" "Monday" "18" "April" "2016" "11:11:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160418151135.DC4656C08A9@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users" nil nil nil "4" "2016041815:11:35" "[oss-security] Re: CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users" (number mark "U       cve-assign@m Apr 18   52/2296  " thread-indent "\"[oss-security] Re: CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users\"\n") "<1850328.TsBv7S8R4o@ohm.usersys.redhat.com>" ("<1850328.TsBv7S8R4o@ohm.usersys.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17563 invoked by uid 550); 18 Apr 2016 15:11:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17545 invoked from network); 18 Apr 2016 15:11:48 -0000
From: cve-assign@mitre.org
To: rbarlow@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1850328.TsBv7S8R4o@ohm.usersys.redhat.com>
Message-Id: <20160418151135.DC4656C08A9@smtpvmsrv1.mitre.org>
Date: Mon, 18 Apr 2016 11:11:35 -0400 (EDT)
Subject: [oss-security] Re: CVE request - Pulp < 2.3.0 shipped the same authentication CA key/cert to all users

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/pulp/pulp/pull/627
> https://bugzilla.redhat.com/show_bug.cgi?id=1003326

> I learned during our refactor this weekend that we have ca.{crt,key}
> files in our git repository that our RPM packages and installs on
> every Pulp installation. This is very bad.
> 
> To make matters worse, there is only a tiny paragraph in our docs that
> mention quite casually that you should make your own SSL certificates.
> This is putting our users at risk, particularly ones who don't know
> the full depths of our use of CA certificates. This is particularly
> bad due to the understated nature of the documentation telling users
> that they can change the CA if they want to.
> 
> A very easy solution would be to have the %post% section of our spec
> file autogenerate a new CA certificate and key when the package is
> installed. This has the benefit of still making it easy to install
> Pulp for newcomers, while also not putting those users at risk to man
> in the middle attacks.

Use CVE-2013-7450.

(We're interpreting this as a request from the Pulp upstream vendor.
In general, it would be hard for a third party to determine whether a
"tiny paragraph" was generally recognized as a required part of the
installation process.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXFPhHAAoJEHb/MwWLVhi207MP/3/VQ1gkERwBsXA06wuvGKLs
+yj8bThKbQoRfcoMaUJZi36ep1JZS0hQrPptujqpmhbZS5yFCDEivgq8aTtkdZpy
7566asH0nm4smGReWHUpMHwWHLCUWwx3Sfdq66ETvE+ubXA2iCm/sw4QQjsN0t49
HxUsBjPIEEGlngAs9Vxt9/c/ufAzqgr5BdTTDJ5202mvKI/b9YLLqIw5QT0Ni44G
FcYXFseLI6Amuj04YXkwvMCyYVzRdfvsaIwmhtRlKj+lWnahHC084Ng9Bs2ztpbO
j3Sfp0UWUWVbyudgTqi56hBNEmkqf40cvgfGBnD6lTyfBohbKsVAu5325rWdfc7+
80UEqstAPECVtsER0Nqp7JBddXyAtaosjuCqWTx86txH4twYuq4m5k8mL+sRrVwB
7O5uOm7BkC/5KuFOl5M3UvYn17AhMF7BSh6/lQFJZKK31oS9D2cYXdlwKsgWyKh3
PeH1yTUrFvwLvFve1HcKPEwgl3vU5ZDHHZGBdXaEC9PB9ZtjMlOxPyjKQOjbTmU3
gLuDYymW+KFwJqPGRfGKXRYQSjY5r3DsZU339qZ3Uw9O8QJc6XvZWczNpoej0SKX
CLzHyrn6rFo8WGa1/a6uWtMssnEVGBVCZ0L8RyoAc5pCLOeOcGjDJjVJCZsdxgcF
mit5sStdITcfq/DGsFwU
=jmq0
-----END PGP SIGNATURE-----

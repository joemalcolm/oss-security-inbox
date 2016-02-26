X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1327" "Friday" "26" "February" "2016" "02:05:45" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160226070545.6416DABC030@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: pkexec tty hijacking via TIOCSTI ioctl" nil nil nil "2" "2016022607:05:45" "[oss-security] Re: CVE Request: pkexec tty hijacking via TIOCSTI ioctl" (number mark "U       cve-assign@m Feb 26   35/1327  " thread-indent "\"[oss-security] Re: CVE Request: pkexec tty hijacking via TIOCSTI ioctl\"\n") "<20160225121511.17881tlkjezvzolc@webmail.alunos.dcc.fc.up.pt>" ("<20160225121511.17881tlkjezvzolc@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13538 invoked by uid 550); 26 Feb 2016 07:05:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13520 invoked from network); 26 Feb 2016 07:05:56 -0000
From: cve-assign@mitre.org
To: up201407890@alunos.dcc.fc.up.pt
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160225121511.17881tlkjezvzolc@webmail.alunos.dcc.fc.up.pt>
Message-Id: <20160226070545.6416DABC030@smtpvmsrv1.mitre.org>
Date: Fri, 26 Feb 2016 02:05:45 -0500 (EST)
Subject: [oss-security] Re: CVE Request: pkexec tty hijacking via TIOCSTI ioctl

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When executing a program via "pkexec --user nonpriv program" the
> nonpriv session can
> escape to the parent session by using the TIOCSTI ioctl to push
> characters into the
> terminal's input buffer

> https://bugzilla.redhat.com/show_bug.cgi?id=1300746

Use CVE-2016-2568.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWz+EkAAoJEL54rhJi8gl5pE4QAJm2/2l0HyDMz50E1G/f7ZSB
2VdigMvP/55H7rk6x6y8S6DJdU87qlZR5tnozh9Ay52k9z0Rt7K4lozsOno+z+oV
c+yXObgNK8J6BwfaKP8lsCxPVorhdXI98NRS/j2poT91nOjmxmff0TcKN3MHpn6x
HZ4OxDAkm5B9hl43Ue32xPrMilbG/Ch1yblKJDTUA3vlIY+txhORBr2ZDXYTBdu1
i0tKjUC6hRub1Yu79SHuwtc0aFdggY7ZbzpAyOeOSHcz7EczWZd4dN4oD33a3xbt
DdXsLl6VQ2QKOm2AVbgTwcq13L4g9rOcpRN2o1zuGpbYn9e4ebvLeqbBPO4hlpW8
FxCdOpbOPsU4oikwf/EPNUPGQVEV2DPszIDp5/y31NUQb5DEz8sGUEA7lti2Na2w
Y+/AnnR1oeMSXsK42Pyfak7WVaGJfllSJ1LKJHxD4XoGVjMMZlWpWYtwrm5reu9v
IxVpYa+lwdmyzbWu9+w+y/wHEnvzq4vrVpyDXHk2833EtXsqDssvRjKn0NNy7BSN
o3XAC0Goj3j1ld0e6AefkHn9GioODWXuSoZr3tvy7GNMLl52/huLCOdBYxTvCpoE
oQDuhvcwRGRijclxOCmZ5mlnCGvB/u0o7bq+gxj1E757iY5NSoXMQGK3CFUlz56K
rHWOpmcUoiZd/kWV8hTY
=1vcI
-----END PGP SIGNATURE-----

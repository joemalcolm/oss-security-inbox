X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1702" "Thursday" "22" "October" "2015" "14:06:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151022180601.E5FB58BC011@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: Crafted xml causes out of bound memory access - Libxml2" nil nil nil "10" "2015102218:06:01" "[oss-security] Re: Crafted xml causes out of bound memory access - Libxml2" (number mark "U       cve-assign@m Oct 22   39/1702  " thread-indent "\"[oss-security] Re: Crafted xml causes out of bound memory access - Libxml2\"\n") "<CAJUzAGZj=vbVsWJZptC7jEjpUN54qgSiCsL56vQOJ=EMq6574A@mail.gmail.com>" ("<CAJUzAGZj=vbVsWJZptC7jEjpUN54qgSiCsL56vQOJ=EMq6574A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32076 invoked by uid 550); 22 Oct 2015 18:06:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32051 invoked from network); 22 Oct 2015 18:06:14 -0000
From: cve-assign@mitre.org
To: ya1gaurav@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, veillard@redhat.com
In-Reply-To: <CAJUzAGZj=vbVsWJZptC7jEjpUN54qgSiCsL56vQOJ=EMq6574A@mail.gmail.com>
Message-Id: <20151022180601.E5FB58BC011@smtpvmsrv1.mitre.org>
Date: Thu, 22 Oct 2015 14:06:01 -0400 (EDT)
Subject: [oss-security] Re: Crafted xml causes out of bound memory access - Libxml2

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugzilla.gnome.org/show_bug.cgi?id=744980
> https://git.gnome.org/browse/libxml2/commit/?id=a7dfab7411cbf545f359dd3157e5df1eb0e7ce31
> https://git.gnome.org/browse/libxml2/commit/?id=9b8512337d14c8ddf662fcb98b0135f225a1c489

Use CVE-2015-7941 for the discussion in 744980 up to and including
https://bugzilla.gnome.org/show_bug.cgi?id=744980#c7 (this includes
a7dfab7411cbf545f359dd3157e5df1eb0e7ce31 and
9b8512337d14c8ddf662fcb98b0135f225a1c489).

Use CVE-2015-7942 for
https://bugzilla.gnome.org/show_bug.cgi?id=744980#c8 and
https://bugzilla.gnome.org/show_bug.cgi?id=756456#c0 (i.e., the
finding by a different person, Kostya Serebryany).

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWKSUjAAoJEL54rhJi8gl58XQP/RXrnErqOvcw9ElDbKhsp0h/
Mak8M9kVw/KFUkTCm5KLSwm5pO0Lgze0ZE7B5OxYtu1ngv0omFFuYuWMNRS3RjPE
quzdCp6lCkHqt28xTlX2wRhcXTYfcmP/JkHX8e2EYwOPoBQeGqa5jCvygPqxtKNf
Af8uydmrduY9Q/WE6MoaA5OAg9HEb+XEYbR/ErTA/K+OxERq61T0FwdNp4Vew3NH
pdCkav5zKzJ4IVJoFTQK1+NskrfePqa+GgyKsXz3aDIf4QLIrySzeT5ez/92TNx8
HU9BaNz+nF7r9LjnQhCpvBnzkYdlBhn3nbC0FtcjRIZpelcxSagphQ9G7McyP/v/
KCxCMalxdTq5iUP+7KqFUqQXYdVJrO16UrEMbx+m48C3uHMMnmlGsPHKvIoKUKzQ
OLLZ0jfAykCuCCuCP9gjIP8d8GZDYAHCkJJJKzaW2LlWOUxOu6oxUZ4PhXmawx4w
w6wQOifqCXXAFKjds22UmdZYChS7hWt/IUhlPUX72iNCPZZYjJ40MqBfCOWWrV1L
hLCHI3p9jxIWAKr4/BDjQ5sZ2qg5wVmLSn4y92RNCCEegN8ql6BXAJGAsQ0vmj4X
5HC/wjwYd9rdtTuPaCbknjcyy4pnSGzL79gEq3DBGINgbf7HkOSrGGZ6fEz5mnRS
jRpHVm+5t4HWLzt3fX/z
=UQwo
-----END PGP SIGNATURE-----

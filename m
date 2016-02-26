X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1973" "Friday" "26" "February" "2016" "11:28:25" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160226162825.48EF752E001@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11" nil nil nil "2" "2016022616:28:25" "[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11" (number mark "U       cve-assign@m Feb 26   49/1973  " thread-indent "\"[oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11\"\n") "<CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>" ("<CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23629 invoked by uid 550); 26 Feb 2016 16:28:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23607 invoked from network); 26 Feb 2016 16:28:38 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdT9ezjtWQdgO0Lv=QRVEyiZ5Ot8wf+4Ch+-8KrgoJqp+w@mail.gmail.com>
Message-Id: <20160226162825.48EF752E001@smtpvbsrv1.mitre.org>
Date: Fri, 26 Feb 2016 11:28:25 -0500 (EST)
Subject: [oss-security] Re: CVE request: reads out-of-bounds with cpio 2.11

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Two reads out-of-bounds in cpio 2.11 were found in the parsing of cpio
> files

> AddressSanitizer: heap-buffer-overflow
> READ of size 2

> AddressSanitizer: heap-buffer-overflow
> READ of size 3

We think this may be similar to the
http://www.openwall.com/lists/oss-security/2015/11/17/4 and
http://www.openwall.com/lists/oss-security/2015/11/03/11 cases in
which the product isn't a library, and typically doesn't need to
remain running after bad input is encountered.

More specifically, we don't know of cases where the relevant cpio
source code (e.g., copyin.c) has been adapted for use in a library for
a long-running process in a different product that also operates on
untrusted input, although this might be plausible because a variety of
products may want cpio support.

A CVE ID may be available if the upstream response indicates that the
out-of-bounds reads allow the attacker to change the flow of control.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW0HyHAAoJEL54rhJi8gl53eYQAJ+w0oXuIIhSxfJl0amDoBCf
nqNdQ9xPq+bHvgDDFwkGdEzutLwDWIG0FmytRbiqXG/u5me4XDQXQ465Kag8n0sG
Lzs3dFMDnjz5pd4C7oKx/JhIEjI6rD5oooTqN3xMrPGezaXsz+nL/8AUtFShqGL3
bTIOY0xx4VpR0iTfRu14NpHpB4ocf0OVvSgKHy70H+4TDyM8PKqXSQidkuuHjM8M
lhZeMsu5cyBYo2pDqlIHQ4gBhh5+gYDAcUd5Y+C/+DltH2lJjYCRw+KW6utt9/hQ
dBzd2VXkNZoFHOnj5AIR2U1ROvpU9eSCxMUPdmKxqrXXOvvxDDaFGaFfHXG0eNR2
n9A67ekWCgUya5wR4nb23olzxvR9GVqkwtRJrZ5z6t/Qrl13LiJArzQRiMdhyydi
tkeDw28dHaU2i3XiwZr8x8QSiKx00N5Q0eWOjrigvpbVJVoHQEF2ruIsWm/1L3A/
iJf0JvD2tt1Qh0sNWn+sf+qVnNIywlsRVFP6tiwfsP+cDBqIzH2TyOonDm2tjKeY
P/SmiUEm4Btrd6TJnc0uFI3q4p7hfpWbZRC9hgzJKA/k6LUdLuDEUznej7WIHXiQ
c8LaZOWsC7cON+4GalayNZnovrE4MCKo4gWMxuecD9/Xv14eE5gpxx8BUL/bM7Ig
HX6rsYGYOtDvyyLZqY1o
=pd0F
-----END PGP SIGNATURE-----

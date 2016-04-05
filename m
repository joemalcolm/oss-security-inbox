X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1734" "Tuesday" "5" "April" "2016" "14:31:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160405183103.7EE3C6CC0DE@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE request - Go - DLL loading, Big int" nil nil nil "4" "2016040518:31:03" "[oss-security] Re: CVE request - Go - DLL loading, Big int" (number mark "U       cve-assign@m Apr  5   42/1734  " thread-indent "\"[oss-security] Re: CVE request - Go - DLL loading, Big int\"\n") "<CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>" ("<CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7243 invoked by uid 550); 5 Apr 2016 18:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7225 invoked from network); 5 Apr 2016 18:31:55 -0000
From: cve-assign@mitre.org
To: jbuberel@google.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>
Message-Id: <20160405183103.7EE3C6CC0DE@smtpvmsrv1.mitre.org>
Date: Tue,  5 Apr 2016 14:31:03 -0400 (EDT)
Subject: [oss-security] Re: CVE request - Go - DLL loading, Big int

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1. On Windows, Go loads system DLLs by name with LoadLibrary, making it
> vulnerable to DLL preloading attacks. Notably, if a user launched a Go
> executable from their Downloads folder and malicious DLLs were in their
> Downloads folder. This is being address in the following CL:
> https://golang.org/cl/21428

Use CVE-2016-3958.


> 2. Go has an infinite loop in several big integer routines that makes Go
> programs vulnerable to remote denial of service attacks.  Programs using
> HTTPS client authentication or the Go ssh server libraries are both exposed
> to this vulnerability. This is being addressed in the following CL:
> https://golang.org/cl/21533

Use CVE-2016-3959.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXBAQSAAoJEL54rhJi8gl5QT4QAMUGgyvc+XBbUJ23+YsSUR+i
B/VeVlRrgidEa1BTlz7vAXUujyk1IPK5LtaJwO3v1d61Q4h6iGU2u7BSM/DHSw/G
tESzwtQo06F93waSmUfbWslaU+ccxTVpc+xxlxMeCNMLDZvN2fXt6OPTP7jMT47M
GeYyfZwpuVhc0IwiIUKK17Xl9bZptMdMBDjctq93zGyLqtr8vhQHFB+0xcNeYUap
rtNXETnH0Pgd1Ze/IPT9DPyi9jyctqYB2RTBA6SpM11spnNI7JdEBiAHOHQiwmwf
mJZv+HO0M9kOnpH/8vaWEL2WYdjV65CTfP6bpkBhOgEkwVqpvzFmgJp3M+/0ZkpY
pSQ+9GUbEvLLDT5JmJ4TCo0whDrcU7lWxTm7toEQsI86puHWlABJPN4/BXYipVuW
DYjXT/eiiaes1j3tUUi2d5Id90cgLVA9c79yZ2GQoDQWlyZ4r8vmlkuw38Ve9OGt
embQ9Zp615bldfz7eZg91jJfQsaGBOtkhCgskgadhoI3/rrJX1UmrOZbr52Ym1OC
GuEWw2kl2vB4CwuULbnCdV852XkgpvZBBwERh/kYMHRmrBnk/dVjElAhDutCZwo6
A58OZjBfbcpD2wfWyJjwFxucC/EegZ1KDErjvtmcBdXHbVCNKRIGcHhe4QffgZuO
Sg3f+0X0FXX+/6BxURzG
=RGJ+
-----END PGP SIGNATURE-----

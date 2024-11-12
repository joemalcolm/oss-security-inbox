Received: (qmail 30149 invoked by uid 550); 12 Nov 2024 17:59:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27670 invoked from network); 12 Nov 2024 17:31:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hexsys.org;
	s=protonmail2; t=1731432696; x=1731691896;
	bh=2EN6RsPL/5aIF7B8qvyXLyRIuhQEpqcK4d6IxkAk9os=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=pmRxlLh42quV4HIQK16Tp40jpXxiZ65eomUzdJczVHqTV+dF9kCYVwVwVHlVE48+R
	 YbaJWbwatznB22pZVKw/tyjzx/Mp/bNJNsCK+XqoiRRzq60P7RLIRnhEf6NufgOAhU
	 a5pDTZvEgRYsKfKlBzX7kF26g936mxRobUs0a6o7454+smhgUmh9sxPXqvK/DGBJ5j
	 aPa30VizQO8pNQTSTG7wPgDSDcKyikB7fuzj9Cy09jMaZuLdPhaUFhGweg7fbfUosa
	 7Pw2J1J8XklWss90JsjMIzGJMlt5cixesoSmVzDZDIYZ3cFlWW5q22lQyljhY3wQ6Q
	 e+MhVtb9Z0VMA==
Date: Tue, 12 Nov 2024 17:31:32 +0000
To: oss-security@lists.openwall.com
From: Ali Polatel <alip@hexsys.org>
Message-ID: <yPOEyvOUfuKsklWzFpBdmDaFvVBey86L51kH7CwV-FzPfbHqBtd-TjZDy4CzpGRPcSnI0SG6ASuvbVrziaGJa9hpTLR9tPWf22iAD4CPVOI=@hexsys.org>
In-Reply-To: <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
References: <20241106041215.GA4432@openwall.com> <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
Feedback-ID: 105281019:user:proton
X-Pm-Message-ID: 84db6fc2d4f2080f404bbd223b0151d292ce4247
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------7b2ce4b061ba69c07e4be8d0add5a94437f7f9f748ce1dd9b50dea69d04afb54"; charset=utf-8
Subject: Re: [oss-security] shell wildcard expansion (un)safety

--------7b2ce4b061ba69c07e4be8d0add5a94437f7f9f748ce1dd9b50dea69d04afb54
Content-Type: multipart/mixed;boundary=---------------------391fa675981a2d1918f9e96bfde16e44

-----------------------391fa675981a2d1918f9e96bfde16e44
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

On Wednesday, November 6th, 2024 at 15:44, David A. Wheeler <dwheeler@dwhee=
ler.com> wrote:

> Long ago I wrong a really long essay about POSIX filename issues.
> Some people here may find it interesting:
> https://dwheeler.com/essays/fixing-unix-linux-filenames.html

Thank you. Around six months ago I added a restriction on filenames with
control characters to Sydbox[1] after I had read about a vulnerability
here on this list. I think it was about tar but my memory may not serve
me right. Sydbox is secure by default, so at first this feature was
enabled without any way to turn it off. After a few months of testing
with fellow Exherbo Linux developers, we have noticed some package tests
(nvim was one of them) actually rely on creating paths with control charact=
ers as
part of their test suites, so I added a setting to disable this feature
which was set by our package manager.

Having read your article, and three versions of your Safename LSM
patch-sets, and having felt immensely thankful and enlightened for a
while, I have proceeded to replace the control characters restrictions
above with an implementation that is very similar to yours. A
possibly incomplete list of what Sydbox does different is:
1. Existing bad files are hidden.
2. Tilde prefix is forbidden, I have noticed you have dropped this in
your third version with reasons irrelevant to Sydbox.
3. "$" and "`" characters are forbidden.=20


Finally, I am sharing the relevant part of the syd(7)[2] manual page
as food for thought. Note, 3.28.0 has not been released at the time
of writing so this is also in part a request for feedback :). You may
find the code changes here[3]. Sydbox is GPL-3.0-or-later and Safename
LSM is GPL-2.0 so I have taken the liberty to rewrite most of the main
logic from C to Rust and added unit tests. The file src/path.rs includes
an attribution to you and your work in the copyright header. Thank you!

--8<--
## Enhanced Path Integrity Measures

As of version 3.17.4, Syd incorporates crucial enhancements to maintain
the integrity of file system paths by systematically denying and masking
paths that contain control characters. These modifications are essential
for preventing the exploitation of terminal-based vulnerabilities and
for maintaining robustness in logging activities. Paths identified with
control characters are not only denied during sandbox access check but
are also sanitized when logged to ensure that potentially harmful data
does not compromise log integrity or facilitate inadvertent security
breaches. Such measures underscore Syd's ongoing commitment to
fortifying security by adhering to rigorous, up-to-date standards for
handling untrusted input efficiently.

As of version 3.18.6, this restriction can be relaxed by using the
setting "trace/allow_unsafe_filename:1". This setting may be toggled
from within the sandbox during runtime prior to locking the sandbox.

As of version 3.28.0, Syd has enhanced its path integrity measures by
incorporating an implementation based on David A. Wheeler's Safename
Linux Security Module (LSM) patches. This update not only prevents the
creation of filenames containing potentially harmful characters but also
hides existing files with such names. Invalid filenames are now denied
with an "EINVAL" error when necessary. In alignment with Wheeler's
recommendations on restricting dangerous filenames, the validation now
enforces stricter rules:

- *Control Characters*: Filenames containing control characters (bytes 0x00=
=E2=80=930x1F and 0x7F) are denied.
- *UTF-8 Encoding*: Filenames must be valid UTF-8 sequences.
- *Forbidden Characters*: The following characters are disallowed in
  filenames as they may interfere with shell operations or be
  misinterpreted by programs: \*, ?, :, [, ], ", <, >, |, (, ), {, }, &, ',
  !, \\, ;, $, and `.
- *Leading Characters*: Filenames cannot start with a space ( ), dash (-), =
or tilde (~).
- *Trailing Characters*: Filenames cannot end with a space ( ).

These measures mitigate security risks associated with malicious
filenames by ensuring that both new and existing filenames adhere to
stringent validation rules. This enhancement strengthens overall system
robustness by preventing potential exploitation through untrusted input
in file operations. For more information, refer to the following links:

- https://dwheeler.com/essays/fixing-unix-linux-filenames.html
- https://lwn.net/Articles/686021/
- https://lwn.net/Articles/686789/
- https://lwn.net/Articles/686792/
-->8--

[1]: https://sydbox.exherbolinux.org
[2]: http://man.exherbolinux.org/syd.7.html#Enhanced_Path_Integrity_Measures
[3]: https://gitlab.exherbo.org/sydbox/sydbox/-/compare/7a6cc9b9cddc5d074d6=
f72b2b1a3f9aef065fed6...50fb41f21c1ce7e9556c778707a731d1a56e152c

>=20

> --- David A. Wheeler

Best regards,
Ali Polatel=

-----------------------391fa675981a2d1918f9e96bfde16e44
Content-Type: application/pgp-keys; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - alip@hexsys.org - 0xC22DA9DE.asc"; name="publickey - alip@hexsys.org - 0xC22DA9DE.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmdRSmRSWUpLd1lCQkFI
YVJ3OEJBUWRBbjlaVnJMbi9tclpseThqTE9qVklwTmRWSXhTSVZ4WmUKL2ZDeDZpcTNPM1hOSVdG
c2FYQkFhR1Y0YzNsekxtOXlaeUE4WVd4cGNFQm9aWGh6ZVhNdWIzSm5Qc0tNCkJCQVdDZ0ErQllK
bUJBbDFCQXNKQndnSmtCY2phUTFHWTNTNkF4VUlDZ1FXQUFJQkFoa0JBcHNEQWg0QgpGaUVFd2ky
cDNrbUo2K2VhOUErdEZ5TnBEVVpqZExvQUFFaDlBUUNVRlB2YytPL1FzYzdpVDF0STcvMTAKakJW
aklPa2xyL01DU2lzZ2w0SzRqQUQvZkRaejVuVStqbzBmcjh3QXNLdFU0M1UrVWd5alVuNHhuczVQ
CnVzcFViZy9PT0FSbUJBbDFFZ29yQmdFRUFaZFZBUVVCQVFkQXFrait2ejdsbjQyNmhmQS9wSWZz
elJKbQpWWHpLc1VJOWJQd3dqZEdQUlNRREFRZ0h3bmdFR0JZS0FDb0ZnbVlFQ1hVSmtCY2phUTFH
WTNTNkFwc00KRmlFRXdpMnAza21KNitlYTlBK3RGeU5wRFVaamRMb0FBTHNMQVAwWUVEUkw1OVdi
UndSTFdpN0RlRjY2ClRCSzZtdmZGeG5maG9rM3JKSU1lWXdFQTZGNi85c1J6SzJqbExCRk9kbHlu
ZGdZbEpxUFVpZk1CZGU5ego2QkZFY1FnPQo9NFhXSgotLS0tLUVORCBQR1AgUFVCTElDIEtFWSBC
TE9DSy0tLS0tCg==

-----------------------391fa675981a2d1918f9e96bfde16e44--

--------7b2ce4b061ba69c07e4be8d0add5a94437f7f9f748ce1dd9b50dea69d04afb54
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmczkNwJkBcjaQ1GY3S6FiEEwi2p3kmJ6+ea9A+tFyNpDUZj
dLoAACzjAP9SD+5VobsxpkTN5ChAqIC0z9yi+sS5eklsVbg55qJ45gEAhWJg
VI5QwGoUztk+TYaTSxnHYhaSmd0hL1DkfNlI7AU=
=Mtsk
-----END PGP SIGNATURE-----


--------7b2ce4b061ba69c07e4be8d0add5a94437f7f9f748ce1dd9b50dea69d04afb54--


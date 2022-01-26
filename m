X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1269" "Wednesday" "26" "January" "2022" "14:34:26" "+0200" "Henri Salo" "henri@nerv.fi" nil "29" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       henri@nerv.f Jan 26   29/1269  " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1853 invoked by uid 550); 26 Jan 2022 12:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1833 invoked from network); 26 Jan 2022 12:34:40 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Date: Wed, 26 Jan 2022 14:34:26 +0200
From: Henri Salo <henri@nerv.fi>
To: oss-security@lists.openwall.com
Cc: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
Message-ID: <YfE/0ldFPlLtuka9@ryzen.bugs.fi>
References: <20220125175655.GA14958@localhost.localdomain>
 <F9283FD4-A0FC-4944-8659-530684BB33F8@gentoo.org>
 <56d94fb3-cb73-c541-b62b-4239a28afea1@rs-labs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
In-Reply-To: <56d94fb3-cb73-c541-b62b-4239a28afea1@rs-labs.com>
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On Wed, Jan 26, 2022 at 12:18:07PM +0100, Roman Medina-Heigl Hernandez wrote:
> PS: Untested because my Debian machine doesn't contain pkexec, even though
> Qualy's advisory says it is by default on Debian.

We had discussion off-list with Roman and this is the case only when Debian is
updated from previous release to bullseye. In clean installs pkexec is
installed.

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/aVSDznAZReWTkxKJ633pE6qdXQFAmHxP9EACgkQJ633pE6q
dXS1NhAAtX9YcEAsZoHZ2yMohlofBqiRTvAwE2dk4jbhu8/4Kvkz1IP6sVBi6J4S
MKF2zSvUW8ydq/MAl2K8viB+O2VcbN0ZZIzYSNN4a1Rjz2AyWUl5fhdqHRQrUqMn
O9/FfsgtGmOVBECc4HNwlje9jDP0bZKkqbU9AULsxJrG1QwYGYCV28Ietb4ccJYD
d9VqgdYr4W4qqcsycn4Z7wkq7iFS+VkLCX77KVMxr+WuldRFK2FCPa9rHopps+6i
4yKLLYJxF9Z6y8t4d/ZSSckT4GN7fDw3L7WP8HYlJTY16gkOi+MDIlfvTPnLkAH0
YIDvZcDpFMZGWluw2eO8wdkITZAk7LDCLo484iRAb0Ufji9n775R2mS7UjLKwJ++
dg2TcqN7BNICTRRpnCXvqyWFMUTiI19I45v/T68ymgVF8YwGEAcnA3FyH8tCbz+Y
79dKz764sMSKJubeRfL1EFdBm7a8ugi4v9c+jEUgqGvc4ERBB6hVuUWDsRpyNgEK
/j/HdA4BOlp95GxjfYnckZKYvcqg0+A7XBsQsAVu0cH10sHsIRAwjwMCkk5uM2G6
i4ciEDTV1svMpO0JsY7FS4HRvheEqg/Ws3c2Gd7ssvMuAwqS0p0K9qn9E6Bcj0xP
KrwSF4tsqY1dQPS1h5GCTT4H8+M76DTBHVfwhy2L2yWdScn1I3s=
=S0ir
-----END PGP SIGNATURE-----

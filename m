X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2161" "Tuesday" "20" "October" "2015" "10:21:14" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151020142114.9258A34E032@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE request: crash when attempt to garbage collect an uninstantiated keyring - Linux kernel" nil nil nil "10" "2015102014:21:14" "[oss-security] Re: CVE request: crash when attempt to garbage collect an uninstantiated keyring - Linux kernel" (number mark "U       cve-assign@m Oct 20   50/2161  " thread-indent "\"[oss-security] Re: CVE request: crash when attempt to garbage collect an uninstantiated keyring - Linux kernel\"\n") "<56262349.9030805@redhat.com>" ("<56262349.9030805@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5630 invoked by uid 550); 20 Oct 2015 14:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5604 invoked from network); 20 Oct 2015 14:21:26 -0000
From: cve-assign@mitre.org
To: amaris@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56262349.9030805@redhat.com>
Message-Id: <20151020142114.9258A34E032@smtpvbsrv1.mitre.org>
Date: Tue, 20 Oct 2015 10:21:14 -0400 (EDT)
Subject: [oss-security] Re: CVE request: crash when attempt to garbage collect an uninstantiated keyring - Linux kernel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=ce1fad2740c648a4340f6f6c391a8a83769d2e8c
> https://bugzilla.redhat.com/show_bug.cgi?id=1272371
> https://bugzilla.redhat.com/show_bug.cgi?id=1272172

>      i=`keyctl add user a a @s`
>      keyctl request2 keyring foo bar @t
>      keyctl unlink $i @s
> 
> tries to invoke an upcall to instantiate a keyring if one doesn't already
> exist by that name within the user's keyring set. However, if the upcall
> fails, the code sets keyring->type_data.reject_error to -ENOKEY or some
> other error code.  When the key is garbage collected, the key destroy
> function is called unconditionally and keyring_destroy() uses list_empty()
> on keyring->type_data.link - which is in a union with reject_error.
> Subsequently, the kernel tries to unlink the keyring from the keyring names
> list - which oopses

> The solution is to only call ->destroy() if the key was successfully
> instantiated.

>> Prevent a user-triggerable crash in the keyrings destructor when a
>> negatively instantiated keyring is garbage collected.

Use CVE-2015-7872.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWJk1RAAoJEL54rhJi8gl5dY8QAIR5aEHLrphiK+AMH/Rh5mqL
Hb1ZLFiCiBP+QiMcqNL8QGueOBxJ9OaRwO7DVoG8xyFUAjcGkmGLKZLDMZLvFSwq
IAhIGiaG6uTgoZF0G2CeWW8LM7jFezlwBTlFy6S7NAJ04ig74SPiGy90iEpMZ+T3
yvsXda5Wv4jplIESmDhei5AGJA2DTbVantlEreQEwylpc+P4da4T1iQBSlieUqmw
a5KCqK99c3E+NWeYkMTakqTomkveGNeSSdECCJPJAOEBjhS306MCrfm00Lml60Tu
RKP4tkXZuRIzSNJ4wHXuUzqL2p7TeKqCybbdtqjJBb48x9R5uSf+AsMSr1lHXWnm
x0NQiVsk5DD+5byp4OsEqHmVRmncSakx3kZ5lB5STz/9awbhrqeuraXdEcXvW0Us
6SJzhGBHTvEP9JujyBnuxjxNIJZjO3FSH4EPc2vT2fj6QxbZwJAz8561/dQcPRzB
ZHTQOaESMYra1Ilh/xT2vgbAgS8QbafP3YUnPmjL7FdOyzAISWE14btotMJUrRDT
2O8ac+clhv+3RUnEQeIs3nayTXWFITD7uC9RAZ+PJE7MI6723LgFHv/EBwHxw8B9
sbq0BR/54EZxgbmcmBJdDdqWdemR0l+nOIVyjHjWF355YEz9/mGNCO2WMhYROv0U
1FvpX7r/yaNcuCwv0vF2
=3n+3
-----END PGP SIGNATURE-----

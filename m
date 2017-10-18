X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6899" "Wednesday" "18" "October" "2017" "20:56:06" "+0200" "Julien Ahrens" "info@rcesecurity.com" "<8E95DF5C-2512-43BC-A080-33183685F389@rcesecurity.com>" "203" "[oss-security] [RCESEC-2017-001][CVE-2017-14955] Check_mk v1.2.8p25 save_users() Race Condition leading to Sensitive Information Disclosure" nil nil nil "10" "2017101818:56:06" "[oss-security] [RCESEC-2017-001][CVE-2017-14955] Check_mk v1.2.8p25 save_users() Race Condition leading to Sensitive Information Disclosure" (number mark "U       info@rcesecu Oct 18  203/6899  " thread-indent "\"[oss-security] [RCESEC-2017-001][CVE-2017-14955] Check_mk v1.2.8p25 save_users() Race Condition leading to Sensitive Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30536 invoked by uid 550); 18 Oct 2017 19:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27674 invoked from network); 18 Oct 2017 18:56:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rcesecurity.com; s=mail;
        h=from:mime-version:subject:message-id:date:to;
        bh=1D2ZsPgchOADUPwxHVibC+MGzynSmotYmFkzsRhQhdk=;
        b=YFrq/aMhBh285ojwpPLwp+UcnbUt6JtBtXsHVD3tFyd3MR+9Hk37tatez+ET/boWOl
         tXN4zi66Br8kkSSTTX8ZA4JtplweW2pjJ/QEYMMxhhz94Tte/LPT3+9cNOFRkE1R1sKP
         bPtuLtqAEicjaGUexLH+zSKZukYm/C3SddkK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=1D2ZsPgchOADUPwxHVibC+MGzynSmotYmFkzsRhQhdk=;
        b=s9+LE0hfoLjnGHlRXtQqjIErY3pOwleYG2eV4OcjKj/XXLBURv4uWfUhr19z6Stwdp
         aH2XFBqond/rilDpvLMQpjtHIqHBbudEcGy1DY4ybt+zQxzgcDMlCd5j1pfBsklzgiBk
         JB4lbG9HYdGqTH7iBKqXIIjkILsVjD3m6DU8km0Az2yEgqjLtRtgab01HhQDCjOc/XWe
         EqyXDrflYN8QOsoxr9DwGl3Aqq5F6DF6JH1d2Wo0jehGpmgHANx9dNjNyiHE++eqdJLb
         WdBW7/DaGUq82OhYq7Tg6aIlwNN7ILWXa6pfuw1Ez5OKDbyceZ9bxtBfLtMKlTzIdDY5
         PSUA==
X-Gm-Message-State: AMCzsaVr/ucTpBzwbMV2UH8hTAZsh3JAEv/ywHf65yQL0XO3rU4jrL/k
	K/Dm81hACRxxbzXkL0wa3r2kkePgX7g=
X-Google-Smtp-Source: AOwi7QCTrSc7fLMFKEz50O8jtL/6qYHbbndSGUvPItA6i8JOxTx/TxG2QLNIquLTlRLA3YIDKyus9A==
X-Received: by 10.80.151.22 with SMTP id c22mr22067606edb.247.1508352967948;
        Wed, 18 Oct 2017 11:56:07 -0700 (PDT)
From: Julien Ahrens <info@rcesecurity.com>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_A4850EB7-67E0-4756-9052-5707D4097477";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <8E95DF5C-2512-43BC-A080-33183685F389@rcesecurity.com>
Date: Wed, 18 Oct 2017 20:56:06 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] [RCESEC-2017-001][CVE-2017-14955] Check_mk v1.2.8p25 save_users()
 Race Condition leading to Sensitive Information Disclosure

--Apple-Mail=_A4850EB7-67E0-4756-9052-5707D4097477
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

RCE Security Advisory
https://www.rcesecurity.com


1. ADVISORY INFORMATION
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Product:        Check_mk
Vendor URL:     https://mathias-kettner.de/check_mk.html
Type:           Race Condition [CWE-362]
Date found:     2017-09-21
Date published: 2017-10-18
CVSSv3 Score:   7.5 (CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N)
CVE:            CVE-2017-14955


2. CREDITS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This vulnerability was discovered and researched by Julien Ahrens from
RCE Security.


3. VERSIONS AFFECTED
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Check_mk v1.2.8p25
Check_mk v1.2.8p25 Enterprise
older versions may be affected too.


4. INTRODUCTION
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Check_MK is comprehensive IT monitoring solution in the tradition of Nagios.
Check_MK is available as Raw Edition, which is 100% pure open source, and as
Enterprise Edition with a lot of additional features and professional suppo=
rt.

(from the vendor's homepage)


5. VULNERABILITY DETAILS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Check_mk is vulnerable to an unauthenticated information disclosure through=
 a
race condition during the authentication process when trying to authenticate
with a valid username and an invalid password.

On a failed login, the application calls the function save_users(), which
performs two os.rename operations on the files "contacts.mk.new" and
"users.mk.new" (see /packages/check_mk/check_mk-1.2.8p25/web/htdocs/userdb.=
py):

[..]
    # Check_MK's monitoring contacts
    filename =3D root_dir + "contacts.mk.new"
    out =3D create_user_file(filename, "w")
    out.write("# Written by Multisite UserDB\n# encoding: utf-8\n\n")
    out.write("contacts.update(\n%s\n)\n" % pprint.pformat(contacts))
    out.close()
    os.rename(filename, filename[:-4])

    # Users with passwords for Multisite
    filename =3D multisite_dir + "users.mk.new"
    make_nagios_directory(multisite_dir)
    out =3D create_user_file(filename, "w")
    out.write("# Written by Multisite UserDB\n# encoding: utf-8\n\n")
    out.write("multisite_users =3D \\\n%s\n" % pprint.pformat(users))
    out.close()
    os.rename(filename, filename[:-4])
[...]

When sending many concurrent authentication requests with an existing/valid
username, such as:

POST /check_mk/login.py HTTP/1.1
Host: localhost
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Content-Type: multipart/form-data; boundary=3D---95191781212949613410405897=
27
Content-Length: 772
Connection: close
Upgrade-Insecure-Requests: 1

---9519178121294961341040589727
Content-Disposition: form-data; name=3D"filled_in"

login
---9519178121294961341040589727
Content-Disposition: form-data; name=3D"_login"

1
---9519178121294961341040589727
Content-Disposition: form-data; name=3D"_origtarget"

index.py
---9519178121294961341040589727
Content-Disposition: form-data; name=3D"_username"

omdadmin
---9519178121294961341040589727
Content-Disposition: form-data; name=3D"_password"

welcome
---9519178121294961341040589727
Content-Disposition: form-data; name=3D"_login"

Login
---9519178121294961341040589727--

Then it could happen that one of both os.rename() calls references a non-
existing file, which has just been renamed by a previous thread. This cause=
s the
Python script to fail and throw a crash report, which discloses a variety of
sensitive information, such as internal server paths, account details inclu=
ding
hashed passwords:

</pre></td></tr><tr class=3D"data odd0"><td class=3D"left">Local Variables<=
/td><td><pre>{'contacts': {u'admin': {'alias': u'Administrator',
                              'contactgroups': ['all'],
                              'disable_notifications': False,
                              'email': u'admin@example.com',
                              'enforce_pw_change': False,
                              'last_pw_change': 0,
                              'last_seen': 0.0,
                              'locked': False,
                              'num_failed': 0,
                              'pager': '',
                              'password': '$1$400000$13371337asdfasdf',
                              'roles': ['admin'],
                              'serial': 2},

A script to automatically exploit this vulnerability can be found on [0].

6. RISK
=3D=3D=3D=3D=3D=3D=3D
To successfully exploit this vulnerability an unauthenticated attacker must=
 only
have network-level access to the application.

The vulnerability allows remote attackers to trigger an exception, which
discloses a variety of sensitive internal information such as:
- Local server paths
- Usernames
- Passwords (hashed)
- and user directory-specific attributes (i.e. LDAP)


7. SOLUTION
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Update to 1.2.8p26.


8. REPORT TIMELINE
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
2017-09-21: Discovery of the vulnerability
2017-09-21: Sent limited information to publicly listed email address
2017-09-21: Vendor responds and asks for details
2017-09-21: Full vulnerability details sent to vendor
2017-09-25: Vendor pushes fix to git
2017-10-01: MITRE assigns CVE-2017-14955
2017-10-16: Fix confirmed
2017-10-18: Public disclosure


9. REFERENCES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[0] https://www.rcesecurity.com/2017/10/cve-2017-14955-win-a-race-against-c=
heck-mk-to-dump-all-your-login-data/
[1] https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-14955


--Apple-Mail=_A4850EB7-67E0-4756-9052-5707D4097477
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEUHyElq6MolVtMDOLstOcv2HNivoFAlnno8YACgkQstOcv2HN
ivqXig/+PUwRb3WVMmko+ahVcAKdIVPhnRQ/JDXwC6tVQQ0RgKfwYtmBvGGL5qMn
a+DKPYVx+07VEThaVyPzto8pKbvdqBNUaQJwIruJ3+f1T0/5rivthytEJstxgsdr
MdCuxsLGOvEb7rLSBHzxab3OUEjDinPuPTlrzSqyfhVcC+mkE4YJC2tdf8z+x77b
PBANPBm3RRk0slVrENg/4SZ1QfzHUG/ZRpCND0o48kkeiaB2TkP8KctIi3/80WQ2
ipHU/lpx7qmh4DpvPmoPxl2rJwNyuEZGbmVop23o6cJPiujKtHgt3NnLvmMbSIIJ
uAKwV7rcOUEKB4X8TQngsSgOqJvYqnE6CUy5VM8ZFJRKA/0dHCI/TKlv6gTLPctm
s57c0/QAXHTt7eIXJrsM/wt5g5tC4szTr6GY+76GNm4wU712c35aqc49fLEARzbp
+WGpgDQH54WGx7zRSPDl4+8ZhmgQEPYxXfEKs0hEE7x7i9vgstn0tASWsj2fzMeo
nDbXKC6bjVA63t1qbzLtzeVR07s6tOQeY56E+Q4Rn3gXgzq+THqxQD6SiIm3ogVb
V7qZd2Jde0jVaHww9v0NLOsxe1r3xZ/Ez5BnCiUvt1jqJfJPvcZ0fRqfi3zkmMGf
fGea0fjxJ8EnydTHMnwzNAUpeSGzi4s0Bbi4s1EhVyBNgwSKLUk=
=mXzT
-----END PGP SIGNATURE-----

--Apple-Mail=_A4850EB7-67E0-4756-9052-5707D4097477--

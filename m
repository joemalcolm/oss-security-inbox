Received: (qmail 15666 invoked by uid 550); 19 Aug 2024 21:02:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15639 invoked from network); 19 Aug 2024 21:02:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector1; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From;
	bh=UwHwBaS4oOZhxupkVt9lacHbHRzeGn2k52hhqUaWyuU=; b=VYp5ca2ZbwvuGRbnAmAJJv+JzP
	c4E6dLBkz1AbEmgxakuONascLCQfGrZ1jXgPAnv0B2FjZx0sIEoMSs62jQX6fm3dj954cs+KCYghg
	m+o/G4mN/Pz+vdu/l4iIC9b+U3xX/gJaM5s0/xYLgGOiv0O7tIAwjpJiT2JoFN3EBqGroUJd1sl/M
	VwVJhyiJVPwuWbQSncejEbEJaDL5jlTDgwmX7CPNoTKYJwf4E/qzkdp1yT1B8qo43Hi47upcmdMS1
	DGgCkHNXtBMef+UMGrRPl1KDWkzjEsOQ69BA3joBT6DNOhy5HDn3CZ42OcBXHwT3sh8Ox46ssglSV
	mNTbqwmQ==;
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.1\))
Date: Mon, 19 Aug 2024 17:02:29 -0400
References: <E0230074-77BD-4A07-9838-92BB263C598E@linuxfoundation.org>
 <24243143-1A4D-4B71-A6C4-C8140C09A1CE@dwheeler.com>
 <CAKfVa+kDOncGMgh+otnTQoToBtT2bqH3paTWD6ie9wZ6DLfRYw@mail.gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <CAKfVa+kDOncGMgh+otnTQoToBtT2bqH3paTWD6ie9wZ6DLfRYw@mail.gmail.com>
Message-Id: <2C67A739-491E-4672-94F1-5C78DBC55C97@dwheeler.com>
X-Mailer: Apple Mail (2.3731.700.6.1.1)
Subject: Re: [oss-security] AI Cyber Challenge (AIxCC) semi-final results from
 DEF CON 32 (2024)


> On Aug 17, 2024, at 4:32 PM, Alfredo Ortega <ortegaalfredo@gmail.com> wro=
te:
>=20
> I found a real bug (OpenBSD IPv6 Multicast Forwarding Cache sysctl
> kernel heap overflow) using Mistral-Medium almost 6 months ago:
> https://github.com/ortegaalfredo/vulns-ai/blob/main/openbsd_mfc6_sysctl_o=
verflow.txt
>=20
> The simple tool that did it is also released as open-source here:
>=20
> https://github.com/ortegaalfredo/autokaker
>=20
> About to release the second version, and a vscode plugin, next week.

That's even more evidence that LLMs can find at least some vulnerabilities.

Also - here's a visualization that tries to show how AIxCC competitors
did against the challenge problems:
https://dashboard.aicyberchallenge.com/collectivesolvehealth

You can see that the tools found & fixed many of the seeded vulnerabilities=
 in
nginx, a few in all but one of the others, and they struggled with the
Linux kernel. The Linux kernel is *huge* compared to most projects, so that
isn't too surprising. The final competition is in about a year, so there's =
hope that
the tools will make improvements in that time as part of the challenge.

To be honest, even finding and fixing *some* problems automatically is a big
win, especially if false reports are rare. Still, the better the tools are =
at finding and
fixing vulnerabilities, the better off we are.

--- David A. Wheeler


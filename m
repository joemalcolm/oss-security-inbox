Received: (qmail 17876 invoked by uid 550); 3 May 2023 21:55:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17854 invoked from network); 3 May 2023 21:55:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1683150914; bh=qRID5aHHrQ95fVICTKMxjKBosbphDpk1l1BOMhUzlwE=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=tIj+DkRIlLBp2a8VeFfdfOmJyPxn5v8RD3PaB65vIW7vs9D9g0evFck5aT7bpWbt1
	 iIhM854hpRw6GaYVQlVuiD5n7dmEtQMnWvI2ilCy1j/e7BAZMOSDw0KdJEsWN4rmze
	 y8TCEwr2f9CBdY8+RmqX1D4H5D0JHexkYY7e2YKM=
Message-ID: <d98ab3d26a1aeffb7542ba96b4bb73a5761b052e.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Wed, 03 May 2023 17:55:13 -0400
In-Reply-To: <336b0af3-572e-b601-a856-b09d0930d40e@eenterphace.org>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
	 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
	 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
	 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
	 <8038fdf3-2532-9a54-caf9-7c0d40262f52@thirddimension.net>
	 <336b0af3-572e-b601-a856-b09d0930d40e@eenterphace.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Wed, 2023-05-03 at 22:40 +0200, Moritz Bechler wrote:
>=20
> while one may criticize that CVEs have been assigned both for the=20
> insecure default and (some of the) insecure usages, at least one of=20
> these is a legitimate case, in terms of CVEs likely the latter. And when=
=20
> it comes to defaming projects, at least in my book, choosing, keeping=20
> and defending bad defaults speaks to much more than a CVE being assigned.

They're both bad defaults. One explicitly does no authentication, while
the other uses a corrupt and misunderstood process that can create a
false sense of security. We disagree on which is worse, but neither
viewpoint is ludicrous.


Received: (qmail 13460 invoked by uid 550); 30 Sep 2023 23:29:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13439 invoked from network); 30 Sep 2023 23:28:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1696116527; bh=Mt5nKoRR/T2eDq9HA3oLgbO0QA1Y2mDOKXIHSglocUQ=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=HpSQVAu7wsVEy3wt5oyhn0v0ud5HVfsbujmOr25x4cdjtVLiEXSqcnTg7U6YeMMyy
	 +K/IkAGb/356YqjXVkn4uP3aXAoNbg560VfYw1tzWGQqSDZa7Zw6D1BcQol8JV3Uxm
	 bRv1ztKGa69dyW1j4Lg5CwFuTn/Ljy8M+zLnkCVs=
Message-ID: <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Sat, 30 Sep 2023 19:28:46 -0400
In-Reply-To: <ZRhUF9yHctTj5DhO@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
	 <ZRXlPoozp5n+cWv1@itl-email>
	 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
	 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
	 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
	 <ZRdyaYEi9YOZUXAg@codewreck.org> <ZRhUF9yHctTj5DhO@itl-email>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

On Sat, 2023-09-30 at 13:00 -0400, Demi Marie Obenour wrote:
> It is also worth noting that Rust-the-language supports dynamic linking.
> Once Cargo supports this and downstreams (like Fedora) obtain sufficient
> build capacity, it will be possible to use dynamic linking by performing
> automatic cascading rebuilds whenever a package is upgraded.  Arch
> already does this for Haskell IIUC.

We do it for Haskell in Gentoo, too, but we have a dark secret: it only
works because Haskell became unpopular. There are basically only two
Haskell programs, and everything works for n =3D 2.


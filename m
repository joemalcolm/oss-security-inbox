Received: (qmail 12251 invoked by uid 550); 1 Oct 2023 12:21:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4072 invoked from network); 1 Oct 2023 11:04:01 -0000
Date: Sun, 1 Oct 2023 13:03:46 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20231001110346.GA25232@unix-ag.uni-kl.de>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
 <ZRdyaYEi9YOZUXAg@codewreck.org>
 <ZRhUF9yHctTj5DhO@itl-email>
 <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: Re: [oss-security] Haskell programs in distributions (was: Rust
 programs in distrbutions (Was: CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx))

Hi,

On Sat, Sep 30, 2023 at 07:28:46PM -0400, Michael Orlitzky wrote:
> On Sat, 2023-09-30 at 13:00 -0400, Demi Marie Obenour wrote:
> > It is also worth noting that Rust-the-language supports dynamic linking.
> > Once Cargo supports this and downstreams (like Fedora) obtain sufficient
> > build capacity, it will be possible to use dynamic linking by performing
> > automatic cascading rebuilds whenever a package is upgraded.  Arch
> > already does this for Haskell IIUC.
> 
> We do it for Haskell in Gentoo, too, but we have a dark secret: it only
> works because Haskell became unpopular. There are basically only two
> Haskell programs, and everything works for n = 2.

I am curious, what two prgrams do you think of?

I know of two Haskell programs I regularly use, Pandoc and ShellCheck.

Best regards,
Erik
-- 
[T]he most dangerous enemy of a better solution is an existing codebase
that is just good enough.
                        -- Eric S. Raymond

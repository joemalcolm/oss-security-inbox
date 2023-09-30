Received: (qmail 32711 invoked by uid 550); 30 Sep 2023 09:37:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30087 invoked from network); 30 Sep 2023 00:57:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1696035452; bh=AcbW7W0aWPDuIYd2m7T/aswnjWYitVzHKDuNEcvdCmw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=p92RJ7WmhT+fjv5GBsiqWyz++0pyH2WG5Q7OtZGNNh4eOpYdbDk1zSR2ZDVy3qyeY
	 ZTrWtsiEz0UsD/RKoqM5c95T1hoKEcto1NLjeYRP/woY5x1eWtAISHWevtGMuPR7FK
	 EAXFFsNg9nmMXbOXlUhod7iiRAZAxkQA+7fewbw1dQWqjT3cdhZVbuIUOoZTC2gUji
	 hyMUTBsZzn02c18qYDHxcCjx31gd2l/obKdpcWRRf7mp9miuU8LwQnb+NZ8dUnVJ+9
	 lHc1KRo8VMuPER24SJOJXXlHxs+jEOnKjzfdjrm6xMg52bB8kpnXWCEdIGOsVvvbH8
	 5cRd/xOtGPb6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1696035452; bh=AcbW7W0aWPDuIYd2m7T/aswnjWYitVzHKDuNEcvdCmw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=p92RJ7WmhT+fjv5GBsiqWyz++0pyH2WG5Q7OtZGNNh4eOpYdbDk1zSR2ZDVy3qyeY
	 ZTrWtsiEz0UsD/RKoqM5c95T1hoKEcto1NLjeYRP/woY5x1eWtAISHWevtGMuPR7FK
	 EAXFFsNg9nmMXbOXlUhod7iiRAZAxkQA+7fewbw1dQWqjT3cdhZVbuIUOoZTC2gUji
	 hyMUTBsZzn02c18qYDHxcCjx31gd2l/obKdpcWRRf7mp9miuU8LwQnb+NZ8dUnVJ+9
	 lHc1KRo8VMuPER24SJOJXXlHxs+jEOnKjzfdjrm6xMg52bB8kpnXWCEdIGOsVvvbH8
	 5cRd/xOtGPb6w==
Date: Sat, 30 Sep 2023 09:57:13 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: oss-security@lists.openwall.com
Message-ID: <ZRdyaYEi9YOZUXAg@codewreck.org>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
Subject: [oss-security] Rust programs in distrbutions (Was: CVE-2023-5217: Heap buffer
 overflow in vp8 encoding in libvpx)

Michael Orlitzky wrote on Fri, Sep 29, 2023 at 07:51:12PM -0400:
> > There are workarounds like putting all of your Rust code in a single dynamic
> > library, but that's obviously not ideal or always feasible. You can also avoid
> > the Rust build tool "cargo" and directly compile dependencies to shared
> > libraries with "rustc", but it's not easy to compile Rust code without "cargo".
> 
> This is the biggest problem. Cargo is the standard way to build rust
> projects. Nobody is shipping a ./configure script for their rust
> project. Cargo is what's documented. It's what everyone uses. It's
> baked into all of the tools, the books, the domain names, the clever
> puns. It's also a bundling tool.
> 
> Without ABI stability, the cargo approach was necessary to avoid
> constant breakage. It's unreasonable to expect end users to track down
> every rust program they're using and rebuild them all manually every
> time a library is rebuilt with a newer version of rust. Instead, it was
> decided that the blessed way to build and distribute rust projects
> would be to bundle the world along with them.
> 
> Except, now, this is embarrassing: the only way for people to get
> security updates is to track down every rust program they're using and
> rebuild them all manually. This further presupposes that someone is
> actually looking for security vulnerabilities in the old versions of
> libraries bundled on everyone's systems. And that every rust upstream
> is aware of every vulnerability in every dependency it bundles. None of
> that happens.

For what it's worth, fedora is working very hard to improve this:
they're still rebuilding each crate everytime it's a dependency for a
program, but they're shipping each crate (source) only once, so when a
lib is updated there's the tooling to rebuild everything that depends on
it.
(And, if said program no longer compiles, maintainers get the fun of
fixing it or contacting upstream to report the problem, hoping they're
OK with distributions basically ignoring the Cargo.lock... But I think
it's better from a distribution point of view that e.g. nixos that does
respect the Cargo.lock, as that means dependencies never get updated if
the upstream doesn't pay attention as you pointed out)

-- 
Dominique Martinet | Asmadeus

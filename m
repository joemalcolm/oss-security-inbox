Received: (qmail 15648 invoked by uid 550); 29 Sep 2023 23:51:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15619 invoked from network); 29 Sep 2023 23:51:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1696031474; bh=AEhHGGTmGOhivijAxa1CIKtzoK+8TrEmEIuRU/160NE=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=oO1RTLtJFbXdglEVNSmjCod4lT3VP+UvdXi59sHc3stoRh7PInZ7JcmHVZ5hXobSw
	 86R+5hFx9Y8s1Nt02BfakwjYvmImll2SLmJRlqk3ZMuKzmWs0AxBzNoVWkpJidHJa6
	 D26qNKvTTAUS5EuBMVbl5gE41BM/WAVq+ZzZKl8I=
Message-ID: <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Date: Fri, 29 Sep 2023 19:51:12 -0400
In-Reply-To: <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
	 <ZRXlPoozp5n+cWv1@itl-email>
	 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
	 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

On Fri, 2023-09-29 at 12:57 -0700, Travis Finkenauer wrote:
>=20
> Having a stable ABI has pros and cons. You are correct that Rust does not=
 have
> a stable ABI by default (although you can you can opt into the C ABI per-=
type
> and per-function). A stable ABI is convenient because it lets you link to
> libraries compiled with different versions of a compiler. However, a stab=
le ABI
> has performance implications. You are locked into that ABI even if you re=
alize
> some decisions don't make sense in the future.
>=20
> ...
>=20
> I agree that it would be nice if Rust had a better story around dynamic
> linking. If your "product" is a single executable, then statically linkin=
g all
> of your Rust dependencies may not be a big deal. However, if you are
> distributing many binaries (such as in an OS image), then you would be
> building and packaging some libraries multiple times.

I'll focus on this as the portion most relevant to the list.

Any static linking is a big deal, because it embeds vulnerabilities
where no one is looking for them. It changes the complexity of
maintaining a secure system from something like O(n) to O(n*m), while
simultaneously making it impossible to automate. It also wastes space,
bandwidth, and CPU cycles -- but none of those are deal-breakers.


> There are workarounds like putting all of your Rust code in a single dyna=
mic
> library, but that's obviously not ideal or always feasible. You can also =
avoid
> the Rust build tool "cargo" and directly compile dependencies to shared
> libraries with "rustc", but it's not easy to compile Rust code without "c=
argo".

This is the biggest problem. Cargo is the standard way to build rust
projects. Nobody is shipping a ./configure script for their rust
project. Cargo is what's documented. It's what everyone uses. It's
baked into all of the tools, the books, the domain names, the clever
puns. It's also a bundling tool.

Without ABI stability, the cargo approach was necessary to avoid
constant breakage. It's unreasonable to expect end users to track down
every rust program they're using and rebuild them all manually every
time a library is rebuilt with a newer version of rust. Instead, it was
decided that the blessed way to build and distribute rust projects
would be to bundle the world along with them.

Except, now, this is embarrassing: the only way for people to get
security updates is to track down every rust program they're using and
rebuild them all manually. This further presupposes that someone is
actually looking for security vulnerabilities in the old versions of
libraries bundled on everyone's systems. And that every rust upstream
is aware of every vulnerability in every dependency it bundles. None of
that happens.


>=20
> I'm not that familiar with Haskell, but in Rust when you
> specify a dependency "foo" version "1.2.3", you are not pinning directly =
to
> version "1.2.3". You are actually saying "I depend on 'foo' whose semantic
> version is compatible with 1.2.3". That means the dependency resolver may
> resolve "1.2.99" (patch fix) or "1.99.0" (minor version bump). Hence, you
> don't need to manually update your dependencies every time a new version =
is
> published.

All package managers have something similar. The problem is that when
the sole way to build and distribute software is to bundle everything
with it, who cares? Nobody is maintaining long-term-support branches
for any rust libraries. If someone wants the old API, no problem,
they're already bundling it!

Now imagine that someone wants to untangle this mess and use dynamic
linking to make security updates feasible again. They immediately
encounter diamond dependency conflicts, because no one has ever cared
to avoid them, because everyone builds rust projects with cargo,
because that's the only way to avoid breaking your whole system every
three weeks on rust release day. We're stuck at square one.

Memory issues are relatively hard to find and exploit. In the big
picture, mitigating them is a small part of what it takes to run a
secure system. A viable cure for memory issues therefore can't take a
dump on the way the rest of a secure system is managed.


Received: (qmail 25875 invoked by uid 550); 15 Apr 2024 15:32:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25857 invoked from network); 15 Apr 2024 15:32:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=FnYgVeCVeO5csrnfWsHPB357il5O5uraS/NnxN0iB/0=; b=PLQijsiwK9T9FfY2VPtSbkiTZn
	qwdO/M9vavf56v/93FAkZXRQz6kRM6q0d7MTJm4ulcnauO/TAdH7n3NrUm8UwAaIRwRZqzJXnYoyZ
	gQ5XM0ON1e79EfbGPgFJVcK/+cgi5HIWdgCfzwCj+/IPqRZ80W6PKxCb1tlUJp4M+4pSn2OxidNIM
	0gEdXpHAGXiQonKDNjCzjsc5ccQcM8yt084hGzK0m8/e1OZNN3TgoB3qKjv/MplkmRrTPX4bDBsnp
	Xi8aZD5jG2wRQCIPqYYTk33CEKpNico7TYA5qbP4GdwCySaHf7K6gnEkObPhUpBs02LBkNPtLHHUK
	T3NLXx8Q==;
Date: Mon, 15 Apr 2024 16:32:02 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Zh1IcvB2TL4dItr9@remnant.pseudorandom.co.uk>
References: <20240414190855.GA12716@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240414190855.GA12716@openwall.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sun, 14 Apr 2024 at 21:08:55 +0200, Solar Designer forwarded:
> Some other container runtimes such as Docker and Podman do make use
> of network namespaces by default.

As an example of a less traditional container environment, Flatpak
optionally uses network namespaces (as implemented by bubblewrap,
bwrap(1)) to isolate apps from the network, and disabling
network namespaces will break the ability to run apps that have
`--unshare=network` in their manifests. I believe it will "fail closed"
in this situation (refusing to run the affected app, rather than running
the app but giving it unintended network access).

A workaround would be to run the affected apps with
`flatpak run --share=network ...`, or permanently reconfigure their
sandboxing parameters with `flatpak override --share=network ...`, but
either of those workarounds would remove the network isolation feature
and give the affected apps unrestricted network access.

Similarly, libgnome-desktop uses bubblewrap to run sandboxed thumbnailers
with no network access, mitigating vulnerabilities that might exist in
thumbnailers or the libraries that they use. Again, I believe it will
"fail closed", but I haven't checked.

Similarly, WebKitGTK uses bubblewrap to sandbox parts of itself with no
network access, xdg-desktop-portal uses bubblewrap for sandboxed icon
validation, and I'm sure there are others.
(<https://codesearch.debian.net/search?q=--unshare-net>)

So I suspect that the mitigation of disabling network namespaces is
likely to be too disruptive to be applicable on desktops, and only useful
on servers.

    smcv

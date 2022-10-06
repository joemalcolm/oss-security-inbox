Received: (qmail 15824 invoked by uid 550); 6 Oct 2022 18:26:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15800 invoked from network); 6 Oct 2022 18:26:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=0WPQU6wzHHRXGOPebJEuwJxw7JQF0ihj+WaiUS99wtI=; b=e8sm3wXP7FIpX5+X+Lm5nI5eTm
	xaQ6I4KmG1k0j4tevBob5imoXQol8ApGSbuDyGiM03jNk3V0V6IhgJ2KvuRZSqYho12vyVSJbcb6k
	bszNT0m1+c5vtmjxSOWgY6PiMY5jj3oJDeUP57MMhyVShX3/KVAxK6WJeyNqG68LaobApl3614wjT
	rn7HweLW0pjAo4HJ0CI4V71y9VrULH793lfFcuwHEVm8eQkirQrnlihR33rkLL6zjsxt/2xyU/3Py
	FpmbQlwQHuNivKlqUji1pPZ45Blo7SLB9e0Yf8ava0360VLHB6uV5H7FpbYzA0cckmEXE1yusVJ5E
	ENux3Ksw==;
Date: Thu, 6 Oct 2022 19:26:35 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com, dbus-security@lists.freedesktop.org
Cc: Demi Marie Obenour <demi@invisiblethingslab.com>
Message-ID: <Yz8d2yzrUF4r07ws@momentum.pseudorandom.co.uk>
References: <Yz6XZSTsVQm7VKia@momentum.pseudorandom.co.uk>
 <Yz7r3ke7oXMBHJ5A@itl-email>
 <Yz722hsDFWr/hqGb@momentum.pseudorandom.co.uk>
 <Yz8JmGvc3Y6iYaKR@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yz8JmGvc3Y6iYaKR@itl-email>
X-Debian-User: smcv
Subject: Re: [oss-security] dbus denial of service: CVE-2022-42010, -42011,
 -42012

On Thu, 06 Oct 2022 at 13:00:03 -0400, Demi Marie Obenour wrote:
> On Thu, Oct 06, 2022 at 04:40:10PM +0100, Simon McVittie wrote:
> > CVE-2022-42012 (which involves a
> > message that is odd but technically valid)
> 
> Should different-endian messages over AF_UNIX sockets just be rejected
> outright?

Probably not. I believe that would regress the ability to interoperate
with dbus-java, which can receive either endianness but always sends
big-endian messages.

It could also be annoying for proxying/forwarding tools like systemd's
systemd-stdio-bridge, which is used to forward D-Bus connections to a
remote bus's AF_UNIX socket via ssh (obviously out-of-band fd-passing
like the feature that triggers CVE-2022-42012 can't work that way, but
most of D-Bus is in-band), depending on whether systemd-stdio-bridge
deserializes and reserializes messages or whether it just streams data
without understanding its internal structure. There's nothing to stop
you from using a client on a little-endian PC to debug a service on a
big-endian embedded device over a ssh tunnel using systemd-stdio-bridge
or even socat, but in that scenario, each end of the connection will
be sending messages in its own endianness and receiving messages in the
other endianness.

If I was designing D-Bus today, I'd probably pick a canonical endianness
and stick to it (more like GVariant, parts of which are always LE),
but it's too late for that: the "wire protocol" has been stable since
about 2006, which was before I got involved.

    smcv

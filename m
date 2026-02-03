Received: (qmail 9349 invoked by uid 550); 3 Feb 2026 16:52:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1500 invoked from network); 3 Feb 2026 15:47:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thinkmo.de; h=
	in-reply-to:content-disposition:content-type:content-type
	:mime-version:references:message-id:subject:subject:from:from
	:date:date:received:received; s=mail202312; t=1770133620; bh=VQ8
	daxCj2tMXcAoOvdVfbQAUnVvxjvzrXeYFLLrNk8w=; b=WgQ0QtjG9SI4+40YPXo
	EZRqL6JdluDWX0oc9VFOSDRZm1Zx35UWL0wG4DClKYIXtjEYS1f/sKx22pWDkI2Z
	RrvWBvDqo8usG25ZVaC8LPQJ6ShSgIfA/tLGuL9vaqVjorcAAI09zJPXte+JEJJI
	P4FjsSk+D+307llvCdGHVJzC7UeesKTlK1AwbhXwSRrUNuFI9CnEll7fP10moKGp
	HFZAOzH4mWW4Ob4++vtOFLKiChEFCjp4KEc5dmGjmVwgEaG43X+No4LvKbcto0fs
	/M07HR8xJz2RP+WxJ3DHkszixfuHOEKL8EEYRm02qzBYuhxWO/hUy+kdD6zBJyo2
	gXg==
X-Virus-Scanned: Debian amavis at 
Date: Tue, 3 Feb 2026 16:46:56 +0100
From: Bastian Blank <bblank@thinkmo.de>
To: oss-security@lists.openwall.com
Message-ID: <20260203154656.lbkt4j7ucvv2lprh@shell.thinkmo.de>
Mail-Followup-To: Bastian Blank <bblank@thinkmo.de>,
	oss-security@lists.openwall.com
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
Subject: Re: [oss-security] Systemd vsock sshd

On Sat, Dec 27, 2025 at 08:46:49PM -0700, Greg Dahlman wrote:
>   **vsock exists in the global namespace** - Unlike "af_inet" sockets,
>   vsock connections are not bound to a particular network namespace.
>   By default they are visible to every namespace on the host.

Every address family in Linux needs to implement it's own namespace
handling.  In 2007, all existing address families got a check to only
allow the inital network namespace.  af_vsock is newer and never got
this check.

Every point after the first one is just a result, not a cause.

So a fix would be something like that (untested, no time right now):

--- a/net/vmw_vsock/af_vsock.c
+++ b/net/vmw_vsock/af_vsock.c
@@ -2553,6 +2553,9 @@ static int vsock_create(struct net *net, struct socket *sock,
         if (protocol && protocol != PF_VSOCK)
                 return -EPROTONOSUPPORT;
 
+        if (!net_eq(net, &init_net))
+                return -EAFNOSUPPORT;
+
         switch (sock->type) {
         case SOCK_DGRAM:
                 sock->ops = &vsock_dgram_ops;

But I have a question:  why do you name sshd, while every AF_VSOCK
listener is affected?

Bastian

-- 
Warp 7 -- It's a law we can live with.

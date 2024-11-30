Received: (qmail 9822 invoked by uid 550); 30 Nov 2024 21:22:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12133 invoked from network); 30 Nov 2024 21:05:25 -0000
X-KPN-MessageId: cc2e5fa9-af5e-11ef-9dde-00505699b430
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xs4all.nl; s=xs4all01;
	h=content-type:mime-version:message-id:subject:to:from:date;
	bh=OXV7qKsqya1i0+gyvtZooAEcdx4doG2kk+1sJlQ5H1Q=;
	b=p4yOM6z7Gr1fLEmzlUvgKz8j+scxuoa0A/6SkTmPRZsG7Hr3CPkv+3eUDn2PMiYLF1qhlPr8jCRP7
	 yRa90E5HtFuZKgTQS1JJax6rwSWGZ9mpXSy7UNyTmguTd0mEk1UdWcWDlu7PkTshFhZJc+mFmBEheT
	 4cECQlKyvcpTvSA+ZHu3TxGJIKVNc/HRx42SysfA4OcQAuZ4PaGlzb9F01sj3EvqWUnzFE1WTu3pGT
	 qG9uYdlqdjzUSgwAPDBo9gkPCNmDgU1tXNpwFc/h+IhGxKmR8tTJ0uhUrjQabkjPdufY9oQRnJDmNq
	 j5lSxH1rj6JS6iZJGf+xOtYv2whnbgA==
X-KPN-MID: 33|6h6LG3tpxvSmNQ3OVN/24ZVo74dPz970i3hotUu0lYUjTeP6xwEvqn5WwGG7Fsu
 aJboWklF6yy/C4M66nBJIi7BwDaeXD/Ra1XSY29MxGQ4=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|gLuTB2B1zEzfSnBd0dRvFA8Iq3XWlx0WkJ0+pS94IWDK0C0uUloiySxa97O4UXH
 Wdfk4/3DuwGz88jKkPpbptQ==
X-Originating-IP: 82.169.217.143
Date: Sat, 30 Nov 2024 22:05:16 +0100
From: Jeroen Roovers <jer@xs4all.nl>
To: tianshu qiu <jimuchutianshu97@gmail.com>
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Marcel Holtmann
 <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>
Message-ID: <20241130220516.2debb17b@del.fritz.box>
In-Reply-To: <CAH_BBqfO2dUX+H7RAUDfPJUG=oofYP9+SLJU07MUWkW8CW6Huw@mail.gmail.com>
References: <20241129044032.GA5009@openwall.com>
	<CABBYNZKNpv7ArhxYoZhO8S5zdqFj9ydMb+eg9tyzDF-i+g=N5g@mail.gmail.com>
	<CAH_BBqfhd=4MP8XRWTvfcqFkQtZzwCOtqACtio0tGLKBp+vE0Q@mail.gmail.com>
	<20241130054634.GA12730@openwall.com>
	<CAH_BBqfO2dUX+H7RAUDfPJUG=oofYP9+SLJU07MUWkW8CW6Huw@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux: Race can lead to UAF in
 net/bluetooth/sco.c: sco_sock_connect()

On Sat, 30 Nov 2024 16:32:17 +0800
tianshu qiu <jimuchutianshu97@gmail.com> wrote:

> After careful analysis and debugging,i guess the commit:
> https://github.com/torvalds/linux/commit/e6720779ae612a14ac4ba7fe4fd5b27d900d932c
>  has solved the UAF.
> The introduction of kref object ensures the dangling sco_conn object
> being freed in the function sco_conn_del when asynchronous hci event
> thread is invoked, which stops
> the subsequent exploit chain.
> 
> I'm not sure if this commit is related to the email I sent, because i
> sent the first email to security@kernel.org on  November 14th, and
> the commit was on  November 15th.

The commit you mention above was submitted on 1 October 2024:


commit e6720779ae612a14ac4ba7fe4fd5b27d900d932c
Author: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
Date:   Tue Oct 1 15:46:10 2024 -0400

    Bluetooth: SCO: Use kref to track lifetime of sco_conn

    This make use of kref to keep track of reference of sco_conn which
    allows better tracking of its lifetime with usage of things like
    kref_get_unless_zero in a similar way as used in l2cap_chan.

    In addition to it remove call to sco_sock_set_timer on
    __sco_sock_close since at that point it is useless to set a timer
    as the sk will be freed there is nothing to be done in
    sco_sock_timeout.

    Signed-off-by: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>


Luiz' commit from 15 November 2024 is this one:


commit 0b882940665ca2849386ee459d4331aa2f8c4e7d
Author: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>
Date:   Fri Nov 15 10:45:31 2024 -0500

    Bluetooth: MGMT: Fix slab-use-after-free Read in set_powered_sync

    This fixes the following crash:

    ==================================================================
    BUG: KASAN: slab-use-after-free in set_powered_sync+0x3a/0xc0
    net/bluetooth/mgmt.c:1353 Read of size 8 at addr ffff888029b4dd18
    by task kworker/u9:0/54

    [...]

    Reported-by: syzbot+03d6270b6425df1605bf@syzkaller.appspotmail.com
    Tested-by: syzbot+03d6270b6425df1605bf@syzkaller.appspotmail.com
    Closes: https://syzkaller.appspot.com/bug?extid=03d6270b6425df1605bf
    Fixes: 275f3f648702 ("Bluetooth: Fix not checking MGMT cmd pending
    queue") Signed-off-by: Luiz Augusto von Dentz
    <luiz.von.dentz@intel.com>



Kind regards,
     jer

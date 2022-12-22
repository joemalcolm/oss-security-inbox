Received: (qmail 3113 invoked by uid 550); 22 Dec 2022 12:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7354 invoked from network); 22 Dec 2022 03:35:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/OA0ubOufk+N+RXGNmblnJf8rAWvL1HZpITfVWxt+qw=;
        b=VMe4wZqcuL4i9NZUCR4p4KDBKepqhxlocVd9okVWShexda8UdNqdJljhyMGbEQ41Qt
         ltHyRizfSYU+MffvlPrEqtC8ldaBVBOuNTy27ZdhY66SImiSn1Nw91ajRVG2xd28e1Vx
         tZQm1xi9N52mCPTzZlOGRgEl/KqsPYoyZ+5oXRMZOqZdm5ejK+MXpbwxDqU72+Fq85Sg
         E+onjlab6lViWQFkxgA36//PwCtTF9lFAEROQNuv4UPt4z4uDmgJdFI4xfz866BOCmqX
         I3Vk3cHXqgn4Z46fK9e0hrgaDX4/EQERd9HREHJARzWOaLVUEOrwftifbwHJlROYlB1g
         2/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/OA0ubOufk+N+RXGNmblnJf8rAWvL1HZpITfVWxt+qw=;
        b=7o7WwsHSl4AVjUo1cNHvFeJgXWay3JDO3o2RdwtAJH7x9THNyj9lCla68Run/ydQAu
         xQDAjVOpzyenC3MvdcaLnQ7CBZbIBBDKkelk2X4wXLj3GbZeYJgsQlI7bkfGuvu41xQL
         Eo9qrogmK2MJgI3/OX+eoRP3R0Kt4BDEcgjZFKFL4azsFjYGh2ff+wk2GIF9/eE6hJ6b
         vBjAQ1CHHHvpt8IvOhz4zcsYSMHJhcZiO4IDiEBElUqzfQIiM+QWVpQo0b+rjLoW6pXQ
         R1gwn9ZaknZlJexbJf03zZv6xJd81hiT+ZmzeirhP0SJ/x4VCg7Oo+GhOpoPkN2tZrjW
         WQaw==
X-Gm-Message-State: AFqh2kqhpYo66rq2yeNw+UjDu2jQE6ptr9VctCeimC9+DlihQaJTTxye
	dIQki5C9vMmRvNuG1WCwA+0sRrmDkXK2LQ==
X-Google-Smtp-Source: AMrXdXvBcIXNVQE8oT7SPoWbawMwX2tPdNYO4Bfim0WJBd6qZPFU5VaHB22WGcZcM4ixWRuTUv6NBQ==
X-Received: by 2002:a0c:fc51:0:b0:4e8:c749:73a7 with SMTP id w17-20020a0cfc51000000b004e8c74973a7mr5022327qvp.37.1671680116588;
        Wed, 21 Dec 2022 19:35:16 -0800 (PST)
Date: Thu, 22 Dec 2022 11:35:14 +0800
From: Xingyuan Mo <hdthky0@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <Y6PQctuK5/GtDRa5@ip-172-31-85-199.ec2.internal>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] Linux kernel: use-after-free in io_sqpoll_wait_sq

Hello,

There is a use-after-free vulnerability in io_sqpoll_wait_sq() in fs/io_uring.c
in linux-5.10.y through v5.10.154, which allows an attacker to crash the kernel,
resulting in Denial of Service.

=*=*=*=*=*=*=*=*=  Bug Details  =*=*=*=*=*=*=*=*=

9028:  static int io_sqpoll_wait_sq(struct io_ring_ctx *ctx)
9029:  {
9030:  	int ret = 0;
9031:  	DEFINE_WAIT(wait);
9032:
9033:  	do {
9034:  		if (!io_sqring_full(ctx))
9035:  			break;
9036:
9037:  		prepare_to_wait(&ctx->sqo_sq_wait, &wait, TASK_INTERRUPTIBLE);
9038:
9039:  		if (unlikely(ctx->sqo_dead)) {
9040:  			ret = -EOWNERDEAD;
9041:  			goto out;
9042:  		}
9043:
9044:  		if (!io_sqring_full(ctx))
9045:  			break;
9046:
9047:  		schedule();
9048:  	} while (!signal_pending(current));
9049:
9050:  	finish_wait(&ctx->sqo_sq_wait, &wait);
9051:  out:
9052:  	return ret;
9053:  }

On line 9037 of fs/io_uring.c, a wait_queue_entry object on the stack named wait
is added to wait queue ctx->sqo_sq_wait, which should be removed from
ctx->sqo_sq_wait by calling finish_wait() once the current task does not need to
wait for an available submission queue entry. Though, On line 9039, if
ctx->sqo_dead is not 0, the control flow jumps to out, skipping the call to
finish_wait() on line 9050. As a result, wait still exists in ctx->sqo_sq_wait
even when the current task exits kernel mode or comes to an end, which means
that the two entries before and after wait each contain a stale pointer to the
expired kernel stack space. If one of the two entries is later unlinked from
ctx->sqo_dead, the memory of the expired stack space pointed to by the stale
pointer will be corrupted, resulting in use-after-free.

As mentioned earlier, the condition for triggering the vulnerability is that
ctx->sqo_dead is not 0, which can be achieved by forking a new process and
terminating it quickly. When the new process exits, the copied io_uring file
descriptor will be closed, causing the following call chain to be triggered:
io_uring_flush()->io_uring_cancel_task_requests()->io_disable_sqo_submit(). In
io_disable_sqo_submit(), ctx->sqo_dead is assigned 1 on line 8732.

8729:  static void io_disable_sqo_submit(struct io_ring_ctx *ctx)
8730:  {
8731:  	mutex_lock(&ctx->uring_lock);
8732:  	ctx->sqo_dead = 1;
8733:  	if (ctx->flags & IORING_SETUP_R_DISABLED)
8734:  		io_sq_offload_start(ctx);
8735:  	mutex_unlock(&ctx->uring_lock);
8736:
8737:  	/* make sure callers enter the ring to get error */
8738:  	if (ctx->rings)
8739:  		io_ring_set_wakeup_flag(ctx);
8740:  }

=*=*=*=*=*=*=*=*=  Patch  =*=*=*=*=*=*=*=*=

The patch can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v5.10.161&id=0f544353fec8e717d37724d95b92538e1de79e86

=*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=

Xingyuan Mo and Gengjia Chen of IceSword Lab, Qihoo 360 Technology Co. Ltd.

Best Regards,
Xingyuan Mo

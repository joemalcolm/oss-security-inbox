Received: (qmail 15627 invoked by uid 550); 5 Nov 2023 17:41:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13537 invoked from network); 5 Nov 2023 17:40:34 -0000
Date: Sun, 5 Nov 2023 18:40:29 +0100
From: Solar Designer <solar@openwall.com>
To: Pietro Borrello <borrello@diag.uniroma1.it>
Cc: oss-security@lists.openwall.com
Message-ID: <20231105174029.GC23224@openwall.com>
References: <CAEih1qVJxs7j7XAjjjpmK_xFit+sekDuHCOzsaExmMh6ZjG48Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEih1qVJxs7j7XAjjjpmK_xFit+sekDuHCOzsaExmMh6ZjG48Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel: sctp: KASLR leak in inet_diag_msg_sctpasoc_fill()

On Mon, Jan 23, 2023 at 07:39:41PM +0100, Pietro Borrello wrote:
> We reported a type confusion in inet_diag_msg_sctpasoc_fill() in
> net/sctp/diag.c, which uses a type confused pointer to return
> information to userspace when issuing a list_entry() on
> asoc->base.bind_addr.address_list.next when the list is empty.
> 
> The list, in theory, should never be empty, but it can be when binding
> an SCTP socket with something like:
> ```
> servaddr.sin6_family = AF_INET6;
> servaddr.sin6_port = htons(0);
> servaddr.sin6_scope_id = 0;
> inet_pton(AF_INET6, "::1", &servaddr.sin6_addr);
> ```
> 
> And then request a connection to:
> ```
> connaddr.sin6_family = AF_INET6;
> connaddr.sin6_port = htons(20000);
> connaddr.sin6_scope_id = if_nametoindex("lo");
> inet_pton(AF_INET6, "fe88::1", &connaddr.sin6_addr);
> ```
> 
> The impact of the type confusion is a KASLR leak since the `laddr.v6.sin6_addr`
> is returned from the type confused pointer, which overlaps with `struct
> sctp_endpoint *ep` of the `struct sctp_association`.
> 
> The fix from the maintainer prevents the connection to the socket with
> unmatched scopes and will be merged soon:
> https://lore.kernel.org/linux-sctp/9fcd182f1099f86c6661f3717f63712ddd1c676c.1674496737.git.marcelo.leitner%40gmail.com/T/

This was assigned CVE-2023-1074:

CVE-2023-1074 - KASLR Leak in inet_diag_msg_sctpasoc_fill()
patch:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=458e279f861d3f61796894cd158b780765a1569f
oss-security: https://www.openwall.com/lists/oss-security/2023/01/23/1

Alexander

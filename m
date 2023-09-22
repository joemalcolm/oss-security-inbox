Received: (qmail 1164 invoked by uid 550); 22 Sep 2023 15:35:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32717 invoked from network); 22 Sep 2023 15:35:30 -0000
Date: Fri, 22 Sep 2023 17:35:16 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Vincent Rabaud <vrabaud@google.com>
Message-ID: <20230922153516.GA17264@openwall.com>
References: <20230921205250.GA13106@openwall.com> <20230922072817.092917d2.hanno@hboeck.de> <20230922105410.GA15143@openwall.com> <CAJMnc16px2pgN9qmH6iw=by+DLu4cXBmZZpDGe3Lf_QWPEW0bg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJMnc16px2pgN9qmH6iw=by+DLu4cXBmZZpDGe3Lf_QWPEW0bg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in WebP Codec

On Fri, Sep 22, 2023 at 04:50:44PM +0200, Vincent Rabaud wrote:
> Hi, we have commented on that here:
> https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=62136#c7

Thank you!  I include the relevant comments below:

> Comment 6 by t...@ritter.vg on Mon, Sep 18, 2023, 4:58 PM GMT+2
> 
> Can I request a CVE assignment for this issue (so I can note it
> correctly in Firefox advisories)?
> 
> Comment 7 by jz...@google.com on Tue, Sep 19, 2023, 3:22 AM GMT+2
> 
> This was an incorrect check in an assert(). A release build would not be
> negatively affected. The conditions were updated, but previously the
> file would not cause an issue in that mode. Vincent, please correct me
> if I'm wrong.
> 
> Comment 8 by vrabaud@google.com on Tue, Sep 19, 2023, 11:08 AM GMT+2
> 
> Exactly. And instead of fixing the assert, the patch uses an early exit
> to not reach the assert, which is also an optimization.

Vincent, what about these commits? -

commit dce8397fec159c9edfeec7c6388cb81428c87ed8
Author: Masahiro Hanada <hanada@atmark-techno.com>
Date:   Thu Sep 14 19:37:24 2023 +0900

    Fix next is invalid pointer when WebPSafeMalloc fails

    When WebPSafeMalloc fails on VP8LHuffmanTablesAllocate,
    next is not initialized to NULL.
    VP8LHuffmanTablesDeallocate uses next to know the following nodes.
    A patch fixes this issue.

    Change-Id: I144ae84cd97e5bca227018ef1afa95361267902c

commit 433c7dca11bb5b001ce5ad36ac1afd2906a2f13e
Author: Vincent Rabaud <vrabaud@google.com>
Date:   Thu Sep 14 09:31:19 2023 +0200

    Fix static analyzer warnings.

    Change-Id: I45f0db2310b1188809963af93240e3d438f807b8

The "next is not initialized to NULL" one sounds like it could mean
stale memory contents (possibly deliberately sprayed) could be used as a
pointer, so it could be a security issue.

The warnings fixes could be just that, or some of those warnings could
have been for real issues (perhaps also something used uninitialized).

In other words, are the issues fixed there known to be benign, are not
sufficiently researched, or researched and known to be vulnerabilities?

Alexander

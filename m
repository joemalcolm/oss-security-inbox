X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2396" "Wednesday" "9" "March" "2016" "15:59:25" "+0000" "Tim Brown" "tmb@65535.com" "<2733178.4axvx009n6@sarpedon>" "53" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030915:59:25" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        tmb@65535.co Mar  9   53/2396  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<56DC959A.6060200@gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>" "<56DC959A.6060200@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32476 invoked by uid 550); 9 Mar 2016 15:59:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32458 invoked from network); 9 Mar 2016 15:59:49 -0000
Message-ID: <2733178.4axvx009n6@sarpedon>
User-Agent: KMail/4.14.10 (Linux/4.2.0-1-amd64; KDE/4.14.14; x86_64; ; )
In-Reply-To: <56DC959A.6060200@gmail.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net> <56DC959A.6060200@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Date: Wed, 09 Mar 2016 15:59:25 +0000
From: Tim Brown <tmb@65535.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

On Sunday 06 March 2016 21:39:54 Gsunde Orangen wrote:

> I totally agree.
> The concern addressed by Kurt initially is fully valid (for both
> researchers and for companies that are not on Mitre's product/sources
> list), so a new (better: additional) solution is required.
> However, creating a new standard independently of CVE would be too
> disruptive and be a disservice to the software industry.

Quite, as much as I appreciate the options presented over the last few days, I 
don't think any of them are the winning horse.

(To paraphase) if MITRE does not exist then it must be reinvented however the 
days of multiple competing indexes of vulns should be avoided if possible. We 
only have to look at the AV community to see how that degenerates. This one of 
the main reasons that when we open sourced out disclosure tool kit, we 
explicitly mandated the use of CVEs for tracking.

> I'd propose to work out a new solution together with Mitre, whilst
> keeping the CVE IDs as today.

As would I however, even with pointers from SC about who to poke within MITRE 
we came up short tracking a warm body down for (~7) months (even one that was 
willing to say no). That being said, we have now located a new warm body at 
MITRE who has made themselves known to us, I am more than happy to approach 
them about the following:

> Since 2014, virtually unlimited number of CVE IDs can be assigned per
> year [1], so a solution could be that
>  - Mitre continues to assign 4 and 5 digit IDs as today
>  - 6 digit IDs are reserved for the new process (hosted outside Mitre)
> If more than one million vulnerabilities need to be addressed in one
> year, we could follow the rule (odd digits -> Mitre, even digits ->
> "other process")
> 
> >From Mitre's POC, this "other process" would become a "CNA", just with
> 
> its own policy and process definition, not prescribed by Mitre.
> It would soon become clear to everyone (and all tools and products that
> rely on CVE) where to look at for the authoritative vulnerability
> information.
> 
> And yes: OWASP.org could certainly be a perfect host for that new "CNA"
> - as Mark offered earlier ;-)

Indeed, such a project requires a vendor neutral host. If OWASP are up for it, 
then I would gladly support them running with the above proposal, if not then 
a good faith alternative ought to be sought.

Tim
-- 
Tim Brown
<mailto:tmb@65535.com>

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3291" "Monday" "7" "March" "2016" "08:24:30" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20160307162430.GG1250@sentinelchicken.org>" "74" "[oss-security] CVE Replacement Via Blockchains (was: Concerns about CVE coverage shrinking - direct impact to researchers/companies)" nil nil nil "3" "2016030716:24:30" "[oss-security] CVE Replacement Via Blockchains (was: Concerns about CVE coverage shrinking - direct impact to researchers/companies)" (number mark "U       tim-security Mar  7   74/3291  " thread-indent "\"[oss-security] CVE Replacement Via Blockchains (was: Concerns about CVE coverage shrinking - direct impact to researchers/companies)\"\n") "<20160305224306.GE1250@sentinelchicken.org>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>" "<20160305205322.GA23295@openwall.com>" "<20160305224306.GE1250@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15433 invoked by uid 550); 7 Mar 2016 16:24:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15368 invoked from network); 7 Mar 2016 16:24:52 -0000
Date: Mon, 7 Mar 2016 08:24:30 -0800
From: Tim <tim-security@sentinelchicken.org>
To: oss-security@lists.openwall.com
Cc: mark@curphey.com
Message-ID: <20160307162430.GG1250@sentinelchicken.org>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org>
 <20160305172039.GA20796@openwall.com>
 <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
 <20160305205322.GA23295@openwall.com>
 <20160305224306.GE1250@sentinelchicken.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Replacement Via Blockchains (was: Concerns about CVE coverage
 shrinking - direct impact to researchers/companies)


> ... to make following proposal
> 
> RFC: "Distributed Cryptoenhanced Vulnerability Enumeration (DCVE)":
> 
> To address the points mentioned before, assume we would take the a
> blockchain database [0] approach to handle most of the issues for us.
> 
> a) Chain layout: Start a chain every year, so it will not grow arbitrary
> large. The root entry is the PGP key of chain manager (some group, board
> - - does not be the ones running the data systems)
> 
> b) Chain hosting: as the information is easy to distribute,
> cryptographically secured, redundant, any number of volunteers can host
> them.
> 
> c) Entry: A "permitted contributor" signature is made using one of the
> previous keys already recorded onto the key of the new contributor.
> 
> d) Proof of work: To add elements perform calculation (1
> non-parallelizable CPU-h? - this is also the minimal delay for updates),
> thus limiting the amount of garbage to be added by adversaries.
> 
> e) Unique IDs: The unique ID for a DCVE entry is the SHA256-hash of the
> first element dealing with that issue.
> 
> f) Updates: The entry may be updated by anyone, but usually one may want
> to filter out all entries not from the creator. The creator may later on
> approve foreign entry by adding a linking the record (or the key of the
> contributor) to the chain by himself.
> 
> g) Related material: To keep chain entries small (16kb?), they may
> reference external material via http(s)-URLs. If it is a single file,
> checksum information can be added. When important material is found,
> anyone feeling the need to mirror it can create an update to that entry
> and add the reference to the mirrored data.
> 
> h) Sensitive information: Each DVCE chain may contain also encrypted
> messages. The key can be added later on to the chain, thus making the
> previously recorded information public.
> 
> i) Non-repudiation (create): Each added entry has to be signed with the
> key of the creator)
> 
> j) Non-repudiation (read): When important for the creator, giving read
> access to one encrypted DCVE-chain should only happen after receiving a
> signed access-request.
> 
> k) Prioritizing: to ease sifting through the important entries, any
> contributor can add a rating entry to DVCE chains to give opinion to
> their risk but also the quality of the chain (thus contributors may
> build a reputation, making it easier to get heard).
> 
> Any thoughts on the idea itself?
> How to realize: summer of code?


This is a really nice idea.  Especially the part about agreeing not to
take legal action in order to read the content.  It may not be legally
enforcable everywhere, but it certainly helps and would allow the
block chains to be mirrored anywhere it does apply.

There are a variety of technical issues to be solved, but it seems
doable.  For instance, you'd need some kind of layman's web front-end
that gives people access to everything, with appropriate disclaimers
on it, but all sounds doable.  The up-front work would be significant,
but once it is out there, the hosting and moderation work could be
made minimal with the right design.

Mark: Does this sound interesting to you?  With your expertise in
getting projects started, maybe this is something you'd be interested
in helping get off the ground.

tim

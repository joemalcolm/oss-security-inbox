Received: (qmail 17682 invoked by uid 550); 24 Feb 2026 22:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23954 invoked from network); 24 Feb 2026 21:44:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tu-dortmund.de;
	s=unimail; t=1771969475;
	bh=TEJy/R1V/gzZIIke+3UH24BnnWMitMfpmfpvfmzl8fg=;
	h=Date:To:From:Subject;
	b=RloH8hEaZsr4eH2lHQtquul67rltg1o1v5sxMLCbRvEjANzDl+cfBcfk9h2Js4Peh
	 E66eAi7gOuzzjs3JL/9ZYsNFTOH7OIDB4rfETQt0Ue5OQkB3TIzXRt+B+YEcgbPz1E
	 FLvIbvA6oUK2ViGDSAx4NzmtCYv/DlpQ29x1wF9Y=
Message-ID: <6b70985a-cc52-49a8-b4fe-4345bf33b51d@tu-dortmund.de>
Date: Tue, 24 Feb 2026 22:45:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Jan Bessai <jan.bessai@tu-dortmund.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Unsound Workshop at ECOOP 2026

UNSOUND 2026 - Sources of Unsoundness in Type Systems and Verification
Workshop co-located with ECOOP 2026, Brussels, Belgium

https://2026.ecoop.org/home/unsound-2026

The 3rd UNSOUND workshop covers all aspects of unsoundness in type 
system and verification tools and theories. It is meant to entertain a 
community-wide discussion on possible sources of unsoundness and how to 
avert, address, and tackle them. We are particularly interested in the 
presentation of previously unknown or lesser known problems as well as 
discussions of well-known soundness holes and how they affect the 
day-to-day of programming language researchers and users.

Important Dates:
--------------------------
2026-03-31: Submission Deadline
2026-04-14: Author Notification
2026-06-30: Workshop Date

Goals
-----------
The goals of the workshop are:
- To discover sources of unsoundness in different type systems and 
verification tools
- To share experiences and exploits on how different tools can either be 
broken or expose confusing behaviour
- To broaden the attention of researchers to topics which so far escaped 
their focused area of research; e.g., from only type correctness to also 
avoiding stack overflows
- To challenge assumptions uncritically assumed as valid reasoning 
principles in the field
- To connect researchers from different areas of type systems and 
verification
- To engage with and encourage the next generation of researchers in 
verification

Examples for possible contributions would be:
- Defining soundness and how it can diverge between languages and tools.
- Exploring the divergences between user assumptions and actual 
definitions of soundness.
- Summarising common sources of unsoundness and why they emerge.
- Reporting logic errors in the specification of a verification tool, 
e.g., universe inconsistencies.
- Finding bugs in the implementation of type & proof checkers.
- Discovering overconfident generalisations of sound subsystems to 
larger settings, e.g., imperative techniques in OO settings.
- Formally characterising escape hatches, which most practical systems 
possess, and finding how to use them without compromising the soundness 
of the parts of a program that don’t use them.
- Reporting on unexpected soundness holes in type systems for dynamic 
languages, which can lead to more surprises at runtime.
- Disproving soundness statements in published papers.
- Finding statements proven in published literature that should no 
longer be trusted because they relied on a broken system.
- Simply proving False in a verification tool or exhibiting 
non-termination in a total language; in particular, we are interested in 
practical ways to trick available tools to accept wrong input.
- Breaking reasoning about programs with types by breaking the type 
system of the programming language in new and interesting ways.
- Bad interactions between axiomatic choices in libraries used in proofs.
- Impacts of the false sense of security when the chain of trust is 
broken by subtle unsoundness in verification tools.

Call for Presentations
--------------------------------
The submission should consist in a two-page extended abstract. 
Additional material (bibliography, related work, and code examples) will 
not count toward this limit. We strongly encourage authors to include 
instructions to reproduce results or exploits.

There will be a friendly and open-minded peer review process, focusing 
on checking that the submitted material is appropriate for presentation 
at the workshop and likely to spur interesting conversations.

Accepted extended abstract will be made publicly available on the 
workshop webpage. However, presentation at UNSOUND does not count as 
prior publication, will not appear in formal proceedings, and can later 
be published at a conference of the authors’ choosing.

Instruction to Authors and Submission guidelines
---------------------------------------------------------------------
Submissions should be made via Easychair
https://easychair.org/conferences?conf=unsound2026
by 2026-03-31 (AoE).

Submitted abstracts should be in portable document format (PDF), 
formatted using the ACM SIGPLAN style guidelines. Authors should use the 
acmart format, with the acmsmall sub-format for ACM proceedings. For 
details, see:

http://www.sigplan.org/Resources/Author/#acmart-format

It is recommended to use the review option when submitting an abstract; 
this option enables line numbers for easy reference in reviews.

Who is involved?
--------------------------
Unsound is currently managed by Jan Bessai, Colin Stebbins Gordon, 
Vasileios Koutavas, Marco Servetto, and Lionel Parreaux.

You can chat with us at unsound2026@easychair.org

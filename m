Received: (qmail 1569 invoked by uid 550); 29 May 2024 02:12:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15573 invoked from network); 29 May 2024 00:54:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org;
	s=2; t=1716944050;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=N07IDJhhAu3rgfAONsLIvpZZF1MF0PjzVoDwWDZH2oM=;
	b=RtqMwECKFqoCj6qxaY1KhHRu9h97+kvFbw4GouingJIZsKvCGfefjuQPV3SwpNffyIBr7r
	45TwlYSodQupsMovxtgfLsEptyw8LCJpcYEweEoiyupT4PvXCLv8fNBkSYTQmzRZDEVi1F
	QOYHOub3dfuWrlG4RylywFNkAokD6XFo7mVNF++6LSCJZiGyb32FRWU3awARK6tlf5X6La
	NQWXM8OXdMk8n6r77WOYUPtf60LqsBOCP1PybN039nb65KNMa/pM9uoursF/zqOkhxChGF
	SSZXIg8BJiz/3yZJJy6ORgxk3jBc6fjz5L07iAQt3cjh8vPF5LASRn/DfdOSrQ==
Date: Wed, 29 May 2024 09:53:48 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: oss-security@lists.openwall.com
Message-ID: <ZlZ8nCsZUZxhKwCf@codewreck.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] List linux CVEs for a given stable release?

Hi Greg,

(Cc-ing oss-security because I think more people there might be
interested than people subscribed to cve@kernel.org and I didn't want to
cross-post to multiple lists)


Up until last month someone had been managing a linuxkernelcves[1][2]
site, but it's somehow gone without a trace (DNS emptied, no message I
could see announcing it anywhere)

[1] https://www.linuxkernelcves.com
[2] https://github.com/nluedtke/linux_kernel_cves


With the new vulns[3] repo I thought I could do similar search there,
but while there are scripts to search by commit ID or by CVE I don't see
anything allowing search for issues affecting a given stable release.

[3] https://git.kernel.org/pub/scm/linux/security/vulns.git/

My motivation here is double:
- We notify our users of notable CVEs fixed on every update to encourage
them to upgrade every time (it's sad, but in the embedded world not
updating is still the norm despite our efforts to make upgrades as
painless as possible... New regulations are coming so hopefully that
will slowly improve, but as of now such motivations help)
- I'm currently not watching patches entering newer stable branches as
closely, so if there are any new CVEs not fixed in the latest 5.10 I'd
like to check if some impact us and will help with backports as possible
(we're a small company so my time is limited, but might as well give
back when I can)


The information is there in the json files, so it's just a matter of
writing some scripts to check them, but I can't believe there's none so
I probably have missed something.

Does someone have such a script that'd list the latest CVEs for a given
tree?

Thanks,
-- 
Dominique Martinet | Asmadeus

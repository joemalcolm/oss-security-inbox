Received: (qmail 23568 invoked by uid 550); 10 Mar 2025 13:30:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22512 invoked from network); 10 Mar 2025 13:30:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc
	:Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=s24adCglRGGzCFqacmSMsXxRNRvT0693lgTUotMhr64=;
	i=b49a205f73f09af5fde31f6781a721d6b26ace42@notcom.org; t=1741613450;
	x=1742261450; b=rKd/l1z+tLMqYeenzfLkZOyuccLfeI4TvfUlanTle3JqCfzFF8OrOrDXU5Xt1
	PQ52EMGwpSxoUV1xB9uVwLuYXsE1oi6k8zESV3n1aOtxX95TGv64k20i/PL/bpg5dokXHCFq/5YQA
	7kG9Hi6tuvALMAYqGhdhnK+tB3FerfENrBMlF3oiKee9IbEYHYX1WZSlitDCmSWsZu1muM8w8Mmlw
	utJ+VpThSrZdU5DAmAOcs+H62iS4v+MPQuEnyTWbjK4JZIXCOsbPcYJlX6uK7JbHdUurylfoV70nS
	7douMRACduvSynr8w8Q42N8CPFOTcDjyR+dJ2eYDCVI1E80ryw==;
Date: Mon, 10 Mar 2025 15:30:30 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <ovqbvdsvupbr2dse76qem7ukiyidoqdynmm4rn7ah5kqiagugg@xbgvxewonj4p>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20241002-60-525451
Subject: [oss-security] CVE-2025-1937+more: Numerous memory-safety issues in Firefox &
 Thunderbird

Last week Mozilla published security advisories for Firefox and Thunderbird
which are overall rated "high" for the latest versions (136) and "critical" for
the currently-supported ESR releases. However the only issue ranked
critical only affects Android, looks like desktop versions top out at high.

The advisories list a large number of memory-safety issues affecting both
products. For Thunderbird, it appears that all issues are related to browser
functionality; I don't see any related specifically to the e-mail handling side.

Mozilla advisories: <https://www.mozilla.org/en-US/security/advisories/> (the March 4 list)

Debian has shipped updates for bookworm for both FF and TB. DSAs:

FF: <https://www.mozilla.org/en-US/security/advisories/mfsa2025-16/>
TB: <https://www.mozilla.org/en-US/security/advisories/mfsa2025-16/>

High/critical issues from both for 128-based ESR versions from the Mozilla
advisories, excluding Windows-only:

CVE-2024-43097: Overflow when growing an SkRegion's RunArray

Reporter
    Google Android
Impact
    critical

Description

In resizeToAtLeast of SkRegion.cpp, there was a possible out of bounds write due
to an integer overflow


CVE-2025-1931: Use-after-free in WebTransportChild

Reporter
    sherkito
Impact
    high

Description

It was possible to cause a use-after-free in the content process side of a
WebTransport connection, leading to a potentially exploitable crash.


CVE-2025-1932: Inconsistent comparator in XSLT sorting led to out-of-bounds access

Reporter
    Ivan Fratric of Google Project Zero
Impact
    high

Description

An inconsistent comparator in xslt/txNodeSorter could have resulted in
potentially exploitable out-of-bounds access. Only affected version 122 and
later.


CVE-2025-1933: JIT corruption of WASM i32 return values on 64-bit CPUs

Reporter
    Xiangwei Zhang and kkdong of Tencent Security YUNDING LAB
Impact
    high

Description

On 64-bit CPUs, when the JIT compiles WASM i32 return values they can pick up
bits from left over memory. This can potentially cause them to be treated as a
different type.


CVE-2025-1937: Memory safety bugs fixed in Firefox 136, Thunderbird 136, Firefox ESR 115.21, Firefox ESR 128.8, and Thunderbird 128.8

Reporter
    the Mozilla Fuzzing Team, Andrew McCreight
Impact
    high

Description

Memory safety bugs present in Firefox 135, Thunderbird 135, Firefox ESR 115.20,
Firefox ESR 128.7, and Thunderbird 128.7. Some of these bugs showed evidence of
memory corruption and we presume that with enough effort some of these could
have been exploited to run arbitrary code.


CVE-2025-1938: Memory safety bugs fixed in Firefox 136, Thunderbird 136, Firefox ESR 128.8, and Thunderbird 128.8

Reporter
    Julien Wajsberg, the Mozilla Fuzzing Team
Impact
    high

Description

Memory safety bugs present in Firefox 135, Thunderbird 135, Firefox ESR 128.7,
and Thunderbird 128.7. Some of these bugs showed evidence of memory corruption
and we presume that with enough effort some of these could have been exploited
to run arbitrary code.  References


 -Valtteri
 

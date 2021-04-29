X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1523" "Thursday" "29" "April" "2021" "04:34:11" "-0600" "Ariadne Conill" "ariadne@dereferenced.org" nil "38" "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil "4" nil nil (number mark "U       ariadne@dere Apr 29   38/1523  " thread-indent "\"Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ISC discloses three BIND vulnerabilities (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21800 invoked by uid 550); 29 Apr 2021 10:52:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13611 invoked from network); 29 Apr 2021 10:34:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1619692451;
	bh=BUfK4umx/98jUPF5BB2GHi6bEqSco+3tNkDVXN9Dj2A=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=gZcqy+d92KuW3RvQfJrkc3xtOrhQWAkGhKR1j7B6cXIFPmCMNH6L0B0jmNZsvIEFy
	 6MCnPnBTQJT17mQ37ghotXJMqOh5J1UUs4XF5kirUsc2tz7jOccaodf0dkSXUWfsGj
	 lGFFuM3pAEPXGCGbybkdrPCZ7weNaXSekTwXJubXLLbqZBXe5WhiHGTm4BB6WyDHnh
	 2ShmJ1wZfhUK+Cpqe2z2srIn14NDJMmVEZNszVxyTOcfTy5wuotlboPZdHKZj/fmRG
	 IemLDlvICanDeoliHsj77c9d22ROfvOn/9x/gXBG/L14OaMTRnzUGDSCUIhU9y7zZV
	 5J9QrtHPLfUiA==
Date: Thu, 29 Apr 2021 04:34:11 -0600 (MDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
cc: "security-officer@isc.org" <security-officer@isc.org>
In-Reply-To: <bb03954a-2db8-8c4c-3937-a3c59072abb4@isc.org>
Message-ID: <4ba1f3b4-9452-c630-cf7a-aa2f7e8b5835@dereferenced.org>
References: <bb03954a-2db8-8c4c-3937-a3c59072abb4@isc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] ISC discloses three BIND vulnerabilities
 (CVE-2021-25214, CVE-2021-25215, and CVE-2021-25216)

Hello,

On Wed, 28 Apr 2021, Michael McNally wrote:

> On April 28, 2021, we (Internet Systems Consortium) disclosed three
> vulnerabilities affecting our BIND 9 software:
>
>   CVE-2021-25214: A broken inbound incremental zone update (IXFR)
>   can cause named to terminate unexpectedly
>   https://kb.isc.org/docs/cve-2021-25214
>
>   CVE-2021-25215: An assertion check can fail while answering queries for
>   DNAME records that require the DNAME to be processed to resolve itself
>   https://kb.isc.org/docs/cve-2021-25215
>
>   CVE-2021-25216: A second vulnerability in BIND's GSSAPI security policy
>   negotiation can be targeted by a buffer overflow attack
>   https://kb.isc.org/docs/cve-2021-25216
>
> New versions of BIND are available from https://www.isc.org/downloads
>
> Operators and package maintainers who prefer to apply patches selectively can
> find individual vulnerability-specific patches in the "patches" subdirectory
> of the release directories for our two stable release branches (9.11 and 
> 9.16)
>
>  https://downloads.isc.org/isc/bind9/9.11.31/patches
>  https://downloads.isc.org/isc/bind9/9.16.15/patches

These directories only have patches for CVE-2021-25214 and CVE-2021-25215. 
A patch for CVE-2021-25216 appears to be missing.  In some supported 
branches of Alpine, we erroneously followed a development branch of BIND, 
so I am trying to determine if there is anything I need to backport to 
cover CVE-2021-25216.

Thanks in advance for any advice you can provide on this.

Ariadne

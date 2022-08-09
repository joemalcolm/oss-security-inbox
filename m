Received: (qmail 11617 invoked by uid 550); 9 Aug 2022 17:14:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7850 invoked from network); 9 Aug 2022 17:10:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1660065039;
	bh=lHcaz7UcD45ZCKQwSdvK3w7Z04z+2gLfnAKY3pfYPNI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=SvZHdR/be+ziZseQgobTClhcBXa8Fq5APdvoKNMvthAXxIm1zeXSVHb7nIrujjB5X
	 TPgltJlbnHu9JsK4bMrwwlLvglTU5UkZPVDJwjMptx70BAqlUTP1GhWICIAFVR6lXD
	 G6T/roLcEcBAttfuUxcAdukcWafCGLMbNuxE5FD5bfBQp+eDNbnssBFnUiPb2UsoOd
	 /kVMFTicvmHam28BP37U/OfPMfVaoMnR73dqOOPWXfe8YpYWRCg3rqEVFQyi415fw5
	 vKTjqfb64GhPVm2LiW1fKknfCUhcu6fP8XeLeHd0mGPbPSmVdQ5jTvyoain3AxteBF
	 3SExAIklTfdtw==
Date: Tue, 9 Aug 2022 14:10:35 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <YvKVC/O+tGfNNm35@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2022-2586 - Linux kernel nf_tables cross-table reference UAF

CVE-2022-2586 - Linux kernel nf_tables cross-table reference UAF

It was discovered that a nft object or expression could reference a nft set on
a different nft table, leading to a use-after-free once that table was deleted.

Team Orca of Sea Security (@seasecresponse) working with Trend Micro's Zero Day
Initiative discovered that this vulnerability could be exploited for Local
Privilege Escalation. This has been reported as ZDI-CAN-17470, and assigned
CVE-2022-2586.

This bug was introduced by commit 958bee14d071 ("netfilter: nf_tables: use new
transaction infrastructure to handle sets"), which is present since v3.16-rc1.

Exploiting it requires CAP_NET_ADMIN in any user or network namespace.

A PoC that will trigger KASAN is going to be posted in a week.

Fixes have been sent to netfilter-devel@vger.kernel.org and are at
https://lore.kernel.org/netfilter-devel/20220809170148.164591-1-cascardo@canonical.com/T/#t.

Received: (qmail 5396 invoked by uid 550); 5 Jul 2023 17:10:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32197 invoked from network); 5 Jul 2023 17:09:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1688576952;
	bh=+QiouUAq9OLnE5Uz6AgzIxGVYw0otZF/5XOpbMg4iaU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=jBwUg7KpA2xS0dHsktReEZJZpD0ykeZ3Blmo7lK3GIL/jOBL+8C94/AQCxlfvRwsw
	 qmmhOlN9h7QRVPPEVLfBBuk25LLMgTiyoJdDylCkzyPFOvLPMelDcOZw40bZBRm3qf
	 T4DkB8IL+Sjzvq+jJ+GfvDNa46mex5dBPDkL6EYfFjxrH6VmieBiMC+gaDhvQITlKh
	 USPHkLod6358g/Ez4evhbl6a5brU1Q0ChTG+lHuSJUtqAFhTR3r8Nx2o/z+T1Q+e9H
	 iSOY0xO62E/zZWqyg6cI8YsDri9Ea/vdfgKWvjugRKc9w3GDsozMoXahROECSeX15D
	 mWe8MBUZngWiw==
Date: Wed, 5 Jul 2023 14:09:08 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZKWjtBNBcNYlmDu7@quatroqueijos.cascardo.eti.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-35001 - Linux kernel nf_tables nft_byteorder_eval OOB
 read/write

It was discovered that it was possible to cause an out-of-bounds read or
write when processing an nft_byteorder expression.

Tanguy DUBROCA (@SidewayRE) from @Synacktiv working with Trend Micro's Zero
Day Initiative discovered that this vulnerability could be exploited for
Local Privilege Escalation. This has been reported as ZDI-CAN-20721, and
assigned CVE-2023-35001.

Exploiting it requires CAP_NET_ADMIN in any user or network namespace.

This bug was introduced by commit 96518518cc41 ("netfilter: add nftables"),
which is present since v3.13-rc1.

A fix has been sent to netfilter-devel@vger.kernel.org and is at
https://lore.kernel.org/netfilter-devel/20230705121515.747251-1-cascardo@canonical.com/T/.

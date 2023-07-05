Received: (qmail 28431 invoked by uid 550); 5 Jul 2023 17:08:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27952 invoked from network); 5 Jul 2023 17:07:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1688576831;
	bh=7jnrj7jb9n4s7sWSQgtFYwb4UKksJmDAWfnw7IiqQTw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=EoZSEX3IoCuL+mqFIyLeIjAKNT8FJp6/7ZZ/VdkIaSH4hBqyogzn7Hlm3Gsnj5Wog
	 M9QcW7VRIf+DPU8V5gmtHSL6j7FhLZRzlHd3xHU+fX3pvLd0fhWPlk2tds4TR6ZXyl
	 l9NA6SgeBbPyT2IUmn8aTivf0pjr/VsN7E7lOFdrhxtfzJMw9TITRZDaER/gJ2GEqM
	 YkmfZiDmXJ7AgvLtruKubWmh7GdGzWI59QeN4+v5GqFNyOoxNHWBT7wv4qRw7M3foX
	 soGYQ1coX/Js5iXo7YwcpOYXozKDdIYiX9W/3cDxJR7/rN0xgLPH5Gc+Ola3m3YrDS
	 xZKSf6jnsc7WA==
Date: Wed, 5 Jul 2023 14:07:07 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <ZKWjO36sTTiRedC3@quatroqueijos.cascardo.eti.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2023-31248 - Linux kernel nf_tables UAF when using
 nft_chain_lookup_byid

It was discovered that it was possible to refer to a deleted nf_tables
chain when using nft_chain_lookup_byid, leading to a potential
use-after-free.

Mingi Cho of Theori working with Trend Micro's Zero Day Initiative
discovered that this vulnerability could be exploited for Local Privilege
Escalation. This has been reported as ZDI-CAN-20717, and assigned
CVE-2023-31248.

Exploiting it requires CAP_NET_ADMIN in any user or network namespace.

This bug was introduced by commit 837830a4b439 ("netfilter: nf_tables: add
NFTA_RULE_CHAIN_ID attribute"), which is present since v5.9-rc1. It was not
backported to any upstream LTS kernel.

A fix have been sent to netfilter-devel@vger.kernel.org and is at
https://lore.kernel.org/netfilter-devel/20230705121627.GC19489@breakpoint.cc/T/.

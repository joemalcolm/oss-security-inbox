Received: (qmail 11908 invoked by uid 550); 9 Aug 2022 17:14:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9427 invoked from network); 9 Aug 2022 17:12:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1660065118;
	bh=dumT3Pxmwtl4oWHC57iUflTBKBTJ0stBB00C5UqPfyA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=idVV1EkWk4YHcq6xIKHaiMl9u+31IW6KWqsBEebunNxDRGnAjd/X3RiVIR8SYOaeQ
	 FggD8LEji/nxbidzk/fj4Zd6EJjULiqng/yx+S900vo5Kth+USwLSSM6Ja/53S5oyk
	 IA9rDCvE5Hph6pH/917zXtnSsytmT5rri7bVv6t5XfdFLnH9ZThAtblGQ7STuto+7n
	 XmU/q3APEmoqIOWyQZvk4n27BWbKPwsbG9HJn6o9G2HO8ItXir0J9WOy/n5Y/nvyo8
	 slEN+J3W810q42BvmEEd082gryBWwiqCRovmy/7lrkhAvQYtlyd2rpVGgSn7mO8Hyb
	 u4c1vV8y5GuGQ==
Date: Tue, 9 Aug 2022 14:11:54 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <YvKVWuPyQ/YXBT+o@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2022-2588 - Linux kernel cls_route UAF

CVE-2022-2588 - Linux kernel cls_route UAF

It was discovered that the cls_route filter implementation in the Linux kernel
would not remove an old filter from the hashtable before freeing it if its
handle had the value 0.

Zhenpeng Lin working with Trend Micro's Zero Day Initiative discovered that
this vulnerability could be exploited for Local Privilege Escalation. This has
been reported as ZDI-CAN-17440, and assigned CVE-2022-2588.

This bug has been present since the first Linux commit git, v2.6.12-rc2.

Exploiting it requires CAP_NET_ADMIN in any user or network namespace.

It can be mitigated by those users who do not rely on cls_route, by adding
'install cls_route /bin/true' to their modprobe.conf or modprobe.d configs,
in case it's built as a module.

A PoC that will trigger a WARNING is going to be posted in a week.

Fixes have been sent to netdev@vger.kernel.org and are at
https://lore.kernel.org/netdev/20220809170518.164662-1-cascardo@canonical.com/T/#u.

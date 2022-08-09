Received: (qmail 15801 invoked by uid 550); 9 Aug 2022 17:15:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10215 invoked from network); 9 Aug 2022 17:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1660065225;
	bh=N1l50JMsFZfCisDQLmJnevZIvCHnT9g5o1NByNMFoiU=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=n3d+ppqHjzgblB05kbL0QnCosh3sKs79tKMl0EfXEgBHVPHlBp3sb8WhJbQVSw+fD
	 WosljVC6CjBO+gnShds04iz6pZkXWA+wqQ7mBYU8RqLhie6hR3gTbSw8mC2702yVCV
	 lKH0XuFnwMmRs08nOUgbzWbe/EO22jS8q0MqA0CZV+V3byFBuYKsaJLFlvOQ83k507
	 BClE1m9RUdq/bjC/gsczA2OyxR1B0pm1bw5ZkXcj1CO7k7oTYlUR1C2bknTYOkxBjr
	 TW74RH6UdMKRWFI72zDlNsgFOgP0nWpqD1mHkbZ3ZQxukmRgJRvHx1H72agBgL2jRC
	 x43EUB+u9rP2w==
Date: Tue, 9 Aug 2022 14:13:40 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <YvKVxLtBs86r6Dmh@quatroqueijos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2022-2585 - Linux kernel POSIX CPU timer UAF

CVE-2022-2585 - Linux kernel POSIX CPU timer UAF

It was discovered that when exec'ing from a non-leader thread, armed POSIX
CPU timers would be left on a list but freed, leading to a use-after-free.

An independent security researcher working with SSD Secure Disclosure
discovered that this vulnerability could be exploited for Local Privilege
Escalation.

This bug was introduced by commit 55e8c8eb2c7b ("posix-cpu-timers: Store a
reference to a pid not a task"), which is present since v5.7-rc1.

This has been assigned CVE-2022-2585.

A PoC that will trigger KASAN is going to be posted in a week.

A fix has been sent to linux-kernel@vger.kernel.org and is at
https://lore.kernel.org/lkml/20220809170751.164716-1-cascardo@canonical.com/T/#u.

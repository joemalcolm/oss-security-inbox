Received: (qmail 3776 invoked by uid 550); 14 Jan 2025 20:47:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3729 invoked from network); 14 Jan 2025 20:47:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2025; t=1736887624;
	bh=bA6JwrzUFJNcBY23PReAHURU05NSk+WN7+gTawoCvMs=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=OjslUP9X+xEJbont/TGjXII8s5wP24Og48MNKjhDnqg3IZChr/0RUtOz0oIiXnjt5
	 eQfj/gH1VElzm6ubxHOSW8HazfYvhk9r1qyaSVBoM3xByRQcc3ZQvDF7j3pWwXil3C
	 3ybhgHUjd9LnQiCN6El876ThuvkzeozMTP3pHoVrh821E/vpidTiini5FO41N0072N
	 5fiJrc515iOb4IqiY9J/tJ7UNi28grCyLLstze8TYcIbgYaPaUv1aDMJmq7izVYFd0
	 Wx9tO55IN7DYjA7nDQSLcy2ddvJX9/Ql2KHaIidOvcPuMU/lETkRb2yDelyJzHMhDO
	 3jUrBDWWPeuAQ==
Date: Tue, 14 Jan 2025 15:47:04 -0500
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <Z4bNSOygmYgI602B@netmeister.org>
References: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
Subject: Re: [oss-security] RSYNC: 6 vulnerabilities

Nick Tait <ntait@redhat.com> wrote:

> [1] Heap Buffer Overflow in Rsync due to Improper Checksum Length Handling
> 
> CVE ID: CVE-2024-12084
> 
> CVSS 3.1: 9.8 - AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
> 
> Description: A heap-based buffer overflow flaw was found in the rsync
> daemon. This issue is due to improper handling of attacker-controlled
> checksum lengths (s2length) in the code. When MAX_DIGEST_LEN exceeds the
> fixed SUM_LENGTH (16 bytes), an attacker can write out of bounds in the
> sum2 buffer.

Does anybody know if this issue is also present in the
code executing when you use SSH instead of rsyncd?

I'd expect the "rsync --server --sender" functionality
to possibly (likely?) share code here, but the current
description might lead folks to not consider this
scenario and only look for cases where they offer
rsyncd (e.g., port 873).

-Jan

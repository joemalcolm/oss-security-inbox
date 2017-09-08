X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Friday" "8" "September" "2017" "13:06:00" "+0100" "Denis Ovsienko" "denis@ovsienko.info" "<15e6161ec08.da24af3b48197.8990750711888835888@ovsienko.info>" "12" "[oss-security] Arch Linux and tcpdump 4.9.2" "^Cc:" nil nil "9" "2017090812:06:00" "[oss-security] Arch Linux and tcpdump 4.9.2" (number mark "        denis@ovsien Sep  8   12/610   " thread-indent "\"[oss-security] Arch Linux and tcpdump 4.9.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17857 invoked by uid 550); 8 Sep 2017 12:08:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15397 invoked from network); 8 Sep 2017 12:06:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1504872361;
	s=zohomail; d=ovsienko.info; i=denis@ovsienko.info;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=614; bh=z5GiLG5wWp3wkm2AoFbPYUvfXgSXY9EsCBEbs/cND34=;
	b=bt4MzBX5XYIqM5kMWFr0eDtze5vtCLvlm5j414vjh2Sxw1NUyAvz2KaUbKHJPQ2m
	S8pZwmQUhX0oGp8RJ0A9Xf4gUBv+buQ72le2yximtpZHCyIzwQX18UkPfTs0IM1wFbF
	VhnafhqHaFdMiv46oYY1323hDC72cC3LJs2hDhN8=
Message-ID: <15e6161ec08.da24af3b48197.8990750711888835888@ovsienko.info>
In-Reply-To: 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Cc: "the tcpdump group" <security@tcpdump.org>
Date: Fri, 08 Sep 2017 13:06:00 +0100
From: Denis Ovsienko <denis@ovsienko.info>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Arch Linux and tcpdump 4.9.2
To: <oss-security@lists.openwall.com>

Hello list.

Let me clarify that neither Arch Linux nor any other distribution was the source of the leak. The original cause was a mishap by the tcpdump group, which resulted in an extra unintended copy in a public directory. From there the new tarball was picked up by automatic release monitoring systems and eventually packaged as a regular public update.

In this case Arch Linux as well as other distributions have done exactly what was necessary to do and have provided their users with an updated package. Great job.

tcpdump-4.9.2.tar.gz is now available at www.tcpdump.org.

-- 
    Denis Ovsienko



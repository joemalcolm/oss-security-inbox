X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["600" "Wednesday" "13" "September" "2017" "21:59:13" "+0100" "Denis Ovsienko" "denis@ovsienko.info" "<15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>" "15" "[oss-security] tcpdump 4.9.2 is fully available" "^Date:" nil nil "9" "2017091320:59:13" "[oss-security] tcpdump 4.9.2 is fully available" (number mark "        denis@ovsien Sep 13   15/600   " thread-indent "\"[oss-security] tcpdump 4.9.2 is fully available\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26038 invoked by uid 550); 13 Sep 2017 23:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5535 invoked from network); 13 Sep 2017 20:59:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1505336353;
	s=zohomail; d=ovsienko.info; i=denis@ovsienko.info;
	h=Date:From:To:Message-ID:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=603; bh=F0IO175PS8gbvw2BoJZc/gBKnLpuz0LYuNC4tIrXITY=;
	b=yDnbpWEoZTzSlMrItjFyIJ3zMBQ06EsngH/mUNuDnRB/ozJXeXM0BX+VJ+i3w273
	h9FRLMa/yLFaVG5GClsG2qs9CEpyPif6P7lGlVUrPZbZh3m+bpTB4EW7A62HKv3e1eC
	e+wGK6kcCuZLRUavqq/UCitAuGqQYmc+eSICizck=
Message-ID: <15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Date: Wed, 13 Sep 2017 21:59:13 +0100
From: Denis Ovsienko <denis@ovsienko.info>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] tcpdump 4.9.2 is fully available
To: <oss-security@lists.openwall.com>

Hello all.

As per Alexander's advice, let me comment for the avoidance of doubt that all deliverables for the tcpdump 4.9.2 release are public since today as advised last week. This includes individual commits in the public git repository with reference to particular CVE IDs and credits to the original reporter(s) and the author of each bugfix.

To report a new security issue (segfault, buffer overflow, infinite loop, arbitrary code execution etc) with tcpdump or libpcap please send an e-mail to security@tcpdump.org, do not use the public bug tracker.

Thank you.

-- 

    Denis Ovsienko





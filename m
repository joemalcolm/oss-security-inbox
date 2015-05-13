X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["982" "Wednesday" "13" "May" "2015" "21:44:04" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rAevBkp4cE=zRML0PZrDP98SZFAVBXjGVhk0Q-bcBEcg@mail.gmail.com>" "31" "[oss-security] CVE requests: Remote packet-of-death vulnerabilities in Linux Kernel ozwpan driver" nil nil nil "5" "2015051319:44:04" "[oss-security] CVE requests: Remote packet-of-death vulnerabilities in Linux Kernel ozwpan driver" (number mark "        Jason@zx2c4. May 13   31/982   " thread-indent "\"[oss-security] CVE requests: Remote packet-of-death vulnerabilities in Linux Kernel ozwpan driver\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14039 invoked by uid 550); 13 May 2015 19:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14011 invoked from network); 13 May 2015 19:44:17 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:content-type; s=mail; bh=CHIOfa
	t3he4xuMq2LNZOY00nI0M=; b=vftyGNEnZ8rXgr+e97OBBuwx1KZqUY0ef6pzQV
	d9qvqNt3aUIxXZOXvVixDa0aGv1APjCHKVMJxfBb5X+S57a1XyQ4DgGGHWYwdl9m
	ecs0Rvo7hrcWS663RGwabFABO2vCiZR5muTaBg/yJtN0Hi/8ESMoYI/yn9dkpzIi
	lGqQA4CCtiLWfWZMsk+MKbD/ambQZ7tjPseqlVUU+hTe59MKVf6XliiA1IQ8N6AQ
	sSie1ezQDdtIZOePoIO2yAftiNbaXGfSpiDqFEWguW74oD6MjuWNFAGsPr4+YEtu
	fCXBQwriHsvoqYm5YtcSjhtxPzLZQ+BWSpzYPE6GHcawD40Q==
MIME-Version: 1.0
X-Received: by 10.152.37.201 with SMTP id a9mr381947lak.120.1431546244304;
 Wed, 13 May 2015 12:44:04 -0700 (PDT)
Message-ID: <CAHmME9rAevBkp4cE=zRML0PZrDP98SZFAVBXjGVhk0Q-bcBEcg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 13 May 2015 21:44:04 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requests: Remote packet-of-death vulnerabilities in Linux Kernel
 ozwpan driver
To: oss-security <oss-security@lists.openwall.com>

Hi folks,

A variety of issues have been found in Linux's ozwpan driver.

1. A remote packet can be sent, resulting in funny subtractions of
signed integers, which causes a memcpy(kernel_heap,
network_user_buffer, -network_user_provided_length).

There are two different conditions that can lead to this:
https://lkml.org/lkml/2015/5/13/740
https://lkml.org/lkml/2015/5/13/744
You may want to give two CVEs or just one CVE for these two issues.

2. A remote packet can be sent, resulting in divide-by-zero in
softirq, causing hard crash:
https://lkml.org/lkml/2015/5/13/741

3. A remote packet can be sent, resulting in a funny subtraction,
causing an insanely big loop to lock up the kernel:
https://lkml.org/lkml/2015/5/13/742

4. Multiple out-of-bounds reads, resulting in possible information
leakage, explained in the last paragraph of the introductory email
here:
https://lkml.org/lkml/2015/5/13/739


Please assign CVEs so that these can be properly tracked.

Regards,
Jason

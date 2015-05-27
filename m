X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1135" "Wednesday" "27" "May" "2015" "16:45:15" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>" "34" "[oss-security] CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities" nil nil nil "5" "2015052714:45:15" "[oss-security] CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities" (number mark "        Jason@zx2c4. May 27   34/1135  " thread-indent "\"[oss-security] CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11305 invoked by uid 550); 27 May 2015 18:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30389 invoked from network); 27 May 2015 14:55:56 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:cc:content-type; s=mail; bh=NxE
	jQFoIsvX49n60fT/AxlYnZEM=; b=u+N5N6i6fx7M8Gx4m0uKU2Wd8lPSva5mvP5
	GOJtMdGrVc1D92pnJgIahDET5/UiQyswJMZmDVy8kcWycfFebNkCJv4QgFBsAU7D
	p72AYYUWZKUZT2S7g9aK0U4MtIYYBbRqXaThcbtPRDjtr0G+mWkIODF8WZXRvAq8
	vF8vvJiJqURuaTw0xfZzhjTqxs6R6TCDteFDWfyOCC07axtNaVgoULsl3ob2YE9/
	z7DSKqp4qbJXGXpFUVUCksAOLhY8d8GqqFTKodFyTrq+hVO0PTGwtbUWe7VyeCII
	9k66U4si00BAL1y5gfj3AyAeF8iXk0KXCKjL9IbBvrl5hM72x6A==
MIME-Version: 1.0
X-Received: by 10.112.204.72 with SMTP id kw8mr28336344lbc.88.1432737915307;
 Wed, 27 May 2015 07:45:15 -0700 (PDT)
Message-ID: <CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-assign@mitre.org
Date: Wed, 27 May 2015 16:45:15 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities
To: oss-security <oss-security@lists.openwall.com>

Hi folks,

This is a resend, as the other request seems to have gotten lost in the mix.

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


Please assign CVEs so that these can be properly tracked. I've been
told the v2 of these patches are in the merging queue.

Regards,
Jason Donenfeld

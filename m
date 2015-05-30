X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1756" "Sunday" "31" "May" "2015" "01:30:05" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9opocVgo-EpALxnAYc4HoRWo1TVE12Tbn3QarYyYu+2qg@mail.gmail.com>" "57" "[oss-security] Re: CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities" nil nil nil "5" "2015053023:30:05" "[oss-security] Re: CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities" (number mark "U       Jason@zx2c4. May 31   57/1756  " thread-indent "\"[oss-security] Re: CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities\"\n") "<CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>" ("<CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12027 invoked by uid 550); 31 May 2015 00:30:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13711 invoked from network); 30 May 2015 23:30:20 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:in-reply-to:references:date:message-id:subject:from:to:cc
	:content-type; s=mail; bh=MDHLSYJ6fADwFIq/mipPVqHcch4=; b=bCB7dY
	chiGqAiR7FFNvKaOVjMki47HeCW5wEY8AAHD1Vj3a7i4PWe156xA07e9nuExwTyw
	CAadBOcoGBnyOjjvHKIzdWllc9MvGPBd5tGXfcFMNJlNt04nAejd671aaMjW6XcS
	ItyUACEzXr9wV2rH0VWanDlPPRBaree9pzsFl1mZNI0XlhaCsD5KquMvpbOcop6z
	oSNMye8cXieW4tHEiS2rg1PKLRILCKeq3JnyTPpVFAb/wnhy71Jwn1MMiGrcAJoV
	DQUErCBDWGInodde5kC7PyliBOkiOkj6ewJVQJ7HSA+L2uTy348ithuzGHLt37ii
	kDhqA7cK4kU2UZZg==
MIME-Version: 1.0
X-Received: by 10.112.204.72 with SMTP id kw8mr14462516lbc.88.1433028605692;
 Sat, 30 May 2015 16:30:05 -0700 (PDT)
In-Reply-To: <CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>
References: <CAHmME9p4DmgLcA0+JkT7bH3WGP5bOY2wmd=a6sy76vwjnVEPjw@mail.gmail.com>
Date: Sun, 31 May 2015 01:30:05 +0200
Message-ID: <CAHmME9opocVgo-EpALxnAYc4HoRWo1TVE12Tbn3QarYyYu+2qg@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE Request: Linux Kernel Ozwpan Driver - Remote packet-of-death vulnerabilities

Hi folks,

Just providing an update on this. Several fixes for these issues have
been merged.

On Wed, May 27, 2015 at 4:45 PM, Jason A. Donenfeld
> 1. A remote packet can be sent, resulting in funny subtractions of
> signed integers, which causes a memcpy(kernel_heap,
> network_user_buffer, -network_user_provided_length).
>
> There are two different conditions that can lead to this:
> https://lkml.org/lkml/2015/5/13/740
> https://lkml.org/lkml/2015/5/13/744
> You may want to give two CVEs or just one CVE for these two issues.

https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?id=d114b9fe78c8d6fc6e70808c2092aa307c36dc8e
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?id=b1bb5b49373b61bf9d2c73a4d30058ba6f069e4c

Please assign a CVE.


>
> 2. A remote packet can be sent, resulting in divide-by-zero in
> softirq, causing hard crash:
> https://lkml.org/lkml/2015/5/13/741

https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?&id=04bf464a5dfd9ade0dda918e44366c2c61fce80b

Please assign a CVE.

>
> 3. A remote packet can be sent, resulting in a funny subtraction,
> causing an insanely big loop to lock up the kernel:
> https://lkml.org/lkml/2015/5/13/742

https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/commit/?id=9a59029bc218b48eff8b5d4dde5662fd79d3e1a8

Please assign a CVE.


>
> 4. Multiple out-of-bounds reads, resulting in possible information
> leakage, explained in the last paragraph of the introductory email
> here:
> https://lkml.org/lkml/2015/5/13/739

The maintainer has not yet written a patch to fix this issue, so it
remains an open case.

Please assign a CVE.



I'd appreciate getting these CVEs assigned sooner rather than later.

Thanks,
Jason

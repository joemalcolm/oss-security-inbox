X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["753" "Friday" "15" "June" "2018" "00:20:21" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180614222021.6jguso4l7vqbjqyk@jwilk.net>" "17" "Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" nil nil nil "6" "2018061422:20:21" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" (number mark "U       jwilk@jwilk. Jun 15   17/753   " thread-indent "\"Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)\"\n") "<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>" ("<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26618 invoked by uid 550); 14 Jun 2018 22:20:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26560 invoked from network); 14 Jun 2018 22:20:35 -0000
Date: Fri, 15 Jun 2018 00:20:21 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180614222021.6jguso4l7vqbjqyk@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
User-Agent: NeoMutt/20180512
X-Ovh-Tracer-Id: 16872454533216393126
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrleeggddtlecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] CVE-2018-12356 Breaking signature verification in
 pass (Simple Password Store)

* Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>, 2018-06-14, 23:46:
>CVE-2018-12356: An issue was discovered in password-store.sh in pass in 
>Simple Password Store 1.7 through 1.7.1. The signature verification 
>routine parses the output of GnuPG with an incomplete regular 
>expression, which allows remote attackers to spoof file signatures on 
>configuration files and extensions scripts
[...]
>https://neopg.io/blog/pass-signature-spoof/

In the blog post you write that the fixed regexp is "^[GNUPG:]", but 
that would be really bad. :) I think you meant "^\[GNUPG:\]".

There's apparently more software that uses unachored "\[GNUPG:\]":
https://codesearch.debian.net/search?q=%5B%5E%5E%5D%5C%5C%5C%5BGNUPG%3A%5C%5C%5C%5D

-- 
Jakub Wilk

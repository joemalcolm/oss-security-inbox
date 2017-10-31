X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["468" "Tuesday" "31" "October" "2017" "14:35:59" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171031133559.7aqu2z45atxudb7c@jwilk.net>" "15" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103113:35:59" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Oct 31   15/468   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22466 invoked by uid 550); 31 Oct 2017 13:36:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22433 invoked from network); 31 Oct 2017 13:36:23 -0000
Message-ID: <20171031133559.7aqu2z45atxudb7c@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171031132352.2df6d2ad@pc1>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 8956252285206583206
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgedvgdehgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 31 Oct 2017 14:35:59 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

There's another problem with vim swapfiles.

If you edit a file directly in /tmp, vim will happily read a swapfile 
that were planted there by somebody else. Local users could exploit this 
for denial of service (or maybe worse if there are any swapfile parsing 
bugs...).

Is that a bug in vim? Or is it a user error to edit file directly in 
/tmp?

In the latter case, we should fix at least vipe(1) and vidir(1) from 
moreutils; and run-mailcap(1).

-- 
Jakub Wilk

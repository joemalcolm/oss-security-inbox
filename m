X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1774" "Tuesday" "25" "January" "2022" "23:33:07" "+0100" "Jakub Wilk" "jwilk@jwilk.net" nil "54" "[oss-security] Bad signal handling in shell scripts leading to insecure use of /tmp" nil nil nil "1" nil nil (number mark "U       jwilk@jwilk. Jan 25   54/1774  " thread-indent "\"[oss-security] Bad signal handling in shell scripts leading to insecure use of /tmp\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Bad signal handling in shell scripts leading to insecure use of /tmp" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22302 invoked by uid 550); 25 Jan 2022 22:33:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22272 invoked from network); 25 Jan 2022 22:33:22 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-105G006c89a137f-724c-47ad-80c3-898eefd0c176,
                    6E1917165650CCD1BD3E653D9126F6FCC6384E10) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.58
Date: Tue, 25 Jan 2022 23:33:07 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20220125223307.aygg63t6evzp2t3g@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 498cbaf4-95de-44b0-b7d7-e91979f30d3f
X-Ovh-Tracer-Id: 8837751322735859479
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrfedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkgggtughisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeethfefjeefleffvefhudfggfdvuedtfeduueejudeuvedvudekfedtheekueehjeenucffohhmrghinhepuggvsghirghnrdhorhhgpdgtohhnshdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: [oss-security] Bad signal handling in shell scripts leading to insecure use of /tmp

I've run into quite a few shell scripts that do something like this:

   tmpfile=$(mktemp)
   trap 'rm "$tmpfile"' EXIT INT QUIT TERM
   do_stuff_with "$tmpfile"

Note that the signal handler doesn't terminate the program. So when the 
signal arrives, the program continues whatever it was doing, while the 
name of the temporary file is available to other local users. (For the
avoidance of doubt: the attacker can't send the signal themself; they 
have to wait for the victim to press ^C or so.)

I've reported these bugs so far:

* Debian devscripts:
   https://bugs.debian.org/911720
   https://bugs.debian.org/911969
* debian-goodies:
   https://bugs.debian.org/999899

But a quick grep for "trap" in my /usr/bin/ shows that there's a lot 
more code with such buggy signal handlers.

So how to fix these bugs?

1) The most lazy way is to install trap only for EXIT:

   trap 'rm "$tmpfile"' EXIT

In bash this seems to do the right thing. In the other shells I tried, 
the cleanup code won't be executed when the program is terminated by a 
signal, but that's probably not a big deal in most cases.

2) Another possibility to explicitly exit in the signal handler:

   trap 'rm "$tmpfile"' EXIT
   trap 'exit 1' INT QUIT

But with this approach, the terminating signal will not be reported to 
the parent program, and some shells (such as bash) needs this 
information to handle ^C and ^\ correctly. See 
https://www.cons.org/cracauer/sigint.html for details.

3) Finally, if you're not disheartened with the amount and ugliness of 
the required code, you can re-raise the signal from the signal handler:

   trap 'rm "$tmpfile"' EXIT
   for sig in INT QUIT TERM
   do
       trap 'rm "$tmpfile" && trap - '$sig' EXIT && kill -s '$sig' $$' $sig
   done

-- 
Jakub Wilk

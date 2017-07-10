X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["483" "Monday" "10" "July" "2017" "12:34:36" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<5247425.MMXgAd8cuH@wanheda>" "15" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Cc:" nil nil "7" "2017071010:34:36" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        ago@gentoo.o Jul 10   15/483   " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12244 invoked by uid 550); 10 Jul 2017 10:34:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12222 invoked from network); 10 Jul 2017 10:34:52 -0000
Message-ID: <5247425.MMXgAd8cuH@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.34-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
References: <801547.452199401-sendEmail@localhost> <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Date: Mon, 10 Jul 2017 12:34:36 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)
To: oss-security@lists.openwall.com

All the info were updated.


On Monday 10 July 2017 11:42:53 Dr. Thomas Orgis wrote:
> Is this really worth a CVE, though? So far I was only able to see a
> crash triggered by the AddressSanitizer.

Often, when there is an out-of-bound condition there is no crash, and the 
application works as expected. It is only visible with debuggers or in case of 
stack overflow with fortify_source enabled, so I think it's an expected 
behaviour.

-- 
Agostino Sarubbo
Gentoo Linux Developer

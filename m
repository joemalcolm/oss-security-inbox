X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["544" "Monday" "14" "May" "2018" "10:29:52" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180514082952.nf64klmaqvjjqyt6@jwilk.net>" "13" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" "^Date:" nil nil "5" "2018051408:29:52" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "        jwilk@jwilk. May 14   13/544   " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32205 invoked by uid 550); 14 May 2018 08:30:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32187 invoked from network); 14 May 2018 08:30:08 -0000
Message-ID: <20180514082952.nf64klmaqvjjqyt6@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 5261330268242237350
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrvdehgddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Mon, 14 May 2018 10:29:52 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities
To: oss-security@lists.openwall.com

https://lists.gnupg.org/pipermail/gnupg-users/2018-May/060315.html has 
more details:

"[...] HTML is used as a back channel to create an oracle for modified 
encrypted mails.  It is long known that HTML mails and in particular 
external links like <img href="tla.org/TAG"/> are evil if the MUA 
actually honors them (which many meanwhile seem to do again; see all 
these newsletters).  Due to broken MIME parsers a bunch of MUAs seem to 
concatenate decrypted HTML mime parts which makes it easy to plant such 
HTML snippets."

-- 
Jakub Wilk

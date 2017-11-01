X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["409" "Wednesday" "1" "November" "2017" "19:02:22" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>" "12" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110118:02:22" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  1   12/409   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12203 invoked by uid 550); 1 Nov 2017 18:02:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12176 invoked from network); 1 Nov 2017 18:02:47 -0000
Message-ID: <20171101180222.5j6wqmmqakwvu72q@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
 <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
 <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 881298154139670438
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgeeggdduudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Wed, 1 Nov 2017 19:02:22 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

* Jeffrey Walton <noloader@gmail.com>, 2017-11-01, 11:31:
>Code and scripts certainly need to check TMPDIR

Unfortunately, glibc's implementation of tmpfile(3), which is the most 
fool-proof interface for dealing with temporary files that the C library 
offers, doesn't honour TMPDIR. :(

BTW, there's a preloadable library that catches writes to /tmp:
https://github.com/paultag/tmperamental

-- 
Jakub Wilk

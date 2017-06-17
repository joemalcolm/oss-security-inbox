X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Saturday" "17" "June" "2017" "18:24:23" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20170617162423.7xrekndbw25zpzeh@jwilk.net>" "20" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061716:24:23" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        jwilk@jwilk. Jun 17   20/779   " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>" "<CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>" "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>" "<CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>" "<20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7936 invoked by uid 550); 17 Jun 2017 16:24:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7915 invoked from network); 17 Jun 2017 16:24:48 -0000
Message-ID: <20170617162423.7xrekndbw25zpzeh@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
 <20170616204437.GC2269@hunt>
 <CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>
 <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
 <CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>
 <20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>
User-Agent: NeoMutt/20170306 (1.8.0)
X-Ovh-Tracer-Id: 6324461252059518886
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeljedrkedugddutdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Sat, 17 Jun 2017 18:24:23 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security@lists.openwall.com

* Simon McVittie <smcv@debian.org>, 2017-06-17, 13:27:
>The two standardized POSIX dialects implemented by Unix C libraries (basic 
>regexes as used in grep and sed, and extended regexes as used in grep -E and 
>sed -E) aren't fully compatible with the Perl syntax: for example \s matches 
>the letter s in BREs or EREs,

Actually POSIX says outside a bracket expression, \s is undefined. (But in the 
GNU libc regcomp() implementation, it matches a whitespace character.)

Inside a bracket expression \s is meant literally, i.e. it matches either a 
backslash or a letter "s". 

>but matches any whitespace character in the Perl-derived dialects. This makes 
>the POSIX regex functions not particularly useful for implementors of a 
>JavaScript runtime.

Right.

-- 
Jakub Wilk

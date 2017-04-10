X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["398" "Monday" "10" "April" "2017" "08:29:31" "+0100" "Simon McVittie" "smcv@debian.org" "<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>" "11" "Re: [oss-security] CVE-2017-7592: libtiff: left shift" "^Date:" nil nil "4" "2017041007:29:31" "[oss-security] CVE-2017-7592: libtiff: left shift" (number mark "        smcv@debian. Apr 10   11/398   " thread-indent "\"Re: [oss-security] CVE-2017-7592: libtiff: left shift\"\n") "<457875.000636221-sendEmail@localhost>" ("<457875.000636221-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15395 invoked by uid 550); 10 Apr 2017 07:29:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14316 invoked from network); 10 Apr 2017 07:29:44 -0000
Message-ID: <20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
References: <457875.000636221-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <457875.000636221-sendEmail@localhost>
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Mon, 10 Apr 2017 08:29:31 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-7592: libtiff: left shift
To: oss-security@lists.openwall.com

On Mon, 10 Apr 2017 at 07:03:25 +0000, Agostino Sarubbo wrote:
> Since there is no cast, *(pp+1) is treated as int, so
> UndefinedBehaviorSanitizer says:
> runtime error: left shift of 134 by 24 places cannot be represented in type
> 'int'

This is a bug, but how is it a security vulnerability? Can an attacker
exploit it for DoS or code execution or something with a malformed TIFF
image?

    S

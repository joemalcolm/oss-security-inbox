X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Wednesday" "12" "April" "2017" "14:03:28" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2543295.QOKDAkRO2f@blackgate>" "21" "Re: [oss-security] CVE-2017-7592: libtiff: left shift" "^Date:" nil nil "4" "2017041212:03:28" "[oss-security] CVE-2017-7592: libtiff: left shift" (number mark "        ago@gentoo.o Apr 12   21/605   " thread-indent "\"Re: [oss-security] CVE-2017-7592: libtiff: left shift\"\n") "<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>" ("<457875.000636221-sendEmail@localhost>" "<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13902 invoked by uid 550); 12 Apr 2017 12:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13630 invoked from network); 12 Apr 2017 12:03:44 -0000
Message-ID: <2543295.QOKDAkRO2f@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.52-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
References: <457875.000636221-sendEmail@localhost> <20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2435489.Fb4MF4FWZE"
Content-Transfer-Encoding: 7Bit
Date: Wed, 12 Apr 2017 14:03:28 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-7592: libtiff: left shift
To: oss-security@lists.openwall.com

--nextPart2435489.Fb4MF4FWZE
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday 10 April 2017 08:29:31 Simon McVittie wrote:
> This is a bug, but how is it a security vulnerability? Can an attacker
> exploit it for DoS or code execution or something with a malformed TIFF
> image?

Hello Simon,

the supposition is that a library stays there to receive multiple inputs, while there is 
an undefined behavior you don't know what will happen, so basically it is a 
pontential Denial of Service.

-- 
Agostino Sarubbo
Gentoo Linux Developer

--nextPart2435489.Fb4MF4FWZE--


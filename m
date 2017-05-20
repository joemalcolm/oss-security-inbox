X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["742" "Saturday" "20" "May" "2017" "08:26:36" "-0700" "Ian Zimmerman" "itz@primate.net" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "19" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Date:" nil nil "5" "2017052015:26:36" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        itz@primate. May 20   19/742   " thread-indent "\"[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24391 invoked by uid 550); 20 May 2017 15:45:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15589 invoked from network); 20 May 2017 15:26:51 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Message-ID: <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Sat, 20 May 2017 08:26:36 -0700
From: Ian Zimmerman <itz@primate.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE
 decoder
To: oss-security@lists.openwall.com

On 2017-05-20 09:26, Salvatore Bonaccorso wrote:

> Chris Evans discovered that ImageMagick uses unitialized memory in the
> RLE decoder, allowing an attacker to leak sensitive information from
> process memory space. There is missing initialization in the
> ReadRLEImage function.
> 
> Original article at:
> 
> https://scarybeastsecurity.blogspot.com/2017/05/bleed-continues-18-byte-file-14k-bounty.html

It was good to see the discussion of how GraphicsMagick was affected, or
not.  I would love to see that in all *Magick weakness reports.

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign:
http://primate.net/~itz/blog/the-problem-with-gpg-signatures.html

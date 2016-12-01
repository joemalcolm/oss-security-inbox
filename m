X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["849" "Thursday" "1" "December" "2016" "09:15:35" "-0800" "Ian Zimmerman" "itz@primate.net" "<20161201171236.4754.235004A2@matica.foolinux.mooo.com>" "22" "[oss-security] Re: dcraw and CVE-2015-8366 + CVE-2015-8367" nil nil nil "12" "2016120117:15:35" "[oss-security] Re: dcraw and CVE-2015-8366 + CVE-2015-8367" (number mark "U       itz@primate. Dec  1   22/849   " thread-indent "\"[oss-security] Re: dcraw and CVE-2015-8366 + CVE-2015-8367\"\n") "<CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>" ("<CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7597 invoked by uid 550); 1 Dec 2016 17:45:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24265 invoked from network); 1 Dec 2016 17:15:56 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Date: Thu, 1 Dec 2016 09:15:35 -0800
From: Ian Zimmerman <itz@primate.net>
To: oss-security@lists.openwall.com
Message-ID: <20161201171236.4754.235004A2@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOc73CA3jpn3V=m0js8=n0jrLZ9=-bUmjVn3+D=ab2tzQBYyhQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: dcraw and CVE-2015-8366 + CVE-2015-8367

On 2016-10-16 00:50, Ben Woods wrote:

> I noticed you mentioned in the mailing list post below that "CVE-2015-8366
> will be fixed in v9.27" - did that end up getting fixed in 9.27? How about
> CVE-2015-83667?

> CVE-2015-8366
> Index overflow in smal_decode_segment
> https://github.com/LibRaw/LibRaw/commit/89d065424f09b788f443734d44857289489ca9e2

> CVE-2015-8367
> Memory objects are not intialized properly
> https://github.com/LibRaw/LibRaw/commit/490ef94d1796f730180039e80997efe5c58db780

Since there has been no reply here, I examined the source for dcraw
9.27, and as far as I can see neither of these issues is addressed by
it.  Of course, the author has the final word.

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html

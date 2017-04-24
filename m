X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Monday" "24" "April" "2017" "14:46:05" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170424124605.GG22557@suse.de>" "29" "Re: [oss-security] libcroco: heap overflow and undefined behavior" nil nil nil "4" "2017042412:46:05" "[oss-security] libcroco: heap overflow and undefined behavior" (number mark "U       meissner@sus Apr 24   29/878   " thread-indent "\"Re: [oss-security] libcroco: heap overflow and undefined behavior\"\n") "<2144211.BpqYkg82hc@arcadia>" ("<2144211.BpqYkg82hc@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28213 invoked by uid 550); 24 Apr 2017 12:46:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28195 invoked from network); 24 Apr 2017 12:46:17 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 24 Apr 2017 14:46:05 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170424124605.GG22557@suse.de>
References: <2144211.BpqYkg82hc@arcadia>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2144211.BpqYkg82hc@arcadia>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] libcroco: heap overflow and undefined behavior

On Sun, Apr 23, 2017 at 12:42:04PM +0200, Agostino Sarubbo wrote:
> Description:
> libcroco is a Generic Cascading Style Sheet (CSS) parsing and manipulation 
> toolkit.

...

> # csslint-0.6 $FILE
> /tmp/portage/dev-libs/libcroco-0.6.12/work/libcroco-0.6.12/src/cr-
> tknzr.c:1283:15: runtime error: value 9.11111e+19 is outside the range of 
> representable values of type 'long'
> Commit fix:
> https://git.gnome.org/browse/libcroco/commit/?id=9ad72875e9f08e4c519ef63d44cdbd94aa9504f7
> Reproducer:
> https://github.com/asarubbo/poc/blob/master/00268-libcroco-outside-long
> CVE:
> CVE-2017-7961
> 
> Affected version:
> 0.6.11 and 0.6.12
> 
> Fixed version:
> 0.6.13 (not released atm)

This is not a security issue in my view. The conversion surely is
truncating the double into a long value, but there is no impact as the
value is one of the RGB components.

Ciao, Marcus

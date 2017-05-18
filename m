X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Thursday" "18" "May" "2017" "04:39:50" "+0200" "Marc Lehmann" "schmorp@schmorp.de" "<20170518023950.gkj6diatbr4bfdmh@schmorp.de>" "45" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051802:39:50" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        schmorp@schm May 18   45/2004  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170517110530.GA11230@openwall.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<20170517110530.GA11230@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8123 invoked by uid 550); 18 May 2017 05:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7920 invoked from network); 18 May 2017 02:40:02 -0000
Message-ID: <20170518023950.gkj6diatbr4bfdmh@schmorp.de>
References: <20170501164428.GA12322@openwall.com>
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com>
 <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
 <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
 <20170517110530.GA11230@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170517110530.GA11230@openwall.com>
OpenPGP: id=904ad2f81fb16978e7536f726dea2ba30bc39eb6;
 url=http://pgp.schmorp.de/schmorp-pgpkey.txt; preference=signencrypt
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	oss-security <oss-security@lists.openwall.com>,
	rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Thu, 18 May 2017 04:39:50 +0200
From: Marc Lehmann <schmorp@schmorp.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Solar Designer <solar@openwall.com>

On Wed, May 17, 2017 at 01:05:30PM +0200, Solar Designer <solar@openwall.com> wrote:
> You're right that we provided "little to no information" - sorry.  I'll
> correct this now.
> 
> Jason's e-mail was in part prompted by my off-list message to him, where
> I wrote about this issue (or non-issue depending on one's perspective):

Thanks a lot, this makes a lot more sense. The confusing part was that the
patch sent by Jason in his mail had nothing to do with this issue.

> I think it's pretty bad, because unlike many other terminals' automated
> responses triggered by escapes, this one includes a linefeed.

I agree - rxvt-unicode shouldn't reply with a LF when in secure mode (this
is a policy). The sequence in question is also not used (or even usable,
as it queries the original rxvt graphics mode which is not implemented in
urxvt), so the next version will have it disabled, at least in secure mode
(the default).

> The risk probability is low, but this is nevertheless a valid security
> issue to patch.

I agree, it is a reasonable defense in depth mechanism where the benefit
clearly outweighs the disadvantages.

> (The pasted text appears to vary between "0" and "1".)

urxvt always replies with "\033G0\012" to indicate "graphics mode not
supported". It's quite possible the the original rxvt replies with other
sequences.

> Thus, a sentiment expressed in past discussions in here is that terminal
> emulators shouldn't have the riskiest escape sequences supported by
> default.  It is fully expected that malicious escape sequences can make

Again, I fully agree - I just couldn't make the connection between the
patch sent and these "riskiest escape sequences".

-- 
                The choice of a       Deliantra, the free code+content MORPG
      -----==-     _GNU_              http://www.deliantra.net
      ----==-- _       generation
      ---==---(_)__  __ ____  __      Marc Lehmann
      --==---/ / _ \/ // /\ \/ /      schmorp@schmorp.de
      -=====/_/_//_/\_,_/ /_/\_\

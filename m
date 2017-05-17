X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1477" "Wednesday" "17" "May" "2017" "03:23:14" "+0200" "Marc Lehmann" "schmorp@schmorp.de" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "34" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051701:23:14" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        schmorp@schm May 17   34/1477  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20336 invoked by uid 550); 17 May 2017 01:50:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7470 invoked from network); 17 May 2017 01:23:27 -0000
Message-ID: <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
References: <20170501164428.GA12322@openwall.com>
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com>
 <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
OpenPGP: id=904ad2f81fb16978e7536f726dea2ba30bc39eb6;
 url=http://pgp.schmorp.de/schmorp-pgpkey.txt; preference=signencrypt
Cc: oss-security <oss-security@lists.openwall.com>,
	rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 03:23:14 +0200
From: Marc Lehmann <schmorp@schmorp.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Wed, May 17, 2017 at 12:15:55AM +0200, "Jason A. Donenfeld" <Jason@zx2c4.com> wrote:
> On Wed, May 17, 2017 at 12:03 AM, Solar Designer <solar@openwall.com> wrote:
> > Jason, Robert -
> >
> > On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
> >> A harmless example from rxvt - pushing back the new-line character:
> >>
> >> $ echo -ne "\eGQ;"
> >> ;$ 0
> >> bash: 0: command not found
> >
> > Does this also affect rxvt-unicode?
> 
> It does, actually. I've CCd rxvt-unicode upstream on this in order to
> hear their assessment.

There can't be an assessment without knowledge of what to assess - there
is little to no information in your mail. I can only guess that somebody
for the hundredth time found out that terminals are more than dumb
display devices and got excited that, somehow, this might be a security
issue. Without knowing details, I can't say for sure, but most likely,
this is a security issue the same way blindly feeding unknown commands to
your shell is, i.e., it's a problem somewhere else - the protocol between
terminals and programs is not a (strong) security barrier.

(your echo command is bash-specific, btw.)

-- 
                The choice of a       Deliantra, the free code+content MORPG
      -----==-     _GNU_              http://www.deliantra.net
      ----==-- _       generation
      ---==---(_)__  __ ____  __      Marc Lehmann
      --==---/ / _ \/ // /\ \/ /      schmorp@schmorp.de
      -=====/_/_//_/\_,_/ /_/\_\

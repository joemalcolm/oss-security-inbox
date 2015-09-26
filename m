X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1663" "Saturday" "26" "September" "2015" "22:26:09" "+0000" "David Holland" "dholland-oss-security@netbsd.org" "<20150926222609.GB11060@netbsd.org>" "39" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092622:26:09" "[oss-security] s/party/hack like it's 1999" (number mark "        dholland-oss Sep 26   39/1663  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<87oagvppdo.fsf@mid.deneb.enyo.de>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>" "<20150920032631.GA2301@openwall.com>" "<20150921164346.GA11060@netbsd.org>" "<20150921165337.GA17627@kroah.com>" "<87oagvppdo.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19739 invoked by uid 550); 26 Sep 2015 22:26:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19715 invoked from network); 26 Sep 2015 22:26:22 -0000
Message-ID: <20150926222609.GB11060@netbsd.org>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
 <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
 <20150919233415.GA31305@openwall.com>
 <20150920022811.GJ17773@brightrain.aerifal.cx>
 <20150920032631.GA2301@openwall.com>
 <20150921164346.GA11060@netbsd.org>
 <20150921165337.GA17627@kroah.com>
 <87oagvppdo.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87oagvppdo.fsf@mid.deneb.enyo.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sat, 26 Sep 2015 22:26:09 +0000
From: David Holland <dholland-oss-security@netbsd.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Mon, Sep 21, 2015 at 09:02:27PM +0200, Florian Weimer wrote:
 > >> I have been arguing for years (but without success) that vt bomb
 > >> injection needs to be blocked in the tty driver. This problem
 > >> (corruption of concurrent UTF-8 streams) needs to be too, as a matter
 > >> of correctness and not even security.
 > >
 > > How exactly would a tty driver "block" anything like this?
 > 
 > Avoiding in-band signaling in the first place. :-/

Yes, that.

 > > A tty driver never looks at the data stream in the kernel, as that
 > > way lies madness...
 > 
 > Surely there is a way to prevent two writes from interleaving?  For
 > writes to files in O_APPEND mode, this already happens, doesn't it?

Theoretically each write() call is supposed to be atomic; there are
presumably some limits to that in practice, especially on ptys (like
PIPE_BUF is the limit for pipes) but this doesn't help if programs
emit partial characters, as is (in general) likely. Programs that use
stdio to write to stdout are ok because stdio line-buffers stdout when
it's a tty; but that doesn't help with stderr, or with programs that
ship text around in arbitrary-sized blocks, or programs in cbreak
mode, or if you're logged in across a network that hiccups
occasionally. (Or can be made to hiccup on purpose.)

ISTM that for safety the tty driver is going to have to know about
multibyte encodings and not let through partial characters; this is an
enormous can of worms.

(but, let's not overreact; it's always been possible to blat out
sequences beginning with [ and hope that they'll be inserted right
after someone else's ESC.)

-- 
David A. Holland
dholland@netbsd.org

